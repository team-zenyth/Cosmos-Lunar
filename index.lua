dofile("save.z")

Mp3.load("SFX/Lunya.mp3", 0)

-- Intro
logo = {x = 168, y = 130, l = 10, L = 10 }
zenyth = {x = 26, y = 106, l = 0, L = 10}
face = 0
v = 0.3
nfois = 0
Jaune = Color.new(237, 187, 63)
Gris = Color.new(196,196,196)

-- Couleurs
Blanc = Color.new(255,255,255)

--Menu
selecteur = { x = 10, y = 126, c = 1, icon = "O"}
font = IntraFont.load("flash0:/font/ltn8.pgf",0)
cosmo = Image.load("GFX/Cosmo.png")

-- Etoiles
nombre_etoiles = 100
etoiles = {}
for i = 1, nombre_etoiles do
 etoiles[i] = {x = math.random(0,479),y = math.random(0,271)}
end

-- Jeu
Wav.load("SFX/buble.wav", 0)
perso1 = Image.load("GFX/perso1.png")
perso2 = Image.load("GFX/perso2.png")
roche = Image.load("GFX/roche.png")
air = Image.load("GFX/air.png")
posobjet1 = {x = 485, y = 0}
posobjet2 = {x = 485, y = 0}
posobjet3 = {x = 485, y = 0}
posobjet4 = {x = 485, y = 0}
posair1 = {x = 485, y = 0}
posperso = {x = 20, y = 240}
oxygene = {l = 100, L = 10}
aleatobjet = 0
objet1 = false
objet2 = false
objet3 = false
objet4 = false
air1 = false
Pauseactive = false
Finactive = false
perso = perso2
score = 0
naleat = 250
vitesse = 4

-- Elements Crédits
Production = { y = 280, texte = "Made in France, By the Team Zenyth" }
Projet = { y = 320, texte = "Original idea, code and artworks : Samir88Nasri" }
FE = { y = 360, texte = "Savesystem, stary background and translation : psgarsenal" }
Aide = { y = 400, texte = "With the help from all the team" }
Remerci = { y = 440, texte = "Thanks to everyone who supports us" }
Conclusion = { y = 480, texte = "Hopping you'll enjoy this game" }
monte = 0.2

oldpad = Controls.read()
statut = "Intro"

function partie1()
--1
screen:fillRect(logo.x,logo.y,logo.l,logo.L,Gris)
screen:fillRect(logo.x,logo.y + 12,logo.l,logo.L,Gris)
screen:fillRect(logo.x,logo.y + 12*2,logo.l,logo.L,Gris)

--2
screen:fillRect(logo.x+12,logo.y-12*2,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12,logo.y-12,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12,logo.y,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12,logo.y+12,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12,logo.y+12*2,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12,logo.y+12*3,logo.l,logo.L,Gris)

--3
screen:fillRect(logo.x+12*2,logo.y-12*3,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*2,logo.y-12*2,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*2,logo.y,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*2,logo.y+12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*2,logo.y+12*2,logo.l,logo.L,Jaune)

--4
screen:fillRect(logo.x+12*3,logo.y-12*4,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*3,logo.y-12*3,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*3,logo.y-12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*3,logo.y,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*3,logo.y+12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*3,logo.y+12*2,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*3,logo.y+12*3,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*3,logo.y+12*4,logo.l,logo.L,Jaune)

-- 5
screen:fillRect(logo.x+12*4,logo.y-12*4,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*4,logo.y-12*2,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*4,logo.y-12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*4,logo.y+12*2,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*4,logo.y+12*4,logo.l,logo.L,Jaune)

-- 6 
screen:fillRect(logo.x+12*5,logo.y-12*4,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*5,logo.y-12*2,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*5,logo.y-12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*5,logo.y,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*5,logo.y+12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*5,logo.y+12*2,logo.l,logo.L,Jaune)

-- 7 
screen:fillRect(logo.x+12*6,logo.y-12*4,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*6,logo.y-12*2,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*6,logo.y-12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*6,logo.y,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*6,logo.y+12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*6,logo.y+12*2,logo.l,logo.L,Jaune)

