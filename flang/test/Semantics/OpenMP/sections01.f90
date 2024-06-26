! UNSUPPORTED: system-windows
! Marking as unsupported due to suspected long runtime on Windows
! RUN: %python %S/../test_errors.py %s %flang -fopenmp

! OpenMP Version 4.5
! 2.7.2 sections Construct
! Only a single nowait clause can appear on a sections directive.

program omp_sections

  !$omp sections
    !$omp section
    print *, "omp section"
  !ERROR: At most one NOWAIT clause can appear on the END SECTIONS directive
  !$omp end sections nowait nowait

end program omp_sections
