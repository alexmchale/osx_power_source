osx_power_source
================

osx_power_source is an API and command line tool to determine if an OSX machine
is on A/C or battery.

Installing
----------

gem install osx_power_source

Using
-----

Let's say you only want to run a backup tool when you're on A/C:

    on-ac my-backup-script

Or let's say we want to fire something else when you're on battery:

    on-battery twiddle-some-bits with some args

If you need to find out if you're on battery or A/C from an API:

    raise("PANIC!") if OsxPowerSource.current == :battery

Or, even better:

    OsxPowerSource.on_ac { raise "ELECTRICITY!" }