-- 8
screen:fillRect(logo.x+12*7,logo.y-12*4,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*7,logo.y-12*2,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*7,logo.y-12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*7,logo.y+12*2,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*7,logo.y+12*4,logo.l,logo.L,Jaune)

--9
screen:fillRect(logo.x+12*8,logo.y-12*4,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*8,logo.y-12*3,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*8,logo.y-12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*8,logo.y,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*8,logo.y+12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*8,logo.y+12*2,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*8,logo.y+12*3,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*8,logo.y+12*4,logo.l,logo.L,Jaune)

--10
screen:fillRect(logo.x+12*9,logo.y - 12*3,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*9,logo.y - 12*2,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*9,logo.y,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*9,logo.y + 12,logo.l,logo.L,Jaune)
screen:fillRect(logo.x+12*9,logo.y + 12*2,logo.l,logo.L,Jaune)

--12
screen:fillRect(logo.x + 12*10,logo.y-12*2,logo.l,logo.L,Gris)
screen:fillRect(logo.x + 12*10,logo.y-12,logo.l,logo.L,Gris)
screen:fillRect(logo.x + 12*10,logo.y,logo.l,logo.L,Gris)
screen:fillRect(logo.x + 12*10,logo.y+12,logo.l,logo.L,Gris)
screen:fillRect(logo.x + 12*10,logo.y+12*2,logo.l,logo.L,Gris)
screen:fillRect(logo.x + 12*10,logo.y+12*3,logo.l,logo.L,Gris)

--12
screen:fillRect(logo.x+12*11,logo.y,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*11,logo.y+12,logo.l,logo.L,Gris)
screen:fillRect(logo.x+12*11,logo.y+12*2,logo.l,logo.L,Gris)


end

function partie2()
--z1
screen:fillRect(zenyth.x,zenyth.y,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x,zenyth.y+12*4,zenyth.l,zenyth.L,Jaune)

--z2
screen:fillRect(zenyth.x+12,zenyth.y,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12,zenyth.y+12*3,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12,zenyth.y+12*4,zenyth.l,zenyth.L,Jaune)

--z3
screen:fillRect(zenyth.x+12*2,zenyth.y,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*2,zenyth.y+12*2,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*2,zenyth.y+12*4,zenyth.l,zenyth.L,Jaune)

--z4
screen:fillRect(zenyth.x+12*3,zenyth.y,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*3,zenyth.y+12,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*3,zenyth.y+12*4,zenyth.l,zenyth.L,Jaune)

--z5
screen:fillRect(zenyth.x+12*4,zenyth.y,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*4,zenyth.y+12*4,zenyth.l,zenyth.L,Jaune)

