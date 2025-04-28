from ranger.api.commands import Command
import subprocess

class fzf_jump(Command):
    def execute(self):
        fzf = self.fm.execute_command(
            "fzf +m", universal_newlines=True, stdout=subprocess.PIPE)
        stdout, _ = fzf.communicate()
        if fzf.returncode == 0:
            f = stdout.strip()
            import os
            if os.path.isdir(f):
                self.fm.cd(f)
            else:
                self.fm.select_file(f)

class fzf_cd(Command):
    def execute(self):
        fzf = self.fm.execute_command(
            "fdfind --type d | fzf +m", universal_newlines=True, stdout=subprocess.PIPE)
        stdout, _ = fzf.communicate()
        if fzf.returncode == 0:
            import os
            d = stdout.strip()
            if os.path.isdir(d):
                self.fm.cd(d)

