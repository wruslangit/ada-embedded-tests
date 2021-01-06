-- File: ada_bismillah.ads
-- Date: Tue 05 Jan 2021 11:34:09 AM +08
-- Chapter-03-01 

-- That is, there will be a single procedure in the program, but it will 
-- be visible under two different names depending on the point of view: 
-- in Ada the procedure will be visible as Run_bismillah and external tools 
-- will see the same procedure as run_bismillah.

package ada_bismillah is

    procedure Run_bismillah;

    -- Internal name = Run_bismillah
    -- External name = run_bismillah
    pragma Export (C, Run_bismillah, "run_bismillah");
    
end ada_bismillah;


