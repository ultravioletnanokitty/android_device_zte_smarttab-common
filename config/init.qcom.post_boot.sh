#!/system/bin/sh

echo 1 > /sys/module/rpm_resources/enable_low_power/L2_cache
echo 1 > /sys/module/rpm_resources/enable_low_power/pxo
echo 2 > /sys/module/rpm_resources/enable_low_power/vdd_dig
echo 2 > /sys/module/rpm_resources/enable_low_power/vdd_mem
echo 1 > /sys/module/rpm_resources/enable_low_power/rpm_cpu
# cpu0
echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo "SavagedZen" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
# cpu1
chown root.system /sys/devices/system/cpu/cpu1/online
chmod 664 /sys/devices/system/cpu/cpu1/online
echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/suspend_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/idle_enabled
echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
echo "SavagedZen" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
# mfreq
chown root.system /sys/devices/system/cpu/mfreq
chmod 220 /sys/devices/system/cpu/mfreq
