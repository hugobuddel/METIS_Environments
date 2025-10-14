# METIS Environments

The METIS Environments repository contains different Podman environments for running the METIS software end-to-end:

- Create simulated data,
- Process the data,
- Archive it.

Three different environments are distinguished:

- **Stable**:
  - Should work at all times.
  - Resembles the production system, or forms the bases for the next version of production.
  - Can be used for demonstration purposes at any time.
  - Has all versions of the METIS software and its dependencies pinned.
  - Pins should be updated whenever possible.
- **Head**:
  - Uses the main branches of all METIS software, and the latest release versions of its dependencies.
  - Should work, but can be broken occasionally.
  - Should be ran regularly to check for problems.
  - Fixing problems should be a high priority.
- **Develop**
  - Uses local git clones of the METIS software.
  - Can be used for development, to test code before committing.

The software that is included in these environments:

- Core dependencies
  - Operating system
  - Python
  - numpy
  - postgresql
- ESO dependencies
  - cpl 
  - pycpl
  - esorex
  - pyesorex
  - edps
  - adari
- A*V dependencies:
  - ScopeSim
  - irdb
  - ScopeSim_Templates
  - ScopeSim_Data
  - skycalc_ipy
- OmegaCEN dependencies:
  - commonwise
- METIS software:
  - METIS_DRLD
  - METIS_Simulations
  - METIS_Pipeline
  - MetisWISE

Podman is currently used to set up these environments, but in the future other mechanisms can be added.

