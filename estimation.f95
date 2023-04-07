program estimation
    ! Nicholas Maynard
    ! CSI 501
    ! Lab 10
    ! 03/06/2023
    ! This program computes the central difference derivative for a function.
  
    ! Clear out the memory
    implicit none
  
    ! Declare our Variables
    integer :: seed, i
    integer*8 :: n
    integer*8 :: Count = 0
    real*8 :: x, y
    real*8 :: estimate = 0.0
  
    ! Ask the user for our input variables
    print*,'Enter a seed:'
    read*, seed
    print*,'Enter a number n:'
    read*, n

    ! Set up our random number generator
    call srand(seed)
  
    ! Run Simulation
    do i = 0, n
        x = 1.0d0 * rand()
        y = 1.0d0 * rand()
        if (x**2+y**2 .le. 1.d0) Count = Count + 1
    enddo

    ! Estimate pi
    estimate = 4.0d0 * float(Count) / float(n)
    
    print*, 'Our estimate for pi is: ', estimate
  
  
  
  end program estimation