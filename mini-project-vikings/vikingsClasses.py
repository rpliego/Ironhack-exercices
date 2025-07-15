import random

# Soldier


class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    
    def attack(self):
        return self.strength

    def receiveDamage(self, damage):
        self.health -= damage
    

# Viking

class Viking(Soldier):
    def __init__(self, name, health, strength):
        self.name = name
        self.health = health
        self.strength = strength

    def battleCry(self):
        return "Odin Owns You All!"

    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return f"{self.name} has received {damage} points of damage"
        else:
            return f"{self.name} has died in act of combat"

# Saxon

class Saxon(Soldier):
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

    def receiveDamage(self, damage):
        self.health -= damage
        if self.health > 0:
            return f"A Saxon has received {damage} points of damage"
        else:
            return f"A Saxon has died in combat"

# Davicente

class War():
    def __init__(self):
        self.vikingArmy = []
        self.saxonArmy = []

    def addViking(self, viking):
        self.vikingArmy.append(viking)
    
    def addSaxon(self, saxon):
        self.saxonArmy.append(saxon)
    
    def vikingAttack(self):
        s_target = random.randint(0, len(self.saxonArmy) - 1)
        v_target = random.randint(0, len(self.vikingArmy) - 1)

        out = self.saxonArmy[s_target].receiveDamage(self.vikingArmy[v_target].attack())
        if out == "A Saxon has died in combat":
            del self.saxonArmy[s_target]
        
        return out
    
    def saxonAttack(self):
        s_target = random.randint(0, len(self.saxonArmy) - 1)
        v_target = random.randint(0, len(self.vikingArmy) - 1)

        out = self.vikingArmy[v_target].receiveDamage(self.saxonArmy[s_target].attack())
        if out == f"{self.vikingArmy[v_target].name} has died in act of combat":
            del self.vikingArmy[v_target]
        
        return out

    def showStatus(self):
        if len(self.vikingArmy) == 0:
            return "Saxons have fought for their lives and survive another day..."
        elif len(self.saxonArmy) == 0:
            return "Vikings have won the war of the century!"
        else:
            return "Vikings and Saxons are still in the thick of battle."
    pass

#yop
class War2:

    def __init__(self):
        pass

    def addViking(self, Viking):
        pass
    
    def addSaxon(self, Saxon):
        pass
    
    def vikingAttack(self):
        pass

    def saxonAttack(self):
        pass

    def showStatus(self):
        pass

    pass


