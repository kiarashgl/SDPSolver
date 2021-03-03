import os
import shutil
import sys

from test_generator import generate_tests
import subprocess


class CLI:
    @staticmethod
    def fancy_print(*strings):
        border = '~'
        maxi = 0
        for s in strings:
            maxi = max(maxi, len(s))

        print(border * (maxi + 6))
        for s in strings:
            print(border * 2 + " " + s + " " * (maxi - len(s) + 1) + border * 2)
        print(border * (maxi + 6))

    @staticmethod
    def fancy_long_print(*strings):
        border = '~'
        for i in range(3):
            print(border * 50)
        for s in strings:
            print(s)
        for i in range(3):
            print(border * 50)

    def __init__(self):
        self.root_dir = ''
        self.user_os = sys.platform
        if self.user_os.lower()[0:3] == 'win':
            self.user_os = "Microsoft Windows"
        else:
            self.user_os = "Linux"

    def init(self):
        CLI.fancy_print('SDP CLI')
        self.find_root_dir()
        self.main()

    def find_root_dir(self):
        sv_dir = os.getcwd()
        while not os.path.exists(os.getcwd() + '/.root_indicator'):
            os.chdir('..')
        self.root_dir = os.getcwd()
        os.chdir(sv_dir)

    def main(self):
        CLI.fancy_print('Choose one of these options:',
                        'Selected Operating System: [' + self.user_os + ']',
                        'Linux is not supported yet!',
                        '[1] Build source code (Developer option)',
                        '[2] Add test',
                        '[3] View test',
                        '[4] Run tests',
                        '[5] Exit')

        query = int(input())

        if query == 1:
            self.build_code()
            self.main()
        elif query == 2:
            self.add_tests()
            self.main()
        elif query == 3:
            self.view_test()
            self.main()
        elif query == 4:
            self.run_tests()
            self.main()
        elif query == 5:
            return
        else:
            self.main()

    def build_code(self):
        CLI.fancy_print(
            'Please make sure that you have \"Cmake\" installed on your system',
            'Building options:',
            '[1] MinGW (for windows users)',
            '[2] MinGW with optimizations (for windows users)',
            '[3] Go back'
        )

        query = int(input())

        if 1 <= query <= 2:
            try:
                try:
                    shutil.rmtree(self.root_dir + '/build')
                except:
                    print('Creating build directory...')
                os.mkdir(self.root_dir + '/build')
                sv_dir = os.getcwd()
                os.chdir(self.root_dir + '/build')
                subprocess.call('cmake -G \"MinGW Makefiles\" ..', shell=True)
                make_command = 'mingw32-make'
                if query == 2:
                    make_command += ' -j 8'
                subprocess.call(make_command, shell=True)
                os.chdir(sv_dir)
                print('Build successfull\n\tExecutable created at build/SDPSolver.exe')
            except:
                print('[ERROR] build unsuccessful!')
                print('\tMake sure that \"mingw32-make\" is installed correctly on your computer')
        elif query == 3:
            return
        else:
            self.build_code()

    def back_to_main(self):
        self.press_enter_to_continue()

    def press_enter_to_continue(self):
        try:
            input("Press enter to continue...")
        except SyntaxError:
            pass

    def add_tests(self):
        CLI.fancy_print('Enter one of these options',
                        '[1] Add test manually',
                        '[2] Add test with generators',
                        '[3] Go back')
        opt = int(input())
        if opt == 1:
            self.add_manual_tests()
            self.add_tests()
            return
        elif opt == 2:
            CLI.fancy_print('Enter following information in separate lines',
                            'folder name, tests will be generated in SDPA/testSet/folder_name',
                            'prefix name of tests',
                            'description for tests')
            folder = input()
            prefix_test_name = input()
            description = input()

            try:
                generate_tests(folder=folder, prefix_test_name=prefix_test_name, description=description)
                self.back_to_main()
                return
            except:
                print("generating tests not successful")
        elif opt == 3:
            return
        else:
            self.add_tests()
        return

    def add_manual_tests(self):
        CLI.fancy_print(
            'To add tests manually, just add them in a folder in SDPA/testSet/\"your_folder_name\"/\"your_test_name.format\"',
            'Tests can be manually added in different formats:',
            '[1] Show the standard format to create \".dat-s\" files',
            '[2] Show the standard format to craete \".simple-sdp\" files',
            '[3] Go back'
        )
        query = int(input())
        if query == 1:
            manual_path = self.root_dir + '/SDPA/FORMAT.dat-s'
            with open(manual_path, 'r') as test_format:
                CLI.fancy_long_print(test_format.read())
                test_format.close()
        elif query == 2:
            # TODO: implement code for simple format
            self.add_tests()
        elif query == 3:
            return
        else:
            self.add_tests()

    def view_test(self):
        CLI.fancy_print('We can show tests in SDPA/testSet',
                        'Enter folder name',
                        'Enter full test name')
        folder = CLI.select_dirs(self.root_dir + "/SDPA/testSet", "Choose one of the test packages below:")
        test_name = CLI.select_dirs(self.root_dir + "/SDPA/testSet/" + folder, "Choose one of the tests below:")

        try:
            prev_path = os.getcwd()
            os.chdir(self.root_dir + "/build")
            execute_command = 'SDPSolver.exe tmp_input_summary.txt < ../SDPA/testSet/' + folder + '/' + test_name
            subprocess.call(execute_command, shell=True)
            path = os.getcwd() + '/tmp_input_summary.txt'
            with open(path, 'r') as test:
                CLI.fancy_long_print(test.read())
                test.close()
            os.chdir(prev_path)
        except:
            print('Problem in showing test')

        self.back_to_main()

    def run_tests(self):
        exe_loc = self.root_dir + '/SDPSolver.exe'
        CLI.fancy_print('Enter Implementation type',
                        '[1] Traditional implementation',
                        '[2] Derivative method')
        imp_type = input()
        test_folder = CLI.select_dirs(self.root_dir + "/SDPA/testSet", "Select one of the test directories below:")
        CLI.list_dirs(self.root_dir + "/SDPA/testSet" + test_folder, "Enter test name you wish to run (Regex is also supported e.g. *.dat-s");
        tests_loc = input()
        try:
            bash_command = 'tester.sh ' + exe_loc + ' ' + imp_type + ' ' + tests_loc
            subprocess.call(bash_command, shell=True)
        except:
            print('problem in running tester.sh')

        self.back_to_main()
        return

    @staticmethod
    def list_dirs(parent_dir, msg):
        choices = []
        list_of_dirs = os.listdir(parent_dir)
        choices.append(msg)
        for path in list_of_dirs:
            choices.append(path)
        CLI.fancy_print(*choices)

    @staticmethod
    def select_dirs(parent_dir, msg):
        choices = []
        cnt = 0
        list_of_dirs = os.listdir(parent_dir)
        choices.append(msg)
        for path in list_of_dirs:
            choices.append('[' + str(cnt + 1) + '] ' + path)
            cnt += 1
        CLI.fancy_print(*choices)
        try:
            query = int(input())
        except:
            print("Choose a number!")
            return CLI.select_dirs(parent_dir, msg)

        if 1 <= query <= len(list_of_dirs):
            return list_of_dirs[query - 1]
        else:
            print("Input index not correct!")
            return CLI.select_dirs(parent_dir, msg)

if __name__ == '__main__':
    cli = CLI()
    cli.init()