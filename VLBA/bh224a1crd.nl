!*  Schedule for VLBA_NL   *!
!*  Experiment BH224A1  *!
!* Schedule Version:       1.00 *!
!* Processed by SCHED version:  11.40  Release 11.4.  March 14, 2015 *!
!* PI:       Anna Ho *!
!* Address:  Cahill Center for Astrophysics *!
!*           California Institute of Technology, MC 249-17 *!
!*           1200 E California Boulevard *!
!*           Pasadena, CA, 91125, USA *!
!* Phone:    650 338 9762 *!
!* EMAIL:    ah@astro.caltech.edu *!
!* Fax: *!
!* Phone during observation: 650 338 9762 *!
!* Observing mode: 6cm 128-4-2 *!
!* Notes: *!
!*  *!
!*  *!
!*  *!
!*  Start at 01h22m01s     Wed, 2018 Jun 27  Day of year  178   *!
program=BH224A1 

diskformat=mark5c
media=(1,disk)

!* The first scan is preceeded by a setup scan *!
!* that ends at the start time of the first scan  *!

!* --- Scan from 01h22m01s to 01h23m01s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=999  calib='V'
maxcaltime= 120
fe=(1,6cm),(2,6cm),(3,6cm),(4,6cm)
fexfer=(2,norm)
noise=(1,low-s),(2,low-s),(3,low-s),(4,low-s)
synth=( 1,-8.1),( 2, 3.6),( 3,10.9)
logging=STANDARD
nchan= 4
format=VLBA1:4
ifdistr=(1,0),(2,0),(3,0),(4,0)
baseband=(1,1),(2,2),(3,3),(4,4)
ifchan=(1,A),(2,C),(3,B),(4,D)
sideband=(1,L),(2,L),(3,U),(4,U)
bits=(1,2),(2,2),(3,2),(4,2)
period=(1,1),(2,1),(3,1),(4,1)
level=(1,-1),(2,-1),(3,-1),(4,-1)
azcolim=   0.00  elcolim=   0.00
bbsynth=( 1,784.25),( 2,784.25),( 3,696.25),( 4,696.25)
bbfilter=(1,16M),(2,16M),(3,16M),(4,16M)
pcal=1MHZ
pcalxbit1=(1,S1),(2,S3),(3,S1),(4,S3),(5,S1),(6,S2),(7,S3),(8,S4)
pcalxbit2=(1,S2),(2,S4),(3,S2),(4,S4),(5,M1),(6,M2),(7,M3),(8,M4)
pcalxfreq1=(1,250),(2,750),(3,13250),(4,13750),(5,0),(6,0),(7,0),(8,0)
pcalxfreq2=(1,250),(2,750),(3,13250),(4,13750),(5,0),(6,0),(7,0),(8,0)
samplerate=32M
disk=off
  date = 2018Jun27
stop=01h22m01s   !NEXT!        
qual=  0
disk=off
stop=01h23m01s   !NEXT!

!* --- Scan from 01h23m01s to 01h26m30s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=01h26m30s   !NEXT!

!* --- Scan from 01h26m30s to 01h27m30s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=01h27m30s   !NEXT!

!* --- Scan from 01h27m30s to 01h31m00s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=01h31m00s   !NEXT!

!* --- Scan from 01h31m00s to 01h31m59s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=01h31m59s   !NEXT!

!* --- Scan from 01h31m59s to 01h35m29s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=01h35m29s   !NEXT!

!* --- Scan from 01h35m29s to 01h36m29s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=01h36m29s   !NEXT!

!* --- Scan from 01h36m29s to 01h39m58s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=01h39m58s   !NEXT!

!* --- Scan from 01h39m58s to 01h40m58s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=01h40m58s   !NEXT!

!* --- Scan from 01h40m58s to 01h44m27s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=01h44m27s   !NEXT!

!* --- Scan from 01h44m27s to 01h45m27s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=01h45m27s   !NEXT!

!* --- Scan from 01h45m27s to 01h48m57s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=01h48m57s   !NEXT!

!* --- Scan from 01h48m57s to 01h49m56s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=01h49m56s   !NEXT!

!* --- Scan from 01h49m56s to 01h53m26s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=01h53m26s   !NEXT!

!* --- Scan from 01h53m26s to 01h54m26s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=01h54m26s   !NEXT!

!* --- Scan from 01h54m26s to 01h57m55s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=01h57m55s   !NEXT!

!* --- Scan from 01h57m55s to 01h58m55s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=01h58m55s   !NEXT!

!* --- Scan from 01h58m55s to 02h02m24s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h02m24s   !NEXT!

!* --- Scan from 02h02m24s to 02h03m24s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h03m24s   !NEXT!

!* --- Scan from 02h03m24s to 02h06m54s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h06m54s   !NEXT!

!* --- Scan from 02h06m54s to 02h07m53s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h07m53s   !NEXT!

!* --- Scan from 02h07m53s to 02h11m23s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h11m23s   !NEXT!

!* --- Scan from 02h11m23s to 02h12m23s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h12m23s   !NEXT!

!* --- Scan from 02h12m23s to 02h15m52s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h15m52s   !NEXT!

