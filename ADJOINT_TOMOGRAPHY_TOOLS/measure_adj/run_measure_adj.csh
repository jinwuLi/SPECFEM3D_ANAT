\rm -rf PLOTS/SYN
cp -r SYN PLOTS/SYN
\rm -rf PLOTS/DATA
cp -r DATA PLOTS/DATA
\rm PLOTS/*pdf PLOTS/*jpg PLOTS/*ps
cp ./MEASUREMENT.WINDOWS PLOTS
\rm -rf PLOTS/ADJOINT_SOURCES
 mkdir PLOTS/ADJOINT_SOURCES
cp OUTPUT_FILES/*adj PLOTS/ADJOINT_SOURCES
mkdir -p PLOTS/RECON
cp OUTPUT_FILES/*recon.* PLOTS/RECON
cp window_chi PLOTS
\rm -rf ADJOINT_SOURCES
 mkdir ADJOINT_SOURCES
perl prepare_adj_src.pl -m CMTSOLUTION_9818433 -s PLOTS/STATIONS_TOMO -o ADJOINT_SOURCES -i OUTPUT_FILES/*adj
cp STATIONS_ADJOINT ADJOINT_SOURCES
\mv STATIONS_ADJOINT PLOTS
cd PLOTS
./plot_win_adj_all.pl -l -10/200 -m ../CMTSOLUTION_9818433 -n BH -b 0 -k 7/1 -a STATIONS_ADJOINT -d DATA -s SYN -c RECON -w MEASUREMENT.WINDOWS -i m16 -j 6/30
cd ..
