## olc

quick and dirty CLI tool to convert between [Open Location
Codes](https://en.wikipedia.org/wiki/Open_Location_Code) and traditional latitude
/ longitude coordinates.

probably 95% of this was wholesale copy / pasted from [Google's Python
implementation](https://github.com/google/open-location-code/blob/main/python/openlocationcode/openlocationcode.py).
i basically just added a "main" function to their library.

no third-party dependencies required outside of the Python stdlib, and it should be
compatible with a wide range of Python versions, including very old ones.

### example usage

```bash
./olc --help
# usage: olc [-h] [--version] [input ...]
# 
# convert OLC codes to and from lat / lon
# 
# positional arguments:
#   input       either lat / lon coordinate or OLC code
# 
# options:
#   -h, --help  show this help message and exit
#   --version   display version number

# convert to lat / lon
./olc 849VCWC8+R9

# convert to OLC
./olc 37.4220625 -122.0840625
./olc "37.4220625, -122.0840625"
```
