    --------------------------------------------------------------------------
    ----------------        Basic Variable       -----------------------------
    ----------------         Do not edit                 ---------------------
    --------------------------------------------------------------------------
    local current_weapon = "none"
     
    --------------------------------------------------------------------------
    ----------------        Basic Setting       ------------------------------
    --------------------------------------------------------------------------
     
    ---- key bind ----
     
    local ump9_key = 7
    local akm_key = 8
    local m16a4_key = 9
    local m416_key = 4
    local scarl_key = 5 
    local qbz_key = nil
    local uzi_key = nil
    local set_off_key = 6
     
    ---- keyboard ---- Only Support logitech G Keyboard
    local fire_key = "F8"
     
    local ump9_gkey = nil  ---1 is use F1.
    local akm_gkey = nil
    local m16a4_gkey = nil
    local m416_gkey = nil
    local set_off_key = 6
    local scarl_gkey = nil
    local uzi_gkey = nil
    local set_off_gkey = nil
     
    ---- fire key ----
    local ump9_key = 7
     
     
    ---- can use "lalt", "ralt", "alt"  "lshift", "rshift", "shift"  "lctrl", "rctrl", "ctrl"
     
    local ignore_key = "lalt" --- ignore key
    local hold_breath_key = "lshift"
     
    ---- only can use "numlock", "capslock", "scrolllock"
     
    local full_mode_key = "numlock"   ---numlock lamp on,recoil is full_mode.
    local mode_switch_key = "capslock" 
    local lighton_key = "scrolllock"  ---start script,scrolllock lamp will be on.close script ,scrolllock lamp will be off.
     
    --- fastloot setting---
    --- Press fast_loot_key and click Left mouse button ---
     
    local fastloot = false ---if you don't need it, you can close it by true to false.
    local fast_loot_key = "lctrl" 
    local move = 40 ----1920*1080
     
    --- Your Sensitivity in Game 
     
    local vertical_sensitivity = 1.0 --- default is 0.7
    local target_sensitivity = 50 --- default is 50.0
    local scope_sensitivity = 50 --- default is 50.0
    local scope4x_sensitivity = 50 --- default is 50.0
     
    ---- function ----
    -- if auto_mode = true ,the guns need to switch automatic shooting mode,except m16 single.
     
    local auto_mode = true
     
    -- you can close these by true to false
     
    local hold_breath_mode = true
    local full_mode = true
     
    ---- Obfs setting
    ---- Two firing time intervals = weapon_speed * interval_ratio * ( 1 + random_seed * ( 0 ~ 1))
    local weapon_speed_mode = false
    -- local obfs_mode = false
    local obfs_mode = false
    local interval_ratio = 0.75
    local random_seed = 1
     
    --------------------------------------------------------------------------
    ----------------        Recoil Table        ------------------------------
    ---------------- You can fix the value here ------------------------------
    --------------------------------------------------------------------------
    --- recoil times
    --- if the Recoil compensation is Large or small，You can modify the value of all_recoil_Times or recoil_table{times}
    local all_recoil_times = 1
     
    local recoil_table = {}
     
    recoil_table["ump9"] = {
        basic={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
        basictimes = 1.05,
    	
        full={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
        fulltimes = 0.75*0.9,
    	
        holdbreathtimes = 1.25,
    	
        quadruple={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
        quadrupletimes = 4*1*0.97,
    	
        fullof4x={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
        fullof4xtimes = 4*0.75,
    	
        speed = 90,
     
        maxbullets = 40,
    }
     
    recoil_table["akm"] = {
        basic={60.5,40.5,47.5,51.0,55.5, 64.0,67.5,69.5,70.5,71.0, 72.5,75.6,76.3,77.0,78.9,
        80.6,70.5,},
        basictimes = 1.01,
    	
        full={60.5,40.5,47.5,51.0,54.5, 64.0,67.5,69.0,70.5,71.0, 71.5,75.6,76.3,77.0,78.9,
        80.6,70.5,},
    	
        holdbreathtimes = 1.25,
    	
        quadruple={60.5,40.5,47.5,51.0,54.5, 64.0,67.5,69.0,70.5,71.0, 71.5,75.6,76.3,77.0,78.9,
        80.6,70.5,},
        quadrupletimes = 4*1.01,
    	
        fullof4x={60.5,40.5,47.5,51.0,54.5, 64.0,67.5,69.0,70.5,71.0, 71.5,75.6,76.3,77.0,78.9,
        80.6,70.5,},
        fullof4xtimes = 4*1*0.75,
    	
        speed = 100,
     
        maxbullets = 40,
    }
     
     
    recoil_table["m16a4"] = {
        basic={41.9,36.5,37.1,50.5,55.9, 62.9,66.9,69.5,69.5,70.0, 71.2,},
        basictimes = 1.05,
    		
        full={41.9,36.5,37.1,50.5,55.9, 62.9,66.9,69.5,69.5,70.0, 71.2,},
        fulltimes = 1*0.77,
    	
        holdbreathtimes = 1.25,
    	
        quadruple={41.9,36.5,37.1,50.5,55.9, 62.9,66.9,69.5,69.5,70.0, 71.2,},
        quadrupletimes = 1*4,
    	
        fullof4x={41.9,36.5,37.1,50.5,55.9, 62.9,66.9,69.5,69.5,70.0, 71.2,},
        fullof4xtimes = 4*1*0.75,
     
        speed = 75,
     
        maxbullets = 40,
    }
     
    recoil_table["m416"] = {
        basic={49.5,36.0,41.9,44.3,49.4, 51.1,53.4,53.9,54.1,55.6, 56.5,58.5,62.3,60.4,60.8,
        60.3,},	
        basictimes = 1.08,
    	
        full={50.2,39.0,41.3,43.4,48.0, 50.0,52.2,52.5,53.5,50.5, 51.5,53.8,59.6,59.8,60.8,
        60.3,},
        fulltimes = 1.08*0.75,	
    	
        holdbreathtimes = 1.25,
    	
        quadruple={50.2,39.0,41.3,43.4,48.0, 50.0,52.2,52.5,53.5,50.5, 51.5,53.8,59.6,59.8,60.8,
        60.3,},
        quadrupletimes = 4*1*0.8,
    	
        fullof4x={50.2,39.0,41.3,43.4,48.0, 50.0,52.2,52.5,53.5,50.5, 51.5,53.8,59.6,59.8,60.8,
        60.3,},
        fullof4xtimes = 4*1.08*0.75,
    	
        speed = 90,
     
        maxbullets = 40,
    }
     
    recoil_table["scarl"] = {
        basic={59.0,28.5,33.5,42.0,45.9, 47.9,50.0,54.2,56.8,57.4, 57.9,57.5,57.7,58.8,59.4},
        basictimes = 1,
     
        full={59.0,28.5,33.5,42.0,45.9, 47.9,50.0,54.2,56.8,57.4, 57.9,57.5,57.7,58.8,59.4},
        fulltimes = 1*0.75,
    	
        holdbreathtimes = 1.25,
    	
        quadruple={59.0,28.5,33.5,42.0,45.9, 47.9,50.0,54.2,56.8,57.4, 57.9,57.5,57.7,58.8,59.4},
        quadrupletimes = 4*1,
    	
        fullof4x={59.0,28.5,33.5,42.0,45.9, 47.9,50.0,54.2,56.8,57.4, 57.9,57.5,57.7,58.8,59.4},
        fullof4xtimes = 4*1*0.75,
    	
        speed = 100,
     
        maxbullets = 40,
    }
     
    recoil_table["uzi"] = {
        basic={16.0,16.0,16.0,17.6,18.6, 20.4,22.4,22.9,25.8,27.6, 32.6,36.9,38.0,38.8,39.8,40.5},
        basictimes = 1.15,
    	
        full={16.0,16.0,16.0,17.6,18.6, 20.4,22.4,22.9,25.8,27.6, 32.6,36.9,38.0,38.8,39.8,40.5},
        fulltimes = 1.15*0.75*0.75,
    	
        holdbreathtimes = 1.25,
    	
        quadruple={16.0,16.0,16.0,17.6,18.6, 20.4,22.4,22.9,25.8,27.6, 32.6,36.9,38.0,38.8,39.8,40.5},
        quadrupletimes = 1.15,
    	
        fullof4x={16.0,16.0,16.0,17.6,18.6, 20.4,22.4,22.9,25.8,27.6, 32.6,36.9,38.0,38.8,39.8,40.5},
        fullof4xtimes = 1.15*0.75*0.75,
     
        speed = 48,
     
        maxbullets = 35,
    }
     
    recoil_table["qbz"] = {
        basic={52.0,25.0,28.7,38.2,42.4, 44.0,46.0,46.0,45.6,45.1, 48.0,51.3,52.0,54.0,56.0, 59},
        basictimes = 1.06,
    	
        full={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
        fulltimes = 1.06*0.75,
    	
        holdbreathtimes = 1.25,
    	
        quadruple={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
        quadrupletimes = 4*1.06,
    	
        fullof4x={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
        fullof4xtimes = 4*1.06*0.75,
    	
        speed = 90,
     
        maxbullets = 40,
    }
     
     
    --------------------------------------------------------------------------
    ----------------          Function          ------------------------------
    --------------------------------------------------------------------------
     
     
    function convert_sens(unconvertedSens) 
        return 0.002 * math.pow(10, unconvertedSens / 50)
    end
     
    function calc_sens_scale(sensitivity)
        return convert_sens(sensitivity)/convert_sens(50)
    end
     
    local target_scale = calc_sens_scale(target_sensitivity)
    local scope_scale = calc_sens_scale(scope_sensitivity)
    local scope4x_scale = calc_sens_scale(scope4x_sensitivity)
     
    function recoil_mode()
        if not IsKeyLockOn(mode_switch_key) then
            if IsKeyLockOn(full_mode_key) and full_mode then
    	       return "full";
    		   else
    		   return "basic";
            end
        end	
    	
        if IsKeyLockOn(mode_switch_key) then
            if IsKeyLockOn(full_mode_key) and full_mode then
    		   return "fullof4x"
    		   else
    		   return "quadruple"
            end 
        end		
    end
    		   
    function recoil_value(_weapon,_duration)
        local _mode = recoil_mode()
        if weapon_speed_mode then
            weapon_speed = recoil_table[_weapon]["speed"]
        end
        -- OutputLogMessage("weapon_speed = %s\n", weapon_speed)
     
        local weapon_basictimes = recoil_table[_weapon]["basictimes"]
        local weapon_fulltimes = recoil_table[_weapon]["fulltimes"]
        local weapon_quadrupletimes = recoil_table[_weapon]["quadrupletimes"]
        local step = (math.floor(_duration/100)) + 1
        if step > #recoil_table[_weapon][_mode] then
            step = #recoil_table[_weapon][_mode]
        end
    	
        local weapon_recoil = recoil_table[_weapon][_mode][step]
        -- OutputLogMessage("weapon_recoil = %s\n", weapon_recoil)
        
        local weapon_speed = 30
        local weapon_fullof4xtimes = recoil_table[_weapon]["fullof4xtimes"]
        local weapon_holdbreathtimes = recoil_table[_weapon]["holdbreathtimes"]
        local weapon_intervals = weapon_speed    
    	
        if obfs_mode then
            local coefficient = interval_ratio * ( 1 + random_seed * math.random())
            weapon_intervals = math.floor(coefficient  * weapon_speed) 
        end
        -- OutputLogMessage("weapon_intervals = %s\n", weapon_intervals)
     
        recoil_recovery = weapon_recoil * weapon_intervals / 100 
        recoil_times = all_recoil_times * 0.7 / vertical_sensitivity 
     
        if recoil_mode() == "basic" and not IsModifierPressed(hold_breath_key) then
        recoil_recovery = recoil_recovery * recoil_times * weapon_basictimes
        end
        if recoil_mode() == "basic" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
        recoil_recovery = recoil_recovery * weapon_holdbreathtimes * recoil_times * weapon_basictimes
        end
     
        if recoil_mode() == "full" and not IsModifierPressed(hold_breath_key) then
        recoil_recovery = recoil_recovery * recoil_times * weapon_fulltimes
        end
        if recoil_mode() == "full" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
        recoil_recovery = recoil_recovery * weapon_holdbreathtimes * recoil_times * weapon_fulltimes
        end
     
        if recoil_mode() == "quadruple" then
        recoil_recovery = recoil_recovery * recoil_times * weapon_quadrupletimes
        end
    	
        if recoil_mode() == "fullof4x" then
        recoil_recovery = recoil_recovery * recoil_times * weapon_fullof4xtimes
        end
        
        -- issues/3
        if IsMouseButtonPressed(2) then
            recoil_recovery = recoil_recovery / target_scale
        elseif recoil_mode() == "basic" then
            recoil_recovery = recoil_recovery / scope_scale
        elseif recoil_mode() == "full" then
            recoil_recovery = recoil_recovery / scope_scale
        elseif recoil_mode() == "quadruple" then
            recoil_recovery = recoil_recovery / scope4x_scale
        elseif recoil_mode() == "fullof4x" then
            recoil_recovery = recoil_recovery / scope4x_scale
        end
     
        return weapon_intervals,recoil_recovery
    end
     
     
    --------------------------------------------------------------------------
    ----------------          OnEvent          ------------------------------
    --------------------------------------------------------------------------
     
     
    function OnEvent(event, arg)
        OutputLogMessage("event = %s, arg = %d\n", event, arg)
        if (event == "PROFILE_ACTIVATED") then
            EnablePrimaryMouseButtonEvents(true)
        elseif event == "PROFILE_DEACTIVATED" then
            current_weapon = "none"
            shoot_duration = 0.0
            ReleaseKey(fire_key)
            ReleaseMouseButton(1)
        end
     
        if (event == "MOUSE_BUTTON_PRESSED" and arg == set_off_key) 
        or (event == "G_PRESSED" and arg == set_off_gkey) then
            current_weapon = "none"
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key)
        or (event == "G_PRESSED" and arg == akm_gkey) then
            current_weapon = "akm"
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m16a4_key)
        or (event == "G_PRESSED" and arg == m16a4_gkey) then
            current_weapon = "m16a4"
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key)
        or (event == "G_PRESSED" and arg == m416_gkey) then
            current_weapon = "m416"
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key)
        or (event == "G_PRESSED" and arg == ump9_gkey) then
            current_weapon = "ump9"
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == uzi_key)
        or (event == "G_PRESSED" and arg == uzi_gkey) then
            current_weapon = "uzi"
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key)
        or (event == "G_PRESSED" and arg == scarl_gkey) then
            current_weapon = "scarl"
        elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and not IsModifierPressed(fast_loot_key)) then
            -- button 1 : Shoot
            if ((current_weapon == "none") or IsModifierPressed(ignore_key)) then
                PressKey(fire_key)
                repeat
                    Sleep(30)
                until not IsMouseButtonPressed(1)
                ReleaseKey(fire_key)
            elseif((current_weapon == "m16a4") and not IsModifierPressed(ignore_key)) then
                local shoot_duration = 0.0
                repeat
                    local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                    PressAndReleaseKey(fire_key)
                    MoveMouseRelative(0, recovery )
                    Sleep(intervals)
                    shoot_duration = shoot_duration + intervals
                until not IsMouseButtonPressed(1)
            else
                if auto_mode then
                    PressKey(fire_key)
                    local shoot_duration = 0.0
                    repeat
                    local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                    MoveMouseRelative(0, recovery )
                    Sleep(intervals)
                    shoot_duration = shoot_duration + intervals
                    until not IsMouseButtonPressed(1)
                else
                    local shoot_duration = 0.0
                    repeat
                    local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                    PressAndReleaseKey(fire_key)
                    MoveMouseRelative(0, recovery )
                    Sleep(intervals)
                    shoot_duration = shoot_duration + intervals
                    until not IsMouseButtonPressed(1)
                end
            end
        elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
            ReleaseKey(fire_key)
        end
        while (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsModifierPressed(fast_loot_key) and fastloot) do
            ReleaseMouseButton(1)
            PressMouseButton(1)
            for i = 0, 14 do
            MoveMouseRelative(move, 0)
            Sleep(2)
            end
            ReleaseMouseButton(1)
            for i = 0, 14 do
            MoveMouseRelative(-move, 0)
            Sleep(2)
            end
            Sleep(10) 
        end
        if (current_weapon == "none") then
            if IsKeyLockOn(lighton_key) then
            PressAndReleaseKey(lighton_key)
            end 
        else
            if not IsKeyLockOn(lighton_key) then
            PressAndReleaseKey(lighton_key)
            end
        end
    end