!* --- Scan from 02h15m52s to 02h16m52s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h16m52s   !NEXT!

!* --- Scan from 02h16m52s to 02h20m21s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h20m21s   !NEXT!

!* --- Scan from 02h20m21s to 02h21m21s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h21m21s   !NEXT!

!* --- Scan from 02h21m21s to 02h24m51s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h24m51s   !NEXT!

!* --- Scan from 02h24m51s to 02h25m51s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h25m51s   !NEXT!

!* --- Scan from 02h25m51s to 02h29m20s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h29m20s   !NEXT!

!* --- Scan from 02h29m20s to 02h30m20s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h30m20s   !NEXT!

!* --- Scan from 02h30m20s to 02h33m49s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h33m49s   !NEXT!

!* --- Scan from 02h33m49s to 02h34m49s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h34m49s   !NEXT!

!* --- Scan from 02h34m49s to 02h38m18s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h38m18s   !NEXT!

!* --- Scan from 02h38m18s to 02h39m18s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h39m18s   !NEXT!

!* --- Scan from 02h40m09s to 02h43m09s   Wed, 2018 Jun 27 --- *!
sname='J1642+3948'  ra=16h42m58.809965s  dec= 39d48'36.99402"  qual=999  calib='V'
disk=off
stop=02h40m09s   !NEXT!        
qual=  0
disk=off
stop=02h43m09s   !NEXT!

!* --- Scan from 02h43m09s to 02h44m09s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h44m09s   !NEXT!

!* --- Scan from 02h44m09s to 02h47m38s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h47m38s   !NEXT!

!* --- Scan from 02h47m38s to 02h48m38s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h48m38s   !NEXT!

!* --- Scan from 02h48m38s to 02h52m07s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h52m07s   !NEXT!

!* --- Scan from 02h52m07s to 02h53m07s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h53m07s   !NEXT!

!* --- Scan from 02h53m07s to 02h56m37s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=02h56m37s   !NEXT!

!* --- Scan from 02h56m37s to 02h57m37s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=02h57m37s   !NEXT!

!* --- Scan from 02h57m37s to 03h01m06s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h01m06s   !NEXT!

!* --- Scan from 03h01m06s to 03h02m06s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h02m06s   !NEXT!

!* --- Scan from 03h02m06s to 03h05m35s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h05m35s   !NEXT!

!* --- Scan from 03h05m35s to 03h06m35s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h06m35s   !NEXT!

!* --- Scan from 03h06m35s to 03h10m04s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h10m04s   !NEXT!

!* --- Scan from 03h10m04s to 03h11m04s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h11m04s   !NEXT!

!* --- Scan from 03h11m04s to 03h14m34s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h14m34s   !NEXT!

!* --- Scan from 03h14m34s to 03h15m34s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h15m34s   !NEXT!

!* --- Scan from 03h15m34s to 03h19m03s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h19m03s   !NEXT!

!* --- Scan from 03h19m03s to 03h20m03s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h20m03s   !NEXT!

!* --- Scan from 03h20m03s to 03h23m32s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h23m32s   !NEXT!

!* --- Scan from 03h23m32s to 03h24m32s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h24m32s   !NEXT!

!* --- Scan from 03h24m32s to 03h28m02s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h28m02s   !NEXT!

!* --- Scan from 03h28m02s to 03h29m01s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h29m01s   !NEXT!

!* --- Scan from 03h29m01s to 03h32m31s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h32m31s   !NEXT!

!* --- Scan from 03h32m31s to 03h33m31s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h33m31s   !NEXT!

!* --- Scan from 03h33m31s to 03h37m00s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h37m00s   !NEXT!

!* --- Scan from 03h37m00s to 03h38m00s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h38m00s   !NEXT!

!* --- Scan from 03h38m00s to 03h41m29s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h41m29s   !NEXT!

!* --- Scan from 03h41m29s to 03h42m29s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h42m29s   !NEXT!

!* --- Scan from 03h42m29s to 03h45m59s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h45m59s   !NEXT!

!* --- Scan from 03h45m59s to 03h46m58s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h46m58s   !NEXT!

!* --- Scan from 03h46m58s to 03h50m28s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h50m28s   !NEXT!

!* --- Scan from 03h50m28s to 03h51m28s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h51m28s   !NEXT!

!* --- Scan from 03h51m28s to 03h54m57s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h54m57s   !NEXT!

!* --- Scan from 03h54m57s to 03h55m57s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=03h55m57s   !NEXT!

!* --- Scan from 03h55m57s to 03h59m26s   Wed, 2018 Jun 27 --- *!
sname='AT2018COW'  ra=16h16m00.220000s  dec= 22d16'04.80000"  qual=  0  calib=' '
disk=off
stop=03h59m26s   !NEXT!

!* --- Scan from 03h59m26s to 04h00m26s   Wed, 2018 Jun 27 --- *!
sname='J1619+2247'  ra=16h19m14.824596s  dec= 22d47'47.85098"  qual=  0  calib='V'
disk=off
stop=04h00m26s   !NEXT!
disk=off
stop=04h00m31s   !NEXT!
     !QUIT! 
