# take a screenshot of an area on the screen using Slop and Scrot
scrot ~/photos/my\ screenshots/%Y-%m-%d_%H%M%S.png -a $(slop -f '%x,%y,%w,%h')
