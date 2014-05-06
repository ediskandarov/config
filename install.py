#!/usr/bin/env python3

import os
import sys
from pathlib import Path

def main(argv):
    src = Path(argv[0]).parent.resolve() / 'config'
    dst = Path(os.environ['HOME']).resolve()
    print(src)
    print(dst)
    doit = True
    pairs = []
    for fullsrc in src.iterdir():
        name = fullsrc.relative_to(src)
        fulldst = dst / name
        if fulldst.exists():
            print(fulldst, 'already exists')
            doit = False
        else:
            pairs.append((fullsrc, fulldst))
    if doit:
        for fullsrc, fulldst in pairs:
            print("link", fulldst, "->", fullsrc)
            fulldst.symlink_to(fullsrc)


if __name__ == '__main__':
    main(sys.argv)
