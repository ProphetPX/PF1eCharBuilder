// PF1eCharBuilder.cpp PROJECT -- Monster class def
// v0.001a by ProphetPX
// File date:  05-08-2021
//
//
#include <iostream>
#include <list>
#include <map>
#include <string>
using namespace std;
using namespace map;

class Monster_defines {
public:
    
    int book_number;
    int page_number;
    string book_name[] = {"Core Rulebook", "Advanced Player's Guide", "Advanced Race Guide", "Ultimate Psionics", "Bestiary 1", "Bestiary 2", "Bestiary 3", "Bestiary 4", "Bestiary 5", "Bestiary 6"};
    
    // const char *terrain[] -- consider pointers?
    string monster_terrains[11] = { "Deserts", "Forests/Jungles", "Hills", "Mountains", "Plains", "Ruins/Dungeons", "Sky", "Swamps", "Underground", "Urban", "Water" };
    
    // Monster Types and Subtypes, from:  https://www.d20pfsrd.com/bestiary/rules-for-monsters/creature-types/
    
    string monster_types[13] = { "Aberration", "Animal", "Construct", "Dragon", "Fey", "Humanoid", "Magical Beast", "Monstrous Humanoid", "Ooze", "Outsider", "Plant", "Undead", "Vermin" };
    
    string monster_subtypes[75] = { "Adlet", "Aeon", "Agathion", "Air", "Angel", "Aquatic", "Archon", "Asura", "Augmented", "Automaton", "Azata", "Behemoth", "Catfolk", "Chaotic", "Clockwork", "Cold", "Colossus", "Daemon", "DarkFolk", "DeepOne", "Demodand", "Demon", "Devil", "Div", "Dwarf", "Earth", "Elemental", "Elf", "Evil", "Extraplanar", "Fire", "Giant", "Gnome", "Goblinoid", "Godspawn", "Good", "GreatOldOne", "Halfling", "Herald", "Hive", "Human", "Incorporeal", "Inevitable", "Kaiju", "Kami", "Kasatha", "Kitsune", "Kyton", "Lawful", "Leshy", "Mortic", "Mythic", "Native", "Nightshade", "Oni", "Orc", "Protean", "Psychopomp", "Qlippoth", "Rakshasa", "Ratfolk", "Reptilian", "Robot", "Samsaran", "Sasquatch", "Shapechanger", "Swarm", "Troop", "Udaeus", "Unbreathing", "Vanara", "Vishkanya", "Water", "Wayang", "WildHunt" };

    string monster_climate[4] = { "Cold", "Extraplanar", "Temperate", "Tropical" };

    
    
}

class Monster {
public:
    
    int monster_UUID;			// key 0
    std::map<int, int, string> monster_book;     // key 0a
    string monster_FQDN;	    // key 1
    string monster_blurb;		// key 2
    string monsterShortName;	// key 3
    float monster_CR;			// key 4
    array<string, 11> monster_terrains;	// key 5
    int monster_XP;				// key 6
    int monster_alignment;		// key 7 numeric scale
    int monster_size;           // key 8
    int monster_type;           // key 9 according to list
    
}