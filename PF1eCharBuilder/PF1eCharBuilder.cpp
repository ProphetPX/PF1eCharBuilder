// PF1eCharBuilder.cpp : This file contains the 'main' function. Program execution begins and ends there.
// PF1eCharBuild outline for build, C++
// Version 0.001a PRE-ALPHA, (C) 2021 ProphetPX
// Licensed under GNU Affero General Public License v3.0


// get build ready
#include<iostream>
#include<string>
using namespace std;
// using namespace string;


// vars
int status = 0;
int menuOperation = 8;
int undoMax = 10;
string charName = "Bilbo";
bool saveYN = true;
char saveYNchar = 'y';



// Main routine (menu)
int main()
{
mainMenu:
    // int status = 0;
    // system("cls");
    // print header
    cout << "PF1eCharBuild in C++, Version 0.001a\n" << "This code is PRE-ALPHA, (C) 2021 ProphetPX\n\n";
    // initialize vars
    //    choose operation: 
    cout << "Menu: (Default option is " << menuOperation << ")\n============================\n";
    //        design character
    cout << "0. Create a character\n";
    //        design monster
    cout << "1. Customize a Monster\n";
    //        design encounter
    cout << "2. Design an Encounter\n";
    //        design trap or skill challenge
    cout << "3. Design a Trap or Skill Challenge\n";
    //        open portfolio
    cout << "4. Open a Portfolio\n";
    //        export or print portfolio
    cout << "5. Export or Print a Portfolio\n";
    //        manage databases
    cout << "6. Manage Database(s)\n";
    //        update app
    cout << "7. Check online for application updates\n";
    //        exit
    cout << "8. Exit application\n";

    cout << "\nSelect from menu, 0 - 8 (default is " << menuOperation << "): ";
    cin >> menuOperation;

    if (menuOperation < 0 && menuOperation > 8) {
        cout << "\b\n\nIllegal menu selection!\n";
        system("pause");
        goto mainMenu;
        }
    else {
        goto menuSelection; 
    }
        //

menuSelection:
    switch (menuOperation)
    {
        case 0: cout << "\n\nCreate a character.\n"; goto runCharBuilder; break;
        case 1: cout << "\n\nCustomize a monster.\n"; goto runMonsterCustomizer; break;
        case 2: cout << "\n\nDesign an encounter.\n"; goto runEncounterDesigner; break;
        case 3: cout << "\n\nDesign a Trap or Skill Challenge.\n"; goto runDesignTrapSkillChallenge; break;
        case 4: cout << "\n\nOpen a Portfolio.\n"; goto runOpenPortfolio; break;
        case 5: cout << "\n\nExport or Print a Portfolio.\n"; goto runSaveExportfolio; break;
        case 6: cout << "\n\nManage Database(s).\n"; goto runManageDatabases; break;
        case 7: cout << "\n\nCheck online for application updates.\n"; goto runCheckAppUpdate; break;
        case 8: cout << "\n\nExit application.\n"; goto Exit; break;
        
        default: 
            cout << "\b\n\nIllegal menu selection!\n"; 
            //system("pause"); 
            goto mainMenu; 
            break;
    }
    


runCharBuilder:
    // int doCharBuilder()
    
    // operation: design character
    //  print header
    cout << "\nCharacter Builder:\n=================\n";

    //  initialize vars
    
    // create 2d array of undo cells per question / data entry in builder
    //
    //
    //  open databases for main modules
    //  enter character name
    cout << "Specify new character name: (Default is " << charName << "): "; 
    cin >> charName;
    //
    //Create new portfolio data struct and/or (temp) file...
    // 
    // 
    //  save new created blank portfolio?
    cout << "\nSave new character portfolio now? (Yes or No -- default is " << saveYNchar << ")? ";
    cin >> saveYNchar;
    if (saveYNchar == 'y')
    {
        saveYN = true;
        // save character data...
    }
    else {
        saveYN = false;
        // skip to next stage of builder...
        // goto ____
    }

    //
    //
    //
    //      specify levels of undo?
    cout << "Configure how many levels of Undo per entry? (Default is " << undoMax << ")? ";
    cin >> undoMax;

    //      auto save? y/timer/n
    //
    //
    // *****************************************
    //  Module: need DB list of classes to start
    //
    //  choose character starting favored class?
    //
    //
    // *****************************************
    // Module: stats
    //
    //  roll stats or point buy?
    //      roll stats: 
    //          set arrays of stats to undo each roll
    //          use dice library
    //
    //      point buy: ?? search for a library on this
    //
    //
    // *****************************************
    // Module: background and heritage
    //
    //  choose homeland / deselect
    //  choose background or heritage / deselect
    //      if setup: choose pre-class background skills?
    //      if setup: choose pre-class background feats?
    //
    //
    // *****************************************
    // Module: alignment
    //
    //  choose alignment? / deselect
    //      if this rule is used, it limits racial selection unless that limit is turned off
    //
    //
    // *****************************************
    // Module: race
    //
    //
    //  Select: race, ancestry, monster, template, or custom race?
    //      race?       go to race:
    //      ancestry?   go to ancestry:
    //      monster?    go to monster:
    //      template?   go to race_template:
    //      custom?     go to race_custom: 
    //
    //      race: 
    //          is alignment restriction on or off?
    //          choose race
    //              choose racial archetype
    //      adjust stats by race, race archetype
    //      adjust stats by heritage/background
    //      adjust stats by class, class archetype
    //
    //      ancestry:
    //          is alignment restriction on or off?
    //          choose ancestry system (PF2e??)

    //      monster:
    //          is alignment restriction on or off?
    //          select from available Bestiary 1-6 //          monster HD classes (there's a lot)

    //      race_template:
    //          is alignment restriction on or off?
    //          pre-qualify a shorter list and then select from list of templates...

    //      race_custom: 
    //          is alignment restriction on or off?
    //          Codify rules in Advanced Class Guide...


    // ********************************************
    // Module: levels or classes
    //
    //
    //  leveling: 
    //  Select: racial HDD level, class level, template, gestalt, or custom class?
    //      race HDD level? skip to level_race: 
    //      class level? skip to level_class: 
    //      template? skip to level_template: 
    //      gestalt? skip to level_gestalt: 
    //      custom? skip to level_custom: 
    
    //      level_race: 
    //          must be same as current race(s).
    //          list available for race
    //              choose racial abilities
    //              race arch addons

    //      level_template: 
    //          list pre-qualified templates for race or class
    //      level_class: 
    //          choose class or...
    //              qualified for Prestige class?
    //          choose character class archetype
    //              choose class abilities
    //              class archetype addons


    //              choose level feats
    //              choose level skills
    //          if character level < (character level + 1) then: 
    //              level up...
    //              goto leveling
    //          break... to: gear section

        // IMPORTANT
        // if leveling mid-game then break to end
        // BELOW sections are for first time builds only
    
    //
    //
    // ********************************************
    // Module: money
    //
    //  gear: 
    //              calc new money budget, spread
    //              calc money optimization...
    //                  into CP or PP/AP/gems
    //              calc money weight


    // *******************************************
    // Module: gear
    //
    //              choose racial items?
    //              choose class typical items?

    //              select gear: 
    //                  armor...
    //                  weapons...
    //                  race or class accessories...
    //                  worn gear...
    //                  backpack?
    //                  pouches?
    //                  which items currently in hand or equipped actively?
    //                  where does all other gear + rest of money go?
    //                      pouch, pack, home, friend, stash, or bank?
                    // calc total weight
                    // calc encumbrance
                    // calc adjusted movements based on race + levels + above
                    // Fly + Aerial Manueverability or water bouyancy?


    // *******************************************
    // Module: Spells / Powers / Manifestations
    //
    //
    //          spells?
    //              if metamagic feats, fill those slots first...
    //              fill all available spell levels 1-9
    //              find which abilities granted by race
    //              find which abilities granted by heritage
    //              find which abilities granted by class
    //              find which abilities granted by feats
    //              find which abilities granted by SPECIAL

    //
    //
    // *******************************************
    // Module: Miscellaneous details
    //
    //          optional and misc: 
    //              visual details / appearance aspects
    //              portrait if desired
    //              biography or personal notes
    //              personality details
    //              character history and journal
    //              politics?
    //              allegiances?
    //              reputations?
    //              social class / caste / nobility
    //              meaning of honor stat




    // *******************************************
    // Module: Save, and Print or Export
    //
    //
    // Save, and Print or Export to PDF, PNG, statblocks?
    //
    //
    cout << endl << endl;
    //system("pause");
    // goto mainMenu;
    return 0;


runMonsterCustomizer:
    //  operation: design monster
    //int doMonsterCustomizer()
        {
            return 0;
        }


runEncounterDesigner:
    //  operation: design encounter
    //int doEncounterDesigner()
        {
            return 0;
        }



runDesignTrapSkillChallenge:
    //  operation: design trap or skill challenge
    //int doDesignTrapSkillChallenge()
        {
            return 0;
        }



runOpenPortfolio:
    //  operation: open portfolio
    //int doOpenPortfolio()
        {
            return 0;
        }





runSaveExportfolio:
    //  operation: export or print portfolio
    //int doSaveExportfolio()
        {
            return 0;
        }



runManageDatabases:
    //  operation: manage databases
    //int doManageDatabases()
        {
            return 0;
        }


    

runCheckAppUpdate:
    //  operation: check to update app
    //int doCheckAppUpdate()
        {
            return 0;
        }



    
Exit:
    //  operation: exit
    //int doCheckAppUpdate()
        {
            //  operation: check to update app
            // Check status code
            // close databases
            // sync flush caches
            //system("sync64");
        // free memory?
        //
        cout << "\nStatus code: " << status << endl;
        cout << "\nExiting...\n";
        //  Remove system call for final deploy


        return 0;
        }
        

    return 0;
}


    // free memory?    
    //system("pause>0");
    // End;  ??
    // break;
    // return 0;




// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu
// 
// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file