--e1
screen:fillRect(zenyth.x+12*6,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*6,zenyth.y+12,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*6,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*6,zenyth.y+12*3,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*6,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--e2
screen:fillRect(zenyth.x+12*7,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*7,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*7,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--e3
screen:fillRect(zenyth.x+12*8,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*8,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*8,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--e4
screen:fillRect(zenyth.x+12*9,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*9,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*9,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--e5
screen:fillRect(zenyth.x+12*10,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*10,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*10,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--n1
screen:fillRect(zenyth.x+12*12,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*12,zenyth.y+12,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*12,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*12,zenyth.y+12*3,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*12,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--n2
screen:fillRect(zenyth.x+12*13,zenyth.y+12,zenyth.l,zenyth.L,Gris)

--n3
screen:fillRect(zenyth.x+12*14,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)

--n3
screen:fillRect(zenyth.x+12*15,zenyth.y+12*3,zenyth.l,zenyth.L,Gris)

--n4
screen:fillRect(zenyth.x+12*16,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--n5
screen:fillRect(zenyth.x+12*17,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*17,zenyth.y+12,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*17,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*17,zenyth.y+12*3,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*17,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--y1
screen:fillRect(zenyth.x+12*19,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*19,zenyth.y+12,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*19,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*19,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--y2
screen:fillRect(zenyth.x+12*20,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*20,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--y3
screen:fillRect(zenyth.x+12*21,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*21,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--y4
screen:fillRect(zenyth.x+12*22,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*22,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--y5
screen:fillRect(zenyth.x+12*23,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*23,zenyth.y+12,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*23,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*23,zenyth.y+12*3,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*23,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--t1
screen:fillRect(zenyth.x+12*25,zenyth.y,zenyth.l,zenyth.L,Gris)

--t2
screen:fillRect(zenyth.x+12*26,zenyth.y,zenyth.l,zenyth.L,Gris)

--t3
screen:fillRect(zenyth.x+12*27,zenyth.y,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*27,zenyth.y+12,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*27,zenyth.y+12*2,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*27,zenyth.y+12*3,zenyth.l,zenyth.L,Gris)
screen:fillRect(zenyth.x+12*27,zenyth.y+12*4,zenyth.l,zenyth.L,Gris)

--t4
screen:fillRect(zenyth.x+12*28,zenyth.y,zenyth.l,zenyth.L,Gris)

--t5
screen:fillRect(zenyth.x+12*29,zenyth.y,zenyth.l,zenyth.L,Gris)

--h1
screen:fillRect(zenyth.x+12*31,zenyth.y,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*31,zenyth.y+12,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*31,zenyth.y+12*2,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*31,zenyth.y+12*3,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*31,zenyth.y+12*4,zenyth.l,zenyth.L,Jaune)

--h2
screen:fillRect(zenyth.x+12*32,zenyth.y+12*2,zenyth.l,zenyth.L,Jaune)

--h3
screen:fillRect(zenyth.x+12*33,zenyth.y+12*2,zenyth.l,zenyth.L,Jaune)

--h4
screen:fillRect(zenyth.x+12*34,zenyth.y+12*2,zenyth.l,zenyth.L,Jaune)

--h5
screen:fillRect(zenyth.x+12*35,zenyth.y,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*35,zenyth.y+12,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*35,zenyth.y+12*2,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*35,zenyth.y+12*3,zenyth.l,zenyth.L,Jaune)
screen:fillRect(zenyth.x+12*35,zenyth.y+12*4,zenyth.l,zenyth.L,Jaune)
end

function Intro()
	if logo.l < 0 and face == 0 then
		face = 1
	elseif zenyth.l > 10 and face == 1 then
		face = 2
	elseif zenyth.l < 0 and face == 2 then
		face = 3
	elseif logo.l > 10 and face == 3 then
		nfois = nfois + 1
		face = 0
	end

	if face == 0 then
		partie1()
		logo.x = logo.x+v/2
		logo.l = logo.l-v
	elseif face == 1 then
		partie2()
		zenyth.x = zenyth.x-v/2
		zenyth.l = zenyth.l+v
	elseif face == 2 then
		partie2()
		zenyth.x = zenyth.x + v/2
		zenyth.l = zenyth.l-v
	elseif face == 3 then
		partie1()
		logo.x = logo.x-v/2
		logo.l = logo.l+v
	end

	if nfois >= 2 then
		statut = "Menu"
	end
end

function affobjet()

	if aleatobjet == 1 and objet1 == false then
		objet1 = true
		posobjet1.x = 485
		posobjet1.y = math.random(0, 230)
	elseif objet1 == true then
		posobjet1.x = posobjet1.x - vitesse
		screen:blit(posobjet1.x,posobjet1.y,roche)
	end

	if posobjet1.x < -50 then
		objet1 = false
	elseif objet1 == false then
		posobjet1.x = 485
	end

	if aleatobjet == 4 and objet4 == false then
		objet4 = true
		posobjet4.x = 485
		posobjet4.y = math.random(0, 230)
	elseif objet4 == true then
		posobjet4.x = posobjet4.x - vitesse
		screen:blit(posobjet4.x,posobjet4.y,roche)
	end

	if posobjet4.x < -50 then
		objet4 = false
		elseif objet4 == false then
		posobjet4.x = 485
	end

	if aleatobjet == 2 and objet2 == false then
		objet2 = true
		posobjet2.x = 485
		posobjet2.y = math.random(0, 230)
	elseif objet2 == true then
		posobjet2.x = posobjet2.x - vitesse
		screen:blit(posobjet2.x,posobjet2.y,roche)
	end

	if posobjet2.x < -50 then
		objet2 = false
	elseif objet2 == false then
		posobjet2.x = 485
	end

	if aleatobjet == 3 and objet3 == false then
		objet3 = true
		posobjet3.x = 485
		posobjet3.y = math.random(0, 230)
	elseif objet3 == true then
		posobjet3.x = posobjet3.x - vitesse
		screen:blit(posobjet3.x,posobjet3.y,roche)
	end

	if posobjet3.x < -50 then
		objet3 = false
	elseif objet3 == false then
	posobjet3.x = 485
	end


	if aleatobjet == 5 and air1 == false then
		air1 = true
		posair1.x = 485
		posair1.y = math.random(0, 240)
	elseif air1 == true then
		posair1.x = posair1.x - vitesse
		screen:blit(posair1.x,posair1.y,air)
	end

	if posair1.x < -50 then
		air1 = false
	elseif air1 == false then
		posair1.x = 485
	end
end

function collision()
if posperso.y + perso:height() >= posobjet1.y and posperso.y <= posobjet1.y + roche:height() and posperso.x + perso:width() >= posobjet1.x and posperso.x <= posobjet1.x + roche:height() and Finactive == false
or posperso.y + perso:height() >= posobjet2.y and posperso.y <= posobjet2.y + roche:height() and posperso.x + perso:width() >= posobjet2.x and posperso.x <= posobjet2.x + roche:height() and Finactive == false
or posperso.y + perso:height() >= posobjet3.y and posperso.y <= posobjet3.y + roche:height() and posperso.x + perso:width() >= posobjet3.x and posperso.x <= posobjet3.x + roche:height() and Finactive == false
or posperso.y + perso:height() >= posobjet4.y and posperso.y <= posobjet4.y + roche:height() and posperso.x + perso:width() >= posobjet4.x and posperso.x <= posobjet4.x + roche:height() and Finactive == false
then
Finactive = true
end
if posperso.y + perso:height() >= posair1.y and posperso.y <= posair1.y + air:height() and posperso.x + perso:width() >= posair1.x and posperso.x <= posair1.x + air:height() and air1 == true then
oxygene.l = oxygene.l + 5
air1 = false
posair1.x = 485
Wav.play(false, 0)
end
end

function Jeu()
screen:fillRect(370,252,oxygene.l,oxygene.L,Blanc)

font:setStyle(1.0 , Blanc , Color.new(0,0,0,0) , IntraFont.ALIGN_LEFT)
font:print(  420, 20, score)
screen:blit(posperso.x,posperso.y,perso)
	aleatobjet = math.random ( 1,naleat)
	score = score + 1
	oxygene.l = oxygene.l - 0.02
	vitesse = vitesse + 0.001
	naleat = naleat - 0.001

affobjet()
collision()

	if oxygene.l <= 0 and Finactive == false then
		oxygene.l = 0
		Finactive = true
	end

	if pad:cross() then
		posperso.y = posperso.y - 4 
		perso = perso1
	else
		posperso.y = posperso.y + 2
		perso = perso2
	end
			
			
		
	if posperso.y <= 0 then
		posperso.y = 0
	elseif posperso.y + perso:height() >= 272 then
		posperso.y = 272 - perso:height()
	end

	if Finactive == true then 
		statut = "Fini"
	end

	if pad:start() and not oldpad:start() and Pauseactive == false then
		Pauseactive = true
	elseif Pauseactive == true then	
		statut = "Pause"
	end 
end

function Pause()
font:print( 40,120,"Continue")
font:print( 40,140,"Retry")
font:print( 40,160,"Quit")
font:print( 10,selecteur.y,selecteur.icon)
font:print( 300,232,"Your Score : "..score)
font:print( 300,252,"High Score : "..highscore)
-- deplacement curseur
	if pad:up() and not oldpad:up() then
		selecteur.c = selecteur.c - 1 
	elseif pad:down() and not oldpad:down() then 
		selecteur.c = selecteur.c + 1 
	end
  
	if selecteur.c > 3 then 
		selecteur.c = 1 
	elseif selecteur.c < 1 then 
		selecteur.c = 3
	end  
  
-- position curseur
	if selecteur.c == 1 then 
		selecteur.y = 120
	elseif selecteur.c == 2 then 
		selecteur.y = 140
	elseif selecteur.c == 3 then 
		selecteur.y = 160
	end  
-- choix curseur
	if pad:cross() and not oldpad:cross() and Pauseactive == true then
		if selecteur.c == 1 then
			Pauseactive = false
		elseif selecteur.c == 2 then
			objet1 = false
			objet2 = false
			objet3 = false
			objet4 = false
			air1 = false
			Pauseactive = false
			score = 0
			naleat = 250
			vitesse = 4
			oxygene.l = 100
			posperso.y = 240
		elseif selecteur.c == 3 then 
			statut = "Menu"
		end
	end
	
	if pad:start() and not oldpad:start() and Pauseactive == true then
		Pauseactive = false
	elseif Pauseactive == false then
		statut = "Jeu"
	end
end

function sauvegardescores()

	if score > highscore then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = bestscore8
		bestscore9 = bestscore9	
		bestscore8 = bestscore7
		bestscore8 = bestscore8	
		bestscore7 = bestscore6
		bestscore7 = bestscore7	
		bestscore6 = bestscore5
		bestscore6 = bestscore6
		bestscore5 = bestscore4
		bestscore5 = bestscore5
		bestscore4 = bestscore3
		bestscore4 = bestscore4	
		bestscore3 = bestscore2
		bestscore3 = bestscore3
		bestscore2 = highscore
		bestscore2 = bestscore2
		highscore = score
		highscore = highscore
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore2 and score < highscore then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = bestscore8
		bestscore9 = bestscore9	
		bestscore8 = bestscore7
		bestscore8 = bestscore8	
		bestscore7 = bestscore6
		bestscore7 = bestscore7	
		bestscore6 = bestscore5
		bestscore6 = bestscore6
		bestscore5 = bestscore4
		bestscore5 = bestscore5
		bestscore4 = bestscore3
		bestscore4 = bestscore4	
		bestscore3 = bestscore2
		bestscore3 = bestscore3
		bestscore2 = score
		bestscore2 = bestscore2
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore3 and score < bestscore2 then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = bestscore8
		bestscore9 = bestscore9	
		bestscore8 = bestscore7
		bestscore8 = bestscore8	
		bestscore7 = bestscore6
		bestscore7 = bestscore7	
		bestscore6 = bestscore5
		bestscore6 = bestscore6
		bestscore5 = bestscore4
		bestscore5 = bestscore5
		bestscore4 = bestscore3
		bestscore4 = bestscore4	
		bestscore3 = score
		bestscore3 = bestscore3
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore4 and score < bestscore3 then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = bestscore8
		bestscore9 = bestscore9	
		bestscore8 = bestscore7
		bestscore8 = bestscore8	
		bestscore7 = bestscore6
		bestscore7 = bestscore7	
		bestscore6 = bestscore5
		bestscore6 = bestscore6
		bestscore5 = bestscore4
		bestscore5 = bestscore5
		bestscore4 = score
		bestscore4 = bestscore4
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore5 and score < bestscore4 then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = bestscore8
		bestscore9 = bestscore9	
		bestscore8 = bestscore7
		bestscore8 = bestscore8	
		bestscore7 = bestscore6
		bestscore7 = bestscore7	
		bestscore6 = bestscore5
		bestscore6 = bestscore6
		bestscore5 = score
		bestscore5 = bestscore5
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore6 and score < bestscore5 then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = bestscore8
		bestscore9 = bestscore9	
		bestscore8 = bestscore7
		bestscore8 = bestscore8	
		bestscore7 = bestscore6
		bestscore7 = bestscore7	
		bestscore6 = score
		bestscore6 = bestscore6
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore7 and score < bestscore6 then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = bestscore8
		bestscore9 = bestscore9	
		bestscore8 = bestscore7
		bestscore8 = bestscore8	
		bestscore7 = score
		bestscore7 = bestscore7	
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore8 and score < bestscore7 then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = bestscore8
		bestscore9 = bestscore9	
		bestscore8 = score
		bestscore8 = bestscore8	
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore9 and score < bestscore8 then
		bestscore10 = bestscore9
		bestscore10 = bestscore10
		bestscore9 = score
		bestscore9 = bestscore9
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	elseif score > bestscore10 and score < bestscore9 then
		bestscore10 = score
		bestscore10 = bestscore10
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()
	end
end

function reinitialiser()
bestscore10 = 0
bestscore9 = 0
bestscore8 = 0
bestscore7 = 0
bestscore6 = 0
bestscore5 = 0
bestscore4 = 0
bestscore3 = 0
bestscore2 = 0
highscore = 0
		fichier_score = io.open("save.z", "w")
		fichier_score:write("\n highscore = "..highscore)	
		fichier_score:write("\n bestscore2 = "..bestscore2)
		fichier_score:write("\n bestscore3 = "..bestscore3)
		fichier_score:write("\n bestscore4 = "..bestscore4)
		fichier_score:write("\n bestscore5 = "..bestscore5)
		fichier_score:write("\n bestscore6 = "..bestscore6)
		fichier_score:write("\n bestscore7 = "..bestscore7)
		fichier_score:write("\n bestscore8 = "..bestscore8)
		fichier_score:write("\n bestscore9 = "..bestscore9)
		fichier_score:write("\n bestscore10 = "..bestscore10)
		fichier_score:close()

end

function Fini()
font:setStyle(1.0 , Blanc , Color.new(0,0,0,0) , IntraFont.ALIGN_LEFT)
font:print( 40,120,"High score : "..highscore)	
font:print( 40,140,"Score : "..score)
font:print( 40,160,"Retry")
font:print( 40,180,"Yes          No")
font:print( selecteur.x,180,selecteur.icon)

	vitesse = 4

	sauvegardescores()


	if pad:left() and not oldpad:left() then
		selecteur.c = selecteur.c - 1 
	elseif pad:right() and not oldpad:right() then 
		selecteur.c = selecteur.c + 1 
	end
  
	if selecteur.c > 2 then 
		selecteur.c = 1 
	elseif selecteur.c < 1 then 
		selecteur.c = 2
	end  
  

	if selecteur.c == 1 then 
		selecteur.x = 10
	elseif selecteur.c == 2 then 
		selecteur.x = 80
	end  

	if pad:cross() and not oldpad:cross() and Finactive == true then
		if selecteur.c == 1 then
			objet1 = false
			objet2 = false
			objet3 = false
			objet4 = false
			air1 = false
			score = 0
			naleat = 250
			vitesse = 4
			oxygene.l = 100
			posperso.y = 240
			statut = "Jeu"
			Finactive = false
		elseif selecteur.c == 2 then
			statut = "Menu"
			Finactive = false
		end
	end
end

function Menu()

screen:blit(0,0,cosmo)
font:print( 20,50,"Cosmos Lunar")	
font:print( 40,120,"New game")
font:print( 40,140,"Best scores")
font:print( 40,160,"Credits")
font:print( 40,180,"Leave the spaceship")
font:print( 10,selecteur.y,selecteur.icon)
font:print( 320,252,"High Score : "..highscore)

			objet1 = false
			objet2 = false
			objet3 = false
			objet4 = false
			air1 = false
			Pauseactive = false
			score = 0
			naleat = 250
			vitesse = 4
			oxygene.l = 100
			posperso.y = 240
			

	if pad:up() and not oldpad:up() then
		selecteur.c = selecteur.c - 1 
	elseif pad:down() and not oldpad:down() then 
		selecteur.c = selecteur.c + 1 
	end
  
	if selecteur.c > 4 then 
		selecteur.c = 1 
	elseif selecteur.c < 1 then 
		selecteur.c = 4
	end  
  

	if selecteur.c == 1 then 
		selecteur.y = 120
	elseif selecteur.c == 2 then 
		selecteur.y = 140
	elseif selecteur.c == 3 then 
		selecteur.y = 160
	elseif selecteur.c == 4 then 
		selecteur.y = 180
	end  
 

	if pad:cross() and not oldpad:cross() then
		if selecteur.c == 1 then
			statut = "Jeu"
		elseif selecteur.c == 2 then 
			statut = "Bestscore"
		elseif selecteur.c == 3 then 
			statut = "Credits"
		elseif selecteur.c == 4 then 
			System.quit()   -- Quitte le jeu --
		end
	end
end

function fondetoilee()
for i = 1, #etoiles do 
 screen:pixel(etoiles[i].x,etoiles[i].y,Blanc)
 etoiles[i].x = etoiles[i].x - vitesse + 3

 if etoiles[i].x < 1 then
  etoiles[i] = {x = 479,y = math.random(0,271)}
 end
end
end

function Credits() 
font:print(  40, Production.y, Production.texte) 
font:print(  40, Projet.y, Projet.texte)
font:print(  40, FE.y, FE.texte)
font:print(  40, Aide.y, Aide.texte) 
font:print(  40, Remerci.y, Remerci.texte) 
font:print(  40, Conclusion.y, Conclusion.texte)

  Production.y = Production.y - monte
  Projet.y = Projet.y - monte
  FE.y = FE.y - monte
  Aide.y = Aide.y - monte
  Remerci.y = Remerci.y - monte
  Conclusion.y = Conclusion.y - monte

  
	if Production.y < -200 then
		Production.y = 273
	elseif Projet.y < -200 then
		Projet.y = 273
	elseif FE.y < -200 then
		FE.y = 273
	elseif Aide.y < -200 then
		Aide.y = 273
	elseif Remerci.y < -200 then
		Remerci.y = 273
	elseif Conclusion.y < -200 then
		Conclusion.y = 273
	end

	if pad:circle() then
		statut = "Menu"
	end
end

function Bestscore()
font:print(20,50,"Best scores")
font:print(40,80,"1. "..highscore)
font:print( 40,100,"2. "..bestscore2)
font:print( 40,120,"3. "..bestscore3)
font:print( 40,140,"4. "..bestscore4)
font:print( 40,160,"5. "..bestscore5)
font:print( 40,180,"6. "..bestscore6)
font:print( 40,200,"7. "..bestscore7)
font:print( 40,220,"8. "..bestscore8)
font:print( 40,240,"9. "..bestscore9)
font:print( 30,260,"10. "..bestscore10)
font:print( 250,260,"Press START to reset scores")

if pad:start() then
reinitialiser()
end
	if pad:circle() then
		statut = "Menu"
	end
end

while 1 do

pad = Controls.readPeek()
System.draw()
screen:clear()
fondetoilee()
font:setStyle(1.0, Blanc , Color.new(0,0,0,0) , IntraFont.ALIGN_LEFT)
Mp3.play(true, 0)
	
	if statut == "Menu" then
		Menu()
	elseif statut == "Bestscore" then
		Bestscore()
	elseif statut == "Intro" then
		Intro()
	elseif statut == "Jeu" then
		Jeu()
	elseif statut == "Credits" then
		Credits()
	elseif statut == "Pause" then
		Pause()
	elseif statut == "Fini" then
		Fini()
end

oldpad = pad
screen.waitVblankStart()
System.endDraw()
screen.flip()
end