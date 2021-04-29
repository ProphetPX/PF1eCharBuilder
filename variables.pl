###!/usr/bin/perl.exe
#
# ppx pf1e perl - PPX PF1e Character Builder 
# version 0.001a
# https://github.com/ProphetPX/PF1eCharBuilder/
# Perl module - variables.pl
# (see the C++ version on my github)
#
# *** DISCLAIMER ***
# I DO NOT OWN ANY RIGHTS OR I.P. CONTENT to ANY of the ideas i am referencing in this program, NOR do i own any data files.
# ALL REFERENCED I.P. data files DO NOT EXIST on any of my servers or computers and are THEORETICAL AND USED TO LEARN TO PROGRAM, ONLY.
# I DO NOT CLAIM ANY RIGHTS to ANY content about or from or with Paizo or Pathfinder 1st edition RPG game content, at all, WHATSOEVER
# *********************


# A list of basic facets of character aspects

use warnings;
use strict;
use diagnostics; 

use feature 'say';
use feature "switch";
use Games::Dice 'roll'; 
use Games::Dice 'roll_array'; 
# use DBI;
use DBI::MySQL;


#####################################
say "Starting...\n";


#####################################
# my @dice_types = qw("d0", "d2", "d3", "d4", "d6", "d8", "d10", "d12", "d20", "d30", "d100", "d1000");
# ^^ Supplanted by GAMES::DICE ...
# use Games::Dice 'roll';
# $strength = roll '3d6+1';
# use Games::Dice 'roll_array';
# @rolls = roll_array '4d8';
#
say "Loading data arrays.";

my @STATS_dice_roll_fluff  = ("core", "nice", "arcanum", "epic", "legendary", "mythic");
my @STATS_dice_roll_crunch = ("3d6",  "4d6",  "6d6",     "9d6", "12d6",     "18d6");
my @STATS_dice_roll_exceptions = ("accept","reroll 1", "reroll 1 2", "reroll 1 2 3");
my @STATS_dice_roll_highest = ("accept", "highest 3", "highest 4", "highest 6");
my @STATS_point_buy_types = ("18", "24", "36", "42", "48", "54");
my @STATS_point_buy_rules = ("0:1", "0:-3 4:-2 7:-1 9:1 13:2 16:3", "9:1 13:2 16:3");

####################################
say "Loading stats.";

my @STATS = ("STR.ength", "DEX.terity", "CON.stitution", "INT.elligence", "WIS.dom", "CHA.risma", "APP.earance", "EDG.e", "HON.or");
my @ASPECTS = ("Height", "Weight", "Skin", "Hair", "Eyes");
my @DEFENSE = ("AC", "DR", "SR", "PR", "CMD");
my @OFFENSE = ("BAB", "BAB.melee", "BAB.touch", "BAB.ranged", "BAB.rangedtouch", "CMB", "Spell.DC");


# Character statistic abilities
my $STAT_STR;
my $STAT_DEX;
my $STAT_CON;
my $STAT_INT;
my $STAT_WIS;
my $STAT_CHA;
my $STAT_APP;
my $STAT_EDG;
my $STAT_HON;

my $Statistic_HDD;
my $Statistic_AC;
my $Statistic_DR;
my $Statistic_SR;
my $Statistic_PR;
my $Statistic_BAB;
my $Statistic_BAB_Touch;
my $Statistic_BAB_Ranged;
my $Statistic_BAB_RangedTouch;
my $Statistic_CMB;
my $Statistic_CMD;

my $Statistic_Save_Reflex;
my $Statistic_Save_Fortitude;
my $Statistic_Save_Will;
# May need to make per class
my $Statistic_SpellDC;

my $Statistic_Movement;
my $Statistic_Move;
my $Statistic_Move_squares;
# my $Statistic_Move_x2;
my $Statistic_Move_Jump;
my $Statistic_Move_Fly;
my $Statistic_Move_Maneuverability;
my $Statistic_Move_Swim;
my $Statistic_Move_Buoyancy;
my $Statistic_Move_Burrow;
my $Statistic_Move_Teleport;
my $Statistic_Move_Thought;


# Character visible aspects of body
say "Loading aspects...";
my $Aspect_age; 
my $Aspect_age_appear; 
my $Aspect_age_modifiers;
my $Aspect_size;
my $Aspect_size_shape;
my $Aspect_size_reach;
# my $Aspect_size_
my $Aspect_height;
my $Aspect_weight;
my $Aspect_phasing;
my $Aspect_skin;
my $Aspect_hair;
my $Aspect_eyes;
my $Aspect_tattoos;
my $Aspect_deformities;
my $Aspect_disabilities;
my $Aspect_enhancements;
my $Aspect_arms; 
my $Aspect_legs; 
my $Aspect_wings;
my $Aspect_fins;
my $Aspect_claws;
my @Aspect_movement_types = ("walk", "crawl", "double", "run", "climb", "jump", "fly", "burrow", "swim", "phase", "thrust", "thought", "teleport");
my $Aspect_speeds;
my $Aspect_rested;
# my $Aspect_maneuverability;
# my $Aspect_buoyancy;
my $Aspect_senses;
my $Aspect_scent; 
my $Aspect_sounds;
my $Aspect_temperature;
my $Aspect_alignment;
my $Aspect_attitude;
my $Aspect_morale;
my $Aspect_mood;
my $Aspect_cursed;
my $Aspect_diseased;
my $Aspect_haunted;
my $Aspect_morphed;
my $Aspect_altered;
my $Aspect_dead;
my $Aspect_undead;
my $Aspect_divinity;
my $Aspect_heroic;
my $Aspect_rank; 
my $Aspect_aura;
my $Aspect_signature;
my $Aspect_ancestry;
my $Aspect_heraldry;
my $Aspect_pacts;
my $Aspect_homeland;
my $Aspect_family;
my $Aspect_clan;
my $Aspect_siblings;
my $Aspect_children;

my $Aspect_net_worth;
my $Aspect_money_gems;
my $Aspect_money_AP;
my $Aspect_money_PP;
my $Aspect_money_GP;
my $Aspect_money_EP;
my $Aspect_money_SP;
my $Aspect_money_CP;
my $Aspect_weight_money;
my $Aspect_weight_gear;
my $Aspect_encumbrance;


####################################
say "Loading skills...";
my $SKILLS_Acrobatics;
my $SKILLS_Appraise;
my $SKILLS_Bluff;
my $SKILLS_Climb;
my $SKILLS_Concentration;
my $SKILLS_Craft;
my $SKILLS_Diplomacy;
my $SKILLS_Disable-Device;
my $SKILLS_Disguise;
my $SKILLS_Escape-Artist;
my $SKILLS_Fly;
my $SKILLS_Handle-Animal;
my $SKILLS_Heal;
my $SKILLS_Intimidate;
my $SKILLS_Knowledge-Arcana;
my $SKILLS_Knowledge-Dungeoneering;
my $SKILLS_Knowledge-Engineering; 
my $SKILLS_Knowledge-Geography;
my $SKILLS_Knowledge-History; 
my $SKILLS_Knowledge-Local;
my $SKILLS_Knowledge-Nature;
my $SKILLS_Knowledge-Nobility;
my $SKILLS_Knowledge-Planes;
my $SKILLS_Knowledge-Religion;
my $SKILLS_Knowledge-OTHER;
my $SKILLS_Linguistics;
my $SKILLS_Perception;
my $SKILLS_Perform;
my $SKILLS_Profession;
my $SKILLS_Ride;
my $SKILLS_Sense-Motive;
my $SKILLS_Sleight-Hand;
my $SKILLS_Spellcraft;
my $SKILLS_Stealth;
my $SKILLS_Survival;
my $SKILLS_Swim;
my $SKILLS_Use-Magic-Device;

##########################################



# Races per: https://www.d20pfsrd.com/races/
# Half-breeds are treated special, like Customs
say "Loading races...";
my @race_types_array = ("3pp", "advanced", "core", "custom", "powerful", "standard", "unknown");

my @races_array = ("advanced.Aasimar", "custom.ARG", "advanced.Android", "unknown.Astomoi", "3pp.Blue", "unknown.Caligni", "unknown.Changeling", "standard.Catfolk", "3pp.Dromite", "unknown.Deep-One Hybrid", "unknown.Elf-Aquatic", "advanced.Dhampir", "powerful.Drider", "powerful.Drow-Noble", "advanced.Drow-Common", "standard.Duergar", "core.Dwarf", "3pp.Elan", "core.Elf", "advanced.Fetchling", "3pp.Forgeborn", "unknown.Ganzi", "powerful.Gargoyle", "advanced.Gathlain", "advanced.Ghoran", "3pp.Giant*", "unknown.Gillmen", "standard.Gnoll", "core.Gnome", "standard.Goblin", "standard.Goblin-Monkey", "standard.Grippli", "core.Halfling", "custom.Half-breed", "standard.Hobgoblin", "custom.HD", "core.Human", "standard.Ifrit", "advanced.Kasatha", "unknown.Kitsune", "standard.Kobold", "unknown.Kuru", "advanced.Lashunta", "standard.Lizardfolk", "3pp.Maenad", "unknown.Merfolk", "custom.Monster", "unknown.Munavri", "unknown.Nagaji", "3pp.Noral", "3pp.Ophidian", "unknown.Orang-Pendak", "standard.Orc", "standard.Oread", "standard.Ratfolk", "unknown.Reptoid", "unknown.Samsaran", "advanced.Shabti", "standard.Skinwalker", "unknown.Strix", "advanced.Suli", "monster.Svirfneblin", "standard.Sylph", "advanced.Tengu", "advanced.Tiefling", "standard.Triaxian", "powerful.Trox", "standard.Undine", "advanced.Vishkanya", "standard.Vanara", "unknown.Wayang", "advanced.Wyrwood", "advanced.Wyvaran", "3pp.Xeph");


# Classes per: https://www.d20pfsrd.com/classes/monster-classes/
# Custom-classes may use ACG rules or other PF1 Hybrid rules
say "Loading classes...";
my @class_types_array = ("3pp", "advanced", "base", "core", "custom", "npc", "powerful", "prestige", "standard", "unknown");

my @classes_array = ("custom.ACG", "npc.Adept", "custom.Advanced", "3pp.Aegis", "base.Alchemist", "alternate.Antipaladin", "hybrid.Arcanist", "npc.Aristocrat", "core.Barbarian", "npc.Barbarian-Iconic", "unchained.Barbarian", "core.Bard", "npc.Bard-Iconic", "extended.Blackguard", "hybrid.Bloodrager", "hybrid.Brawler", "base.Cavalier", "core.Cleric", "npc.Cleric-Iconic" "npc.Commoner", "3pp.Cryptic", "monster.Deva-Astral", "monster.Dragon-True", "3pp.Dread", "core.Druid", "npc.Druid-Iconic", "monster.Earth Elemental", "monster.Erinyes", "npc.Expert", "monster.Fey", "core.Fighter", "npc.Fighter-Iconic", "custom.Gestalt","monster.Giants-Reptiles", "monster.Giant-Hill", "base.Gunslinger", "3pp.Harbinger", "hybrid.Hunter*", "custom.Hybrid", "base.Inquisitor" "hybrid.Investigator", "3pp.Kineticist", "base.Magus", "monster.Lizardfolk", "3pp.Marksman", "Medium", "extended.Mesmerist", "core.Monk", "npc.Monk-Iconic", "unchained.Monk", "custom.Monster-HD", "3pp.Mystic", "alternate.Ninja", "extended.Occultist", "base.Omdura", "base.Oracle", "core.Paladin*", "npc.Paladin-Iconic", "monster.Pinnacle-Pit", "3pp.Psion", "Psychic", "3pp.Psychic Warrior", "custom.Racial-Level", "custom.Racial-Paragon", "core.Ranger", "npc.Ranger-Iconic", "core.Rogue*", "npc.Rogue-Iconic", "unchained.Rogue", "3pp.Rogue", "extended.Samurai", "3pp.Samurai-Legendary", "monster.Savage-Races-1", "monster.Savage-Races-2", "hybrid.Shaman", "base.Shifter", "hybrid.Skald", "hybrid.Slayer", "core.Sorceror", "npc.Sorceror-Iconic", "3pp.Soulknife", "Spiritualist", "3pp.Stalker", "base.Summoner*", "unchained.Summoner", "hybrid.Swashbuckler", "3pp.Tactician", "custom.Template*", "monster.Undead", "base.Vampire-Hunter", "base.Vigilante", "3pp.Vitalist", "3pp.Vizier", "3pp.Warder", "3pp.Warlock", "3pp.Warlord", "hybrid.Warpriest", "npc.Warrior", "3pp.Wilder", "base.Witch", "core.Wizard", "npc.Wizard-Iconic", "3pp.Wizard-Abjurer", "3pp.Wizard-Conjurer", "3pp.Wizard-Diviner", "3pp.Wizard-Enchanter", "3pp.Wizard-Evoker", "3pp.Wizard-Illusionist", "3pp.Wizard-Necromancer", "3pp.Wizard-Transmuter", "3pp.Zealot");


# TO DO: to be per race: 
my $STAT_STR; # data: int
my $STAT_DEX; # data: int
my $STAT_CON; # data: int
my $STAT_INT; # data: int
my $STAT_WIS; # data: int
my $STAT_CHA; # data: int
my $STAT_APP; # data: int
my $STAT_EDG; # data: int
my $STAT_HON; # data: int
# ...  = $rand_base + rand($rand_limit);
my $Aspect_height;
my $Aspect_weight;
my $Aspect_skin;
my $Aspect_hair;
my $Aspect_eyes;


##########################################
## TORN FROM SAMPLE CODE

# per  https://www.mysqltutorial.org/perl-mysql/perl-mysql-connect/ 
$dbh = DBI->connect($dsn,$username,$password,\%attr);
# use DBI;
say "Perl MySQL Connect Demo";
# MySQL database configuration
my $dsn = "DBI:mysql:perlmysqldb";
my $username = "user";
my $password = 'password';
# connect to MySQL database
my %attr = ( PrintError=>0,  # turn off error reporting via warn()
             RaiseError=>1);   # turn on error reporting via die()           
my $dbh  = DBI->connect($dsn,$username,$password, \%attr);
say "Connected to the MySQL database.";
# 
###########################################

