import re

_blanks_re = re.compile(r"\s+")


class Document:
    def __init__(self, path):
        self.path = path
        self.parsed = False
        self.sections = []
        self.parse_file()

    def parse(self, lines):
        head_sec = Section(
            parent=None,
            level=1,
            title=None,
            line=0,
        )
        self.sections = [head_sec]
        # current position in document tree
        secs = [head_sec]

        for n, line in enumerate(lines, start=1):
            line = line.rstrip()
            lline = line.lstrip()
            if lline.startswith("//"):
                # comment line, skip
                continue
            print(("%d:" % n), line)

    def parse_file(self):
        with open(self.path, "rt") as f:
            pass


class Section:
    def __init__(self, parent, level, title, line):
        self.parent = parent
        self.level = level
        self.title = title
        self.line = line
        self.sections = []

path = "../lib_01/wachstube.dm"
with open(path, "rt") as f:
    d = Document(path)
    d.parse(f)
