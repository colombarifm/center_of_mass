!---------------------------------------------------------------------------------------------------
! center_of_mass: A code to calculate the center of mass of molecular structures                                            
!---------------------------------------------------------------------------------------------------
!
!   Free software, licensed under GNU GPL v3
!
!   Copyright (c) 2017 - 2024 Felippe M. Colombari
!
!---------------------------------------------------------------------------------------------------
!
!   This program is free software: you can redistribute it and/or modify it under the terms of the 
!   GNU General Public License as published by the Free Software Foundation, either version 3 of 
!   the License, or (at your option) any later version.
!
!   This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
!   without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See 
!   the GNU General Public License for more details.
!
!   You should have received a copy of the GNU General Public License along with this program. If 
!   not, see <https://www.gnu.org/licenses/>.
!
!---------------------------------------------------------------------------------------------------
!> @file   mod_deallocate_all.f90
!> @author Felippe M. Colombari
!> @brief  Deallocates all arrays prior to program termination
!> @date - Dec, 2017                                                           
!> - independent module created                                                
!> @date - Fev, 2020                                                           
!> - update variable names                                                
!> @note
!> - to check for memory leaks and/or final status of allocatable arrays please use: \n 
!>   valgrind --leak-check=full --show-leak-kinds=all -v ./themis [ options ]
!> @note
!> - to check memory usage along execution, please use: \n
!>   valgrind --tool=massif ./themis [options]
!---------------------------------------------------------------------------------------------------

module mod_deallocate_all

  implicit none

  private
  public Deallocate_arrays

contains

  subroutine Deallocate_arrays
    use MOD_READ_MOLECULE , only : mol
    use MOD_CALC_COM      , only : mol_mass

    deallocate( mol % atoms )
    deallocate( mol_mass % mass_atoms )

    return
  end subroutine Deallocate_arrays

end module mod_deallocate_all
