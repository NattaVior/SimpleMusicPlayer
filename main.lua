--========================================================--
--                 SIMPLE MUSIC PLAYER                   --
--              Roblox | Mobile Friendly                 --
--========================================================--

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

--========================================================--
--                       CONFIG                           --
--========================================================--

local CONFIG = {

	-- GANTI DAFTAR MUSIK DI SINI
	Playlist = {
    {Name = "Grey Tea", ID = "rbxassetid://1835376012"},
    {Name = "World Beat", ID = "rbxassetid://1835382467"},
    {Name = "Mentor", ID = "rbxassetid://1835452478"},
    {Name = "Runaway", ID = "rbxassetid://1835452602"},
    {Name = "Samba Trans", ID = "rbxassetid://1835463811"},
    {Name = "Killing Beat", ID = "rbxassetid://1835464017"},
    {Name = "Drummer", ID = "rbxassetid://1835471391"},
    {Name = "Beatbox March", ID = "rbxassetid://1835478286"},
    {Name = "Drum And Dub", ID = "rbxassetid://1835479224"},
    {Name = "Run Cornelius Run", ID = "rbxassetid://1835487052"},
    {Name = "In The House", ID = "rbxassetid://1835496167"},
    {Name = "Te Embala", ID = "rbxassetid://1835509766"},
    {Name = "Funky Gino", ID = "rbxassetid://1835533239"},
    {Name = "House Monday", ID = "rbxassetid://1835550867"},
    {Name = "Imprint", ID = "rbxassetid://1835587508"},
    {Name = "Tammatcha", ID = "rbxassetid://1835604170"},
    {Name = "Rules Of The Beat", ID = "rbxassetid://1835616432"},
    {Name = "Joy", ID = "rbxassetid://1835621144"},
    {Name = "Christmas Beat", ID = "rbxassetid://1835649137"},
    {Name = "Indian Summer", ID = "rbxassetid://1835655837"},
    {Name = "Mambo Twist", ID = "rbxassetid://1835660442"},
    {Name = "Party Gang", ID = "rbxassetid://1835660697"},
    {Name = "Game Station", ID = "rbxassetid://1835660919"},
    {Name = "Walk On The Bund Side", ID = "rbxassetid://1835681554"},
    {Name = "From The Roots", ID = "rbxassetid://1835681624"},
    {Name = "Storm Begins", ID = "rbxassetid://1835681687"},
    {Name = "The Secret Party", ID = "rbxassetid://1835703803"},
    {Name = "The Secret Party (Undescore)", ID = "rbxassetid://1835703849"},
    {Name = "Burning Asphalt", ID = "rbxassetid://1835704046"},
    {Name = "Fujiyama", ID = "rbxassetid://1835715292"},
    {Name = "Rodz Against The Machines", ID = "rbxassetid://1835720638"},
    {Name = "Red Night", ID = "rbxassetid://1835737376"},
    {Name = "Disco Tragedy", ID = "rbxassetid://1835761246"},
    {Name = "Dance Or Quit", ID = "rbxassetid://1835773949"},
    {Name = "Made In Love", ID = "rbxassetid://1835782211"},
    {Name = "Arizona", ID = "rbxassetid://1835782303"},
    {Name = "Made For The Summer", ID = "rbxassetid://1835798855"},
    {Name = "Raver Trip", ID = "rbxassetid://1835831958"},
    {Name = "Podcast", ID = "rbxassetid://1835857187"},
    {Name = "Political Science", ID = "rbxassetid://1835859001"},
    {Name = "Daily Review", ID = "rbxassetid://1835862281"},
    {Name = "Set Or Leave", ID = "rbxassetid://1835892653"},
    {Name = "Black Ice", ID = "rbxassetid://1835905667"},
    {Name = "Brazilian Western", ID = "rbxassetid://1835916440"},
    {Name = "Cradle", ID = "rbxassetid://1835968583"},
    {Name = "Little Basket", ID = "rbxassetid://1835968695"},
    {Name = "South Central Dance (Alt 2)", ID = "rbxassetid://1835976223"},
    {Name = "Epic Spy", ID = "rbxassetid://1835987015"},
    {Name = "Epic Spy (UV)", ID = "rbxassetid://1835987058"},
    {Name = "Strange Circus (UV)", ID = "rbxassetid://1835987171"},
    {Name = "Macumba Beat", ID = "rbxassetid://1835987258"},
    {Name = "Macumba Beat (UV)", ID = "rbxassetid://1835987281"},
    {Name = "Dark Beat", ID = "rbxassetid://1835987552"},
    {Name = "Dark Beat (UV)", ID = "rbxassetid://1835987577"},
    {Name = "Chase Drums (UV)", ID = "rbxassetid://1835987605"},
    {Name = "Velvet Soul", ID = "rbxassetid://1836000679"},
    {Name = "Urban Jungle Drive", ID = "rbxassetid://1836021107"},
    {Name = "NY Breakdance", ID = "rbxassetid://1836038642"},
    {Name = "House Of Fun", ID = "rbxassetid://1836042238"},
    {Name = "Business News Bed (Alt)", ID = "rbxassetid://1836073146"},
    {Name = "Cultural News Bed (Alt 2)", ID = "rbxassetid://1836073250"},
    {Name = "Determined News Bed", ID = "rbxassetid://1836073782"},
    {Name = "Determined News Bed (Alt 1)", ID = "rbxassetid://1836073809"},
    {Name = "Science News Bed (Alt 1)", ID = "rbxassetid://1836074223"},
    {Name = "Anthemic Brass And Beats (Alt 2)", ID = "rbxassetid://1836080412"},
    {Name = "Cajun Drums", ID = "rbxassetid://1836146409"},
    {Name = "Syncoped Drums", ID = "rbxassetid://1836146879"},
    {Name = "Golden Cymbals Drums (Alt)", ID = "rbxassetid://1836146880"},
    {Name = "Organic Drums", ID = "rbxassetid://1836147265"},
    {Name = "Buenos Aires Lounge", ID = "rbxassetid://1836150116"},
    {Name = "Rippling", ID = "rbxassetid://1836171720"},
    {Name = "Zaouia", ID = "rbxassetid://1836171729"},
    {Name = "Shudder", ID = "rbxassetid://1836172267"},
    {Name = "Night Insects Orchestra", ID = "rbxassetid://1836177533"},
    {Name = "The Piccadilly Love Bird", ID = "rbxassetid://1836200788"},
    {Name = "Symphony #4 Movement 4", ID = "rbxassetid://1836279834"},
    {Name = "Orpheus In The Underworld Overture", ID = "rbxassetid://1836281310"},
    {Name = "Lohengrin (Prelude Act 3)", ID = "rbxassetid://1836281538"},
    {Name = "Carmen: Prelude Act I", ID = "rbxassetid://1836282220"},
    {Name = "Ave Maria", ID = "rbxassetid://1836282597"},
    {Name = "Marche Militaire", ID = "rbxassetid://1836282663"},
    {Name = "Chopsticks", ID = "rbxassetid://1836285110"},
    {Name = "Ring O' Bells", ID = "rbxassetid://1836285178"},
    {Name = "Thrust And Parry", ID = "rbxassetid://1836289222"},
    {Name = "Harvest Festival", ID = "rbxassetid://1836292851"},
    {Name = "Beat Mania", ID = "rbxassetid://1836304043"},
    {Name = "Teledata", ID = "rbxassetid://1836322023"},
    {Name = "Loiret Cher 2", ID = "rbxassetid://1836337352"},
    {Name = "Breton Andro", ID = "rbxassetid://1836337677"},
    {Name = "Sedlescombe", ID = "rbxassetid://1836337712"},
    {Name = "Wall Street", ID = "rbxassetid://1836345869"},
    {Name = "Skippy", ID = "rbxassetid://1836361632"},
    {Name = "Two Timer", ID = "rbxassetid://1836377243"},
    {Name = "Pick Up On This 3", ID = "rbxassetid://1836382792"},
    {Name = "Blue Mambo", ID = "rbxassetid://1836403146"},
    {Name = "Sexus 1", ID = "rbxassetid://1836409141"},
    {Name = "Primrose", ID = "rbxassetid://1836417323"},
    {Name = "Andean Fiesta", ID = "rbxassetid://1836426579"},
    {Name = "Brasilia", ID = "rbxassetid://1836426904"},
    {Name = "Funk The Rap 1", ID = "rbxassetid://1836446609"},
    {Name = "Indonesia 1", ID = "rbxassetid://1836464103"},
    {Name = "Funko", ID = "rbxassetid://1836465445"},
    {Name = "Urban Cowboy 1", ID = "rbxassetid://1836465789"},
    {Name = "Le Weekend", ID = "rbxassetid://1836465827"},
    {Name = "Urban Cowboy 2", ID = "rbxassetid://1836465847"},
    {Name = "The Wreck Of The Old 97", ID = "rbxassetid://1836475698"},
    {Name = "Kitchen Sink Stomp", ID = "rbxassetid://1836488876"},
    {Name = "Beat The Rap 1", ID = "rbxassetid://1836496701"},
    {Name = "Core Business 1", ID = "rbxassetid://1836507813"},
    {Name = "Touthpuller Blues", ID = "rbxassetid://1836526887"},
    {Name = "Kei Te Wai Te Mauri 2", ID = "rbxassetid://1836533042"},
    {Name = "Angkor 1", ID = "rbxassetid://1836548457"},
    {Name = "Songs Of Dragons 1", ID = "rbxassetid://1836548512"},
    {Name = "Angkor 2", ID = "rbxassetid://1836548529"},
    {Name = "A Holy Man", ID = "rbxassetid://1836548633"},
    {Name = "Modern Thailand", ID = "rbxassetid://1836548763"},
    {Name = "Temple Dancer", ID = "rbxassetid://1836548809"},
    {Name = "Dance The Hot Heather", ID = "rbxassetid://1836549771"},
    {Name = "Ipaneman Dream", ID = "rbxassetid://1836580057"},
    {Name = "China 2000", ID = "rbxassetid://1836587087"},
    {Name = "Waltzing Matilda 7", ID = "rbxassetid://1836604291"},
    {Name = "Picard", ID = "rbxassetid://1836605395"},
    {Name = "Modern Miracle", ID = "rbxassetid://1836609168"},
    {Name = "Early Warning", ID = "rbxassetid://1836626294"},
    {Name = "2am Showdown", ID = "rbxassetid://1836639099"},
    {Name = "Future Groove", ID = "rbxassetid://1836639147"},
    {Name = "Tech-Elec", ID = "rbxassetid://1836639163"},
    {Name = "Beat-Trix", ID = "rbxassetid://1836639200"},
    {Name = "Burst Bubble", ID = "rbxassetid://1836639212"},
    {Name = "We Progress", ID = "rbxassetid://1836639238"},
    {Name = "Domino Effect", ID = "rbxassetid://1836639251"},
    {Name = "Sweet Beat", ID = "rbxassetid://1836651031"},
    {Name = "Prima Terra", ID = "rbxassetid://1836653440"},
    {Name = "Central Station", ID = "rbxassetid://1836653447"},
    {Name = "Savage Heat", ID = "rbxassetid://1836653507"},
    {Name = "Force Feeder", ID = "rbxassetid://1836653559"},
    {Name = "Sly Guy", ID = "rbxassetid://1836653591"},
    {Name = "Jingle Bells/Deck The Halls", ID = "rbxassetid://1836660461"},
    {Name = "It Girl", ID = "rbxassetid://1836677645"},
    {Name = "Desert Horizons", ID = "rbxassetid://1836685184"},
    {Name = "Tik Tak Toe", ID = "rbxassetid://1836691948"},
    {Name = "Maracana Beat", ID = "rbxassetid://1836692774"},
    {Name = "Built For This", ID = "rbxassetid://1836711419"},
    {Name = "Henan Province 1", ID = "rbxassetid://1836719226"},
    {Name = "Amber Fort", ID = "rbxassetid://1836745089"},
    {Name = "Shake And Step", ID = "rbxassetid://1836777015"},
    {Name = "Breakbeat Love", ID = "rbxassetid://1836812406"},
    {Name = "Horse Power", ID = "rbxassetid://1836818224"},
    {Name = "Make It On My Own", ID = "rbxassetid://1836848378"},
    {Name = "Save My Loving", ID = "rbxassetid://1836861263"},
    {Name = "Spiky Beats Ol", ID = "rbxassetid://1836886321"},
    {Name = "Zoid Ol", ID = "rbxassetid://1836886406"},
    {Name = "Day Off", ID = "rbxassetid://1836905230"},
    {Name = "Folk o' Clock", ID = "rbxassetid://1836905778"},
    {Name = "Welfare", ID = "rbxassetid://1836909078"},
    {Name = "Welfare", ID = "rbxassetid://1836909871"},
    {Name = "Welfare", ID = "rbxassetid://1836909897"},
    {Name = "Welfare", ID = "rbxassetid://1836909902"},
    {Name = "Sea Breezes", ID = "rbxassetid://1836938066"},
    {Name = "Lighthouse", ID = "rbxassetid://1836938307"},
    {Name = "Let Your Fingers Dance", ID = "rbxassetid://1836957400"},
    {Name = "Dream Chaser", ID = "rbxassetid://1836962795"},
    {Name = "Teething Problems", ID = "rbxassetid://1836975791"},
    {Name = "Tree Tops", ID = "rbxassetid://1836991603"},
    {Name = "Hunger Strikes", ID = "rbxassetid://1836994305"},
    {Name = "Viva Espana", ID = "rbxassetid://1836995909"},
    {Name = "Chinese Market", ID = "rbxassetid://1837005881"},
    {Name = "Bam", ID = "rbxassetid://1837006667"},
    {Name = "Dance, Dance, Dance", ID = "rbxassetid://1837039239"},
    {Name = "Simple Things - Drums Only", ID = "rbxassetid://1837102642"},
    {Name = "Heartfelt Universe 2 (Breakbeat edit)", ID = "rbxassetid://1837103801"},
    {Name = "Delta Humming", ID = "rbxassetid://1837110241"},
    {Name = "Delta Humming (Instrumental)", ID = "rbxassetid://1837110461"},
    {Name = "La Lune et la Nuit", ID = "rbxassetid://1837121122"},
    {Name = "Bamboo abacus", ID = "rbxassetid://1837127548"},
    {Name = "Children's Hope", ID = "rbxassetid://1837142025"},
    {Name = "Margas", ID = "rbxassetid://1837142268"},
    {Name = "Artha", ID = "rbxassetid://1837142314"},
    {Name = "Hare Krishna", ID = "rbxassetid://1837142483"},
    {Name = "Waters of the Ganges", ID = "rbxassetid://1837142887"},
    {Name = "Chaconne", ID = "rbxassetid://1837143079"},
    {Name = "Menestrels", ID = "rbxassetid://1837143392"},
    {Name = "La lecon d'Epinette", ID = "rbxassetid://1837143501"},
    {Name = "The Little Silkworm", ID = "rbxassetid://1837143791"},
    {Name = "Holi Carnival", ID = "rbxassetid://1837143874"},
    {Name = "Urban Dancer", ID = "rbxassetid://1837145596"},
    {Name = "Ashram School", ID = "rbxassetid://1837148802"},
    {Name = "Jakarta", ID = "rbxassetid://1837149025"},
    {Name = "Thi Cam", ID = "rbxassetid://1837149094"},
    {Name = "Weaving Mill", ID = "rbxassetid://1837149297"},
    {Name = "The Orient Circle", ID = "rbxassetid://1837153200"},
    {Name = "Batuan Temple", ID = "rbxassetid://1837154478"},
    {Name = "Pulau Pinang", ID = "rbxassetid://1837157454"},
    {Name = "Pineapples & Coconuts", ID = "rbxassetid://1837157487"},
    {Name = "Sipisopiso", ID = "rbxassetid://1837157562"},
    {Name = "Bukittinggi", ID = "rbxassetid://1837157584"},
    {Name = "Polwan", ID = "rbxassetid://1837157605"},
    {Name = "Bukit Lawang", ID = "rbxassetid://1837157651"},
    {Name = "Lontar Madura", ID = "rbxassetid://1837157701"},
    {Name = "Sampang", ID = "rbxassetid://1837157731"},
    {Name = "Friends Forever", ID = "rbxassetid://1837157761"},
    {Name = "Abstraction - 2nd movement", ID = "rbxassetid://1837165576"},
    {Name = "Running Free", ID = "rbxassetid://1837172706"},
    {Name = "Viet Tri", ID = "rbxassetid://1837179071"},
    {Name = "Kites", ID = "rbxassetid://1837179102"},
    {Name = "New Moon's Eve", ID = "rbxassetid://1837179135"},
    {Name = "Giang", ID = "rbxassetid://1837179161"},
    {Name = "Carib", ID = "rbxassetid://1837184539"},
    {Name = "Legacy", ID = "rbxassetid://1837190705"},
    {Name = "Armadillo", ID = "rbxassetid://1837191899"},
    {Name = "Malandro", ID = "rbxassetid://1837199446"},
    {Name = "Loulou's Song", ID = "rbxassetid://1837205941"},
    {Name = "Soi Dao Waterfall", ID = "rbxassetid://1837214052"},
    {Name = "Relaxing Hands", ID = "rbxassetid://1837214152"},
    {Name = "Trinket Shopping", ID = "rbxassetid://1837214449"},
    {Name = "Koilou", ID = "rbxassetid://1837215721"},
    {Name = "Loulou's Song (extended)", ID = "rbxassetid://1837216365"},
    {Name = "Consolacion", ID = "rbxassetid://1837219814"},
    {Name = "The Palm Grove", ID = "rbxassetid://1837242596"},
    {Name = "Barren Lands", ID = "rbxassetid://1837248630"},
    {Name = "Rich and Famous", ID = "rbxassetid://1837261075"},
    {Name = "High Hat Low Toms", ID = "rbxassetid://1837261089"},
    {Name = "Ready to Run", ID = "rbxassetid://1837268861"},
    {Name = "Rings and Things", ID = "rbxassetid://1837268897"},
    {Name = "Record Breakers", ID = "rbxassetid://1837295250"},
    {Name = "Body Beat 2", ID = "rbxassetid://1837301872"},
    {Name = "Take a Freight Train", ID = "rbxassetid://1837306498"},
    {Name = "Half-Pipe Contest", ID = "rbxassetid://1837306635"},
    {Name = "Tribal Origins", ID = "rbxassetid://1837309253"},
    {Name = "Too High To Die", ID = "rbxassetid://1837363547"},
    {Name = "Taipei Melo", ID = "rbxassetid://1837364420"},
    {Name = "Freakin Break", ID = "rbxassetid://1837371776"},
    {Name = "Crash that Thang", ID = "rbxassetid://1837377472"},
    {Name = "Menu", ID = "rbxassetid://1837385842"},
    {Name = "Stay Cautious", ID = "rbxassetid://1837402372"},
    {Name = "The Unmightiest", ID = "rbxassetid://1837441592"},
    {Name = "Minina Si Bu Dan N'ta Core Mo", ID = "rbxassetid://1837455794"},
    {Name = "Rythme Kabysoo 2", ID = "rbxassetid://1837456803"},
    {Name = "Otchendze", ID = "rbxassetid://1837457442"},
    {Name = "Onkila 3", ID = "rbxassetid://1837457569"},
    {Name = "Biraqsam", ID = "rbxassetid://1837459074"},
    {Name = "Dugah khusaini", ID = "rbxassetid://1837459129"},
    {Name = "Qosh tar", ID = "rbxassetid://1837459224"},
    {Name = "Chuli iraq", ID = "rbxassetid://1837459236"},
    {Name = "Dilhiroj", ID = "rbxassetid://1837459273"},
    {Name = "Zulf", ID = "rbxassetid://1837459318"},
    {Name = "Voice and sanza", ID = "rbxassetid://1837459893"},
    {Name = "Ghetto Love", ID = "rbxassetid://1837461738"},
    {Name = "Trapdoor", ID = "rbxassetid://1837466605"},
    {Name = "Symphony No. 1 - Titan", ID = "rbxassetid://1837476970"},
    {Name = "Radetzky March", ID = "rbxassetid://1837477388"},
    {Name = "Voices of Spring", ID = "rbxassetid://1837477614"},
    {Name = "Feuilles Du Matin", ID = "rbxassetid://1837477692"},
    {Name = "Jingle Bells", ID = "rbxassetid://1837489030"},
    {Name = "God Rest You Merry Gentlemen", ID = "rbxassetid://1837489105"},
    {Name = "Jingle Bells", ID = "rbxassetid://1837489152"},
    {Name = "Microgroove", ID = "rbxassetid://1837497820"},
    {Name = "Don Giovanni - Madamina Il Catalogo", ID = "rbxassetid://1837498844"},
    {Name = "With You (Insieme A Te)", ID = "rbxassetid://1837567338"},
    {Name = "Roll (Rullio)", ID = "rbxassetid://1837568058"},
    {Name = "Ideas (Idee)", ID = "rbxassetid://1837571530"},
    {Name = "Supporter", ID = "rbxassetid://1837577636"},
    {Name = "Jingling Lullaby (Ninnananna Dei Campanelli)", ID = "rbxassetid://1837577828"},
    {Name = "Himalaya", ID = "rbxassetid://1837580514"},
    {Name = "Digiheart", ID = "rbxassetid://1837581679"},
    {Name = "Animated Marionette", ID = "rbxassetid://1837587089"},
    {Name = "April", ID = "rbxassetid://1837599746"},
    {Name = "June", ID = "rbxassetid://1837599795"},
    {Name = "The Now Generation", ID = "rbxassetid://1837600505"},
    {Name = "Digiheart", ID = "rbxassetid://1837601446"},
    {Name = "Bulan Indonesia", ID = "rbxassetid://1837614270"},
    {Name = "The Bouncer", ID = "rbxassetid://1837618142"},
    {Name = "Funky Beat Ting", ID = "rbxassetid://1837618179"},
    {Name = "M-Nesia", ID = "rbxassetid://1837619385"},
    {Name = "X-Con", ID = "rbxassetid://1837619609"},
    {Name = "Deeper", ID = "rbxassetid://1837620696"},
    {Name = "Blue Trim", ID = "rbxassetid://1837625040"},
    {Name = "Fashion", ID = "rbxassetid://1837627190"},
    {Name = "De Jure", ID = "rbxassetid://1837627434"},
    {Name = "Sub-Urban", ID = "rbxassetid://1837631341"},
    {Name = "Highly Sprung", ID = "rbxassetid://1837636942"},
    {Name = "Sweet Freak", ID = "rbxassetid://1837637282"},
    {Name = "Dizzi", ID = "rbxassetid://1837637774"},
    {Name = "Safe", ID = "rbxassetid://1837639433"},
    {Name = "My Life", ID = "rbxassetid://1837646876"},
    {Name = "Watching Stars", ID = "rbxassetid://1837647318"},
    {Name = "Mi Life OL", ID = "rbxassetid://1837647415"},
    {Name = "Spybreak", ID = "rbxassetid://1837650487"},
    {Name = "Big Flava", ID = "rbxassetid://1837659548"},
    {Name = "Beat Seeka", ID = "rbxassetid://1837660052"},
    {Name = "Slammed Up", ID = "rbxassetid://1837660871"},
    {Name = "Bexstyle", ID = "rbxassetid://1837661490"},
    {Name = "Head Candy", ID = "rbxassetid://1837663845"},
    {Name = "Snaplite", ID = "rbxassetid://1837678209"},
    {Name = "Scramjet", ID = "rbxassetid://1837680240"},
    {Name = "Pressure Wave", ID = "rbxassetid://1837680249"},
    {Name = "Heavy Water", ID = "rbxassetid://1837680266"},
    {Name = "Deep Freeze", ID = "rbxassetid://1837680298"},
    {Name = "Mighty Machine", ID = "rbxassetid://1837680340"},
    {Name = "Dark Energy", ID = "rbxassetid://1837680348"},
    {Name = "Get Low", ID = "rbxassetid://1837680405"},
    {Name = "Electro Punk Pop", ID = "rbxassetid://1837688465"},
    {Name = "Beenie Bimmer", ID = "rbxassetid://1837689516"},
    {Name = "Touch Fuse", ID = "rbxassetid://1837694110"},
    {Name = "C'mon", ID = "rbxassetid://1837694140"},
    {Name = "Rotator", ID = "rbxassetid://1837694143"},
    {Name = "Compression", ID = "rbxassetid://1837694200"},
    {Name = "Take Control", ID = "rbxassetid://1837694224"},
    {Name = "Stand Up", ID = "rbxassetid://1837694250"},
    {Name = "Vapour Trail", ID = "rbxassetid://1837694273"},
    {Name = "Bouncy Block (b)", ID = "rbxassetid://1837715564"},
    {Name = "Fired Up (a)", ID = "rbxassetid://1837721656"},
    {Name = "Champion (b)", ID = "rbxassetid://1837796240"},
    {Name = "Jubilation", ID = "rbxassetid://1837873618"},
    {Name = "Festa - Percussion", ID = "rbxassetid://1837895101"},
    {Name = "Crow Hop - NoBellsShakers", ID = "rbxassetid://1837899777"},
    {Name = "Dark Breakbeat", ID = "rbxassetid://1837952768"},
    {Name = "Spring Break", ID = "rbxassetid://1837973897"},
    {Name = "Baila Para Mi", ID = "rbxassetid://1837974490"},
    {Name = "Baila Para Mi Underscore", ID = "rbxassetid://1837974494"},
    {Name = "Dali Mami", ID = "rbxassetid://1837976854"},
    {Name = "Devil's Tonic", ID = "rbxassetid://1837984577"},
    {Name = "Back In The 90's", ID = "rbxassetid://1837985219"},
    {Name = "Big In Basstown (b)", ID = "rbxassetid://1838027103"},
    {Name = "Punch Packing (a)", ID = "rbxassetid://1838027748"},
    {Name = "Punch Packing (b)", ID = "rbxassetid://1838027964"},
    {Name = "Kicks and Sneakers (a)", ID = "rbxassetid://1838033460"},
    {Name = "Kicks and Sneakers (b)", ID = "rbxassetid://1838033675"},
    {Name = "Kicks and Sneakers (c)", ID = "rbxassetid://1838033862"},
    {Name = "Clap Clap Punk Funk (c)", ID = "rbxassetid://1838037702"},
    {Name = "I Believe (c)", ID = "rbxassetid://1838044773"},
    {Name = "Hip Star Beach Bar (a)", ID = "rbxassetid://1838055433"},
    {Name = "Hip Star Beach Bar (b)", ID = "rbxassetid://1838055780"},
    {Name = "Breakbeat Square Eyes (a)", ID = "rbxassetid://1838059655"},
    {Name = "Breakbeat Square Eyes (b)", ID = "rbxassetid://1838060002"},
    {Name = "Armour Very Necessary (a)", ID = "rbxassetid://1838067310"},
    {Name = "Armour Very Necessary (c)", ID = "rbxassetid://1838067608"},
    {Name = "The Banana Bossa (c)", ID = "rbxassetid://1838073405"},
    {Name = "Damned If I Die (d)", ID = "rbxassetid://1838078202"},
    {Name = "The Flame", ID = "rbxassetid://1838095119"},
    {Name = "Oboe Concerto In D Minor - Part 1", ID = "rbxassetid://1838095573"},
    {Name = "Folies Parade", ID = "rbxassetid://1838096977"},
    {Name = "Picking Strings", ID = "rbxassetid://1838097306"},
    {Name = "Alpine Oompah", ID = "rbxassetid://1838111443"},
    {Name = "Marching There And Back", ID = "rbxassetid://1838117399"},
    {Name = "Well Tempered Clavier 13", ID = "rbxassetid://1838125272"},
    {Name = "Well Tempered Clavier 15", ID = "rbxassetid://1838125379"},
    {Name = "Thai Dance", ID = "rbxassetid://1838126066"},
    {Name = "Fractal Image", ID = "rbxassetid://1838130996"},
    {Name = "Greensleeves", ID = "rbxassetid://1838147004"},
    {Name = "Summer Breeze", ID = "rbxassetid://1838190264"},
    {Name = "Quanoon At Sunset 1", ID = "rbxassetid://1838196402"},
    {Name = "Phantom Fairground", ID = "rbxassetid://1838198942"},
    {Name = "Cities In Stone 1", ID = "rbxassetid://1838205135"},
    {Name = "Quanoon At Sunset 2", ID = "rbxassetid://1838205282"},
    {Name = "Cities In Stone 2", ID = "rbxassetid://1838205315"},
    {Name = "Entry Of The Gladiators", ID = "rbxassetid://1838211570"},
    {Name = "Gaiety Galop", ID = "rbxassetid://1838231863"},
    {Name = "Men of Tomorrow", ID = "rbxassetid://1838255450"},
    {Name = "Yawad", ID = "rbxassetid://1838260807"},
    {Name = "Phat Kutz", ID = "rbxassetid://1838264555"},
    {Name = "China Cityscape", ID = "rbxassetid://1838285445"},
    {Name = "View to the West", ID = "rbxassetid://1838285450"},
    {Name = "High Flyer", ID = "rbxassetid://1838351226"},
    {Name = "Gothic Epic", ID = "rbxassetid://1838369300"},
    {Name = "Final Reckoning", ID = "rbxassetid://1838371008"},
    {Name = "Invader", ID = "rbxassetid://1838372666"},
    {Name = "Conqueror", ID = "rbxassetid://1838396056"},
    {Name = "Moment To Moment", ID = "rbxassetid://1838396402"},
    {Name = "Natural Selection", ID = "rbxassetid://1838396411"},
    {Name = "Future Fusion", ID = "rbxassetid://1838397217"},
    {Name = "Temple Of Beats", ID = "rbxassetid://1838397220"},
    {Name = "First Break", ID = "rbxassetid://1838404593"},
    {Name = "Binary Vision", ID = "rbxassetid://1838450505"},
    {Name = "Rise Again", ID = "rbxassetid://1838450585"},
    {Name = "Just Do It", ID = "rbxassetid://1838450596"},
    {Name = "Last Of My Kind", ID = "rbxassetid://1838451515"},
    {Name = "Urban Renewal", ID = "rbxassetid://1838451946"},
    {Name = "Four Treasures", ID = "rbxassetid://1838455629"},
    {Name = "New Dawn", ID = "rbxassetid://1838458447"},
    {Name = "Mischievous Mac - Remastered", ID = "rbxassetid://1838485192"},
    {Name = "Fashionista Salon", ID = "rbxassetid://1838491276"},
    {Name = "Butterfly Chase", ID = "rbxassetid://1838492181"},
    {Name = "Bombay Sapphires", ID = "rbxassetid://1838494919"},
    {Name = "Ceremonial Review - Remastered", ID = "rbxassetid://1838506471"},
    {Name = "Steeple Chase", ID = "rbxassetid://1838509109"},
    {Name = "New Beginnings", ID = "rbxassetid://1838524797"},
    {Name = "Pep Talk - Remastered", ID = "rbxassetid://1838558543"},
    {Name = "Fanfare To Youth - Remastered", ID = "rbxassetid://1838570032"},
    {Name = "Rosewood Bamboo", ID = "rbxassetid://1838606572"},
    {Name = "Maloya Roots (Alt Vs)", ID = "rbxassetid://1838607899"},
    {Name = "Phantom Train - Remastered", ID = "rbxassetid://1838636437"},
    {Name = "Summer Break", ID = "rbxassetid://1838675974"},
    {Name = "Red Clay Pass", ID = "rbxassetid://1838690935"},
    {Name = "Bloodsucker", ID = "rbxassetid://1838698413"},
    {Name = "Everything You Need Fits in This Backpack", ID = "rbxassetid://1838698434"},
    {Name = "Grid Two", ID = "rbxassetid://1838698439"},
    {Name = "Silly Boy", ID = "rbxassetid://1838698477"},
    {Name = ".4.4", ID = "rbxassetid://1838698511"},
    {Name = "The Mechanic's Grip", ID = "rbxassetid://1838698554"},
    {Name = "Suffocate", ID = "rbxassetid://1838698558"},
    {Name = "Laws of the West", ID = "rbxassetid://1838698599"},
    {Name = "Little Sheriff--Alt. Mix", ID = "rbxassetid://1838699724"},
    {Name = "It's Going Down", ID = "rbxassetid://1838719255"},
    {Name = "Summer Break", ID = "rbxassetid://1838730323"},
    {Name = "Drum Heller--Underscore", ID = "rbxassetid://1838741366"},
    {Name = "Onward Upward--Underscore", ID = "rbxassetid://1838741450"},
    {Name = "The Blue Streak", ID = "rbxassetid://1838741781"},
    {Name = "What Makes a Breakbeat Live", ID = "rbxassetid://1838742859"},
    {Name = "Survivors", ID = "rbxassetid://1838758679"},
    {Name = "Sortie d'Ecole", ID = "rbxassetid://1838792530"},
    {Name = "Structures 12", ID = "rbxassetid://1838793639"},
    {Name = "Pigeon On A Powerline--ALT. 1", ID = "rbxassetid://1838795592"},
    {Name = "Suite Federico 3", ID = "rbxassetid://1838819345"},
    {Name = "Anticorps", ID = "rbxassetid://1838866900"},
    {Name = "Griot", ID = "rbxassetid://1838867304"},
    {Name = "Chaman", ID = "rbxassetid://1838867625"},
    {Name = "Anticorps Suite", ID = "rbxassetid://1838886928"},
    {Name = "Rio De Janeiro", ID = "rbxassetid://1838888383"},
    {Name = "American Road", ID = "rbxassetid://1838909132"},
    {Name = "Historia De Amor", ID = "rbxassetid://1838929110"},
    {Name = "Investigate Your Mind", ID = "rbxassetid://1838978407"},
    {Name = "Vigilance", ID = "rbxassetid://1838978482"},
    {Name = "Urban Strings", ID = "rbxassetid://1838989085"},
    {Name = "Under Darkness", ID = "rbxassetid://1838989384"},
    {Name = "Rapman", ID = "rbxassetid://1838995224"},
    {Name = "Drama Urban", ID = "rbxassetid://1839001487"},
    {Name = "Surveillance Drama", ID = "rbxassetid://1839001597"},
    {Name = "New Scat", ID = "rbxassetid://1839002277"},
    {Name = "Cross Beat", ID = "rbxassetid://1839007582"},
    {Name = "Holy Soul", ID = "rbxassetid://1839021119"},
    {Name = "Balkans", ID = "rbxassetid://1839037890"},
    {Name = "City Groove", ID = "rbxassetid://1839058679"},
    {Name = "Hyper Funk", ID = "rbxassetid://1839118770"},
    {Name = "Torrid Mambo", ID = "rbxassetid://1839283080"},
    {Name = "Torrid Mambo", ID = "rbxassetid://1839283888"},
    {Name = "Funk Club", ID = "rbxassetid://1839353494"},
    {Name = "Direct Beat", ID = "rbxassetid://1839421534"},
    {Name = "Smash It", ID = "rbxassetid://1839444078"},
    {Name = "Vamos Todos A Bailar", ID = "rbxassetid://1839554470"},
    {Name = "Electro Cuts", ID = "rbxassetid://1839640545"},
    {Name = "Listen To Me", ID = "rbxassetid://1839640603"},
    {Name = "So Groovy", ID = "rbxassetid://1839686732"},
    {Name = "Go Dancing", ID = "rbxassetid://1839687153"},
    {Name = "I Wanna Jump", ID = "rbxassetid://1839714362"},
    {Name = "Crushing", ID = "rbxassetid://1839714389"},
    {Name = "Urban Life", ID = "rbxassetid://1839714394"},
    {Name = "Club Fever", ID = "rbxassetid://1839745910"},
    {Name = "Consequence", ID = "rbxassetid://1839757733"},
    {Name = "Stressful Countdown", ID = "rbxassetid://1839757886"},
    {Name = "Lab", ID = "rbxassetid://1839758062"},
    {Name = "Trap", ID = "rbxassetid://1839772913"},
    {Name = "Junior", ID = "rbxassetid://1839834941"},
    {Name = "Funk Foundation", ID = "rbxassetid://1839850769"},
    {Name = "The Get Go", ID = "rbxassetid://1839868537"},
    {Name = "School's Out", ID = "rbxassetid://1839871412"},
    {Name = "Aegean Islands", ID = "rbxassetid://1839872418"},
    {Name = "Song of the East", ID = "rbxassetid://1839873251"},
    {Name = "Arrival of the Queen of Sheba from Solomon", ID = "rbxassetid://1839900476"},
    {Name = "Like a Boss (c)", ID = "rbxassetid://1840041016"},
    {Name = "Rolling with the Punches (b)", ID = "rbxassetid://1840050365"},
    {Name = "Temptation (c)", ID = "rbxassetid://1840054018"},
    {Name = "Beat Freak", ID = "rbxassetid://1840084776"},
    {Name = "Cadenitas", ID = "rbxassetid://1840141561"},
    {Name = "Disco Glitz (A)", ID = "rbxassetid://1840150561"},
    {Name = "Disco Glitz (B)", ID = "rbxassetid://1840150585"},
    {Name = "Unchanging Ways", ID = "rbxassetid://1840156880"},
    {Name = "A Postscript To Tragedy (B)", ID = "rbxassetid://1840156959"},
    {Name = "Stars And Stripes Forever", ID = "rbxassetid://1840172945"},
    {Name = "Swing Beat", ID = "rbxassetid://1840181195"},
    {Name = "Festival In Kirov", ID = "rbxassetid://1840183317"},
    {Name = "Dance Beat", ID = "rbxassetid://1840231963"},
    {Name = "Beat This", ID = "rbxassetid://1840260687"},
    {Name = "Liberty Bell", ID = "rbxassetid://1840269622"},
    {Name = "Palace Of The Winds (A)", ID = "rbxassetid://1840276564"},
    {Name = "Fashsion Fitness", ID = "rbxassetid://1840285670"},
    {Name = "Rich And Famous", ID = "rbxassetid://1840311233"},
    {Name = "Beat Boy", ID = "rbxassetid://1840320937"},
    {Name = "Sunshine", ID = "rbxassetid://1840346084"},
    {Name = "Street Smart (A)", ID = "rbxassetid://1840408962"},
    {Name = "Here Comes The Band! (B)", ID = "rbxassetid://1840443153"},
    {Name = "Underwater Life", ID = "rbxassetid://1840447016"},
    {Name = "Londonderry Air (a)", ID = "rbxassetid://1840465122"},
    {Name = "Indestructible", ID = "rbxassetid://1840530491"},
    {Name = "Peach Blossom Spring", ID = "rbxassetid://1840540291"},
    {Name = "Morning Of The Farm", ID = "rbxassetid://1840540642"},
    {Name = "Shadows Dancing", ID = "rbxassetid://1840540694"},
    {Name = "Phazed", ID = "rbxassetid://1840559988"},
    {Name = "Dance With Me", ID = "rbxassetid://1840648004"},
    {Name = "Fresco", ID = "rbxassetid://1840654594"},
    {Name = "Final Curtain", ID = "rbxassetid://1840664124"},
    {Name = "Dirty Speed", ID = "rbxassetid://1840676378"},
    {Name = "Filtered Phat", ID = "rbxassetid://1840685842"},
    {Name = "Break The Beats", ID = "rbxassetid://1840697565"},
    {Name = "Step It Up", ID = "rbxassetid://1840725629"},
    {Name = "Grooving Up", ID = "rbxassetid://1840735550"},
    {Name = "Alive", ID = "rbxassetid://1840750696"},
    {Name = "Battledrome (A)", ID = "rbxassetid://1840751399"},
    {Name = "As We Enter", ID = "rbxassetid://1840754288"},
    {Name = "Apples In Winter", ID = "rbxassetid://1840799971"},
    {Name = "Christmas Eve Reel", ID = "rbxassetid://1840800050"},
    {Name = "Brazilico", ID = "rbxassetid://1840824992"},
    {Name = "Naria", ID = "rbxassetid://1840830276"},
    {Name = "Rifleman Firerman (A)", ID = "rbxassetid://1840839681"},
    {Name = "Energique Beats (A)", ID = "rbxassetid://1840879169"},
    {Name = "Sport Jam", ID = "rbxassetid://1840895137"},
    {Name = "Break For Bass", ID = "rbxassetid://1840896274"},
    {Name = "Positive Beats (a)", ID = "rbxassetid://1840923356"},
    {Name = "Turn It Up", ID = "rbxassetid://1840929996"},
    {Name = "Target Lock", ID = "rbxassetid://1840940593"},
    {Name = "Unbreakable", ID = "rbxassetid://1840974870"},
    {Name = "Stuck On Me", ID = "rbxassetid://1840975073"},
    {Name = "No Siente (b)", ID = "rbxassetid://1841011088"},
    {Name = "Hell Breaks Loose", ID = "rbxassetid://1841071662"},
    {Name = "Killer Punch", ID = "rbxassetid://1841071827"},
    {Name = "Design For Light", ID = "rbxassetid://1841083681"},
    {Name = "Sugarcane", ID = "rbxassetid://1841096770"},
    {Name = "Lean Back", ID = "rbxassetid://1841134426"},
    {Name = "Renegade", ID = "rbxassetid://1841162671"},
    {Name = "Dub Fire", ID = "rbxassetid://1841224280"},
    {Name = "Eyes Wide", ID = "rbxassetid://1841235877"},
    {Name = "Skincrawler (a)", ID = "rbxassetid://1841235878"},
    {Name = "Cash Flow (a)", ID = "rbxassetid://1841235942"},
    {Name = "Big Scary Monster", ID = "rbxassetid://1841236028"},
    {Name = "Cash Flow (b)", ID = "rbxassetid://1841236050"},
    {Name = "Verbal Abuse (b)", ID = "rbxassetid://1841236162"},
    {Name = "Verbal Abuse (b)", ID = "rbxassetid://1841236167"},
    {Name = "Sayo", ID = "rbxassetid://1841236231"},
    {Name = "Dirty Roller", ID = "rbxassetid://1841236296"},
    {Name = "Crankshaft", ID = "rbxassetid://1841236316"},
    {Name = "Backboom", ID = "rbxassetid://1841236376"},
    {Name = "Dyslexique", ID = "rbxassetid://1841236408"},
    {Name = "Forget Yourself", ID = "rbxassetid://1841236482"},
    {Name = "Stalactite VIP", ID = "rbxassetid://1841236530"},
    {Name = "Jinx", ID = "rbxassetid://1841265211"},
    {Name = "Once Upon a Crime (b)", ID = "rbxassetid://1841316378"},
    {Name = "Positive Vibrations a", ID = "rbxassetid://1841364157"},
    {Name = "Sky of Gold b", ID = "rbxassetid://1841365311"},
    {Name = "Power and Grace c", ID = "rbxassetid://1841365574"},
    {Name = "Positive Vibrations b", ID = "rbxassetid://1841365807"},
    {Name = "Change Your World b", ID = "rbxassetid://1841366078"},
    {Name = "Plan A", ID = "rbxassetid://1841370040"},
    {Name = "System Down", ID = "rbxassetid://1841370231"},
    {Name = "Creeping Up", ID = "rbxassetid://1841370482"},
    {Name = "Dance of the Cossack a", ID = "rbxassetid://1841428726"},
    {Name = "Easy Tiger", ID = "rbxassetid://1841437759"},
    {Name = "Adrenalized a", ID = "rbxassetid://1841488297"},
    {Name = "Adrenalized b", ID = "rbxassetid://1841489236"},
    {Name = "Ballroom Beat Bonanza", ID = "rbxassetid://1841495327"},
    {Name = "Positronic a", ID = "rbxassetid://1841526656"},
    {Name = "Wings of an Angel b", ID = "rbxassetid://1841527916"},
    {Name = "Onyx b", ID = "rbxassetid://1841528105"},
    {Name = "Garden of Fountains c", ID = "rbxassetid://1841550866"},
    {Name = "Got the Moves a", ID = "rbxassetid://1841612765"},
    {Name = "Got the Moves b", ID = "rbxassetid://1841614322"},
    {Name = "Super Stylophoning a", ID = "rbxassetid://1841617742"},
    {Name = "Super Stylophoning b", ID = "rbxassetid://1841619698"},
    {Name = "Super Stylophoning c", ID = "rbxassetid://1841619762"},
    {Name = "Alarm Bells c", ID = "rbxassetid://1841709889"},
    {Name = "Dancing Jigs", ID = "rbxassetid://1841936179"},
    {Name = "Clap Happy (c)", ID = "rbxassetid://1841938672"},
    {Name = "Magic Workshop (c)", ID = "rbxassetid://1842007272"},
    {Name = "Guilty Pleasure (a)", ID = "rbxassetid://1842099799"},
    {Name = "The Icing on the Cake (a)", ID = "rbxassetid://1842100045"},
    {Name = "The Icing on the Cake (c)", ID = "rbxassetid://1842100491"},
    {Name = "Morning Nirvana (f)", ID = "rbxassetid://1842134050"},
    {Name = "Gimme What You Got (c)", ID = "rbxassetid://1842138276"},
    {Name = "For unto Us a Child Is Born (a)", ID = "rbxassetid://1842160384"},
    {Name = "\"Lift Up Your Heads, O Ye Gates (a)\"", ID = "rbxassetid://1842160682"},
    {Name = "Let Us Break Their Bonds Asunder (a)", ID = "rbxassetid://1842160787"},
    {Name = "Hallelujah (a)", ID = "rbxassetid://1842160849"},
    {Name = "Worthy Is the Lamb (a)", ID = "rbxassetid://1842160940"},
    {Name = "Fast 'n' Furious", ID = "rbxassetid://1842179803"},
    {Name = "Way Out West (a)", ID = "rbxassetid://1842188764"},
    {Name = "Way Out West (c)", ID = "rbxassetid://1842188802"},
    {Name = "Play to the Crowd (c)", ID = "rbxassetid://1842194186"},
    {Name = "The Hip Shaker", ID = "rbxassetid://1842197451"},
    {Name = "Dream Girl", ID = "rbxassetid://1842205146"},
    {Name = "Country People", ID = "rbxassetid://1842209686"},
    {Name = "Chaconne for the King", ID = "rbxassetid://1842216188"},
    {Name = "Arabian Belly Dance", ID = "rbxassetid://1842223523"},
    {Name = "Song of the Everlasting Vine", ID = "rbxassetid://1842223611"},
    {Name = "Bamboo Tree", ID = "rbxassetid://1842223697"},
    {Name = "Appointment Bond Street", ID = "rbxassetid://1842226110"},
    {Name = "Flapjack", ID = "rbxassetid://1842246013"},
    {Name = "I Was Climbing This Hill", ID = "rbxassetid://1842271228"},
    {Name = "Take It Steady", ID = "rbxassetid://1842271489"},
    {Name = "Thrilling Spectacle", ID = "rbxassetid://1842271581"},
    {Name = "Raga Buhpali", ID = "rbxassetid://1842275595"},
    {Name = "Simple Samba", ID = "rbxassetid://1842285319"},
    {Name = "Pick of The Day", ID = "rbxassetid://1842316485"},
    {Name = "La Russe/David Knick-Knack", ID = "rbxassetid://1842324044"},
    {Name = "Struttin' with Mr. Kazoo and Dr. Harp", ID = "rbxassetid://1842358317"},
    {Name = "Breaking Free", ID = "rbxassetid://1842361271"},
    {Name = "The Lancers", ID = "rbxassetid://1842367557"},
    {Name = "Toytown March", ID = "rbxassetid://1842370270"},
    {Name = "Gemini", ID = "rbxassetid://1842370949"},
    {Name = "Rocket 88 Boogie", ID = "rbxassetid://1842403090"},
    {Name = "Animal Capers", ID = "rbxassetid://1842406831"},
    {Name = "Tarantella Di Mandoline", ID = "rbxassetid://1842407688"},
    {Name = "Rocking in Morocco", ID = "rbxassetid://1842408014"},
    {Name = "Sugar Beat", ID = "rbxassetid://1842408631"},
    {Name = "Winter Olympics", ID = "rbxassetid://1842408904"},
    {Name = "In Love with Life", ID = "rbxassetid://1842410096"},
    {Name = "Dicey", ID = "rbxassetid://1842415519"},
    {Name = "Mini-March", ID = "rbxassetid://1842417151"},
    {Name = "The Tattoo", ID = "rbxassetid://1842419686"},
    {Name = "Disc a go go", ID = "rbxassetid://1842423514"},
    {Name = "Party Toad (d)", ID = "rbxassetid://1842424353"},
    {Name = "All Points West", ID = "rbxassetid://1842435888"},
    {Name = "Unchanging Traditions (A)", ID = "rbxassetid://1842473548"},
    {Name = "Song Of Springtime", ID = "rbxassetid://1842473623"},
    {Name = "Khulti Kahaani", ID = "rbxassetid://1842478113"},
    {Name = "Slow Smoke River", ID = "rbxassetid://1842484190"},
    {Name = "Senggot (A)", ID = "rbxassetid://1842484771"},
    {Name = "Bhumi Ingkang Elok (B)", ID = "rbxassetid://1842484773"},
    {Name = "Senggot (B)", ID = "rbxassetid://1842484812"},
    {Name = "Gunungsari (A)", ID = "rbxassetid://1842484885"},
    {Name = "Tirta Amerta (A)", ID = "rbxassetid://1842484945"},
    {Name = "Gunungsari (B)", ID = "rbxassetid://1842485004"},
    {Name = "Sorban Palid", ID = "rbxassetid://1842485043"},
    {Name = "Panyileukn (A)", ID = "rbxassetid://1842485096"},
    {Name = "Karaharjan", ID = "rbxassetid://1842485138"},
    {Name = "Mupu Kembang (A)", ID = "rbxassetid://1842485142"},
    {Name = "Ardi Tanpa Wates", ID = "rbxassetid://1842485266"},
    {Name = "Jalan Satapak (A)", ID = "rbxassetid://1842485286"},
    {Name = "Gesang Tanpa Pikajengan", ID = "rbxassetid://1842485359"},
    {Name = "Landangan Pajajaran", ID = "rbxassetid://1842485398"},
    {Name = "Sang Puteri Kekalih", ID = "rbxassetid://1842485415"},
    {Name = "Timeless Vistas", ID = "rbxassetid://1842485546"},
    {Name = "Story From A Life", ID = "rbxassetid://1842485609"},
    {Name = "Tranquil Reflection (A)", ID = "rbxassetid://1842485673"},
    {Name = "Tranquil Reflection (B)", ID = "rbxassetid://1842485676"},
    {Name = "Hope For Tomorrow (B)", ID = "rbxassetid://1842485700"},
    {Name = "Hope For Tomorrow (A)", ID = "rbxassetid://1842485712"},
    {Name = "Road To Tomorrow", ID = "rbxassetid://1842485738"},
    {Name = "Hope In The Future (A)", ID = "rbxassetid://1842485750"},
    {Name = "Land Of Uncertainty", ID = "rbxassetid://1842485778"},
    {Name = "Hope In The Future (B)", ID = "rbxassetid://1842485779"},
    {Name = "The Darker Side (A)", ID = "rbxassetid://1842485800"},
    {Name = "The Darker Side (B)", ID = "rbxassetid://1842485834"},
    {Name = "Time Of Plenty", ID = "rbxassetid://1842485886"},
    {Name = "Restless Journey", ID = "rbxassetid://1842485892"},
    {Name = "The Bearer Of Night (A)", ID = "rbxassetid://1842485949"},
    {Name = "The Bearer Of Night (B)", ID = "rbxassetid://1842485964"},
    {Name = "Breath Of The Gods (A)", ID = "rbxassetid://1842485984"},
    {Name = "Breath Of The Gods (B)", ID = "rbxassetid://1842486028"},
    {Name = "The Lost Horizons (B)", ID = "rbxassetid://1842486178"},
    {Name = "Golden Sunrise (A)", ID = "rbxassetid://1842486224"},
    {Name = "Golden Sunrise (B)", ID = "rbxassetid://1842486264"},
    {Name = "Graceful Flight", ID = "rbxassetid://1842486286"},
    {Name = "Sedudo Sunrise", ID = "rbxassetid://1842486350"},
    {Name = "Ring Of Fire", ID = "rbxassetid://1842486355"},
    {Name = "Terimah Kasih", ID = "rbxassetid://1842486411"},
    {Name = "Bromo Buddha", ID = "rbxassetid://1842486443"},
    {Name = "Hassenda", ID = "rbxassetid://1842486462"},
    {Name = "Island Of Charm", ID = "rbxassetid://1842486510"},
    {Name = "Cantik", ID = "rbxassetid://1842486550"},
    {Name = "Lombok Mystery", ID = "rbxassetid://1842486565"},
    {Name = "Land Of The Tiger", ID = "rbxassetid://1842486609"},
    {Name = "Golden Prophecy", ID = "rbxassetid://1842486661"},
    {Name = "Sailendra", ID = "rbxassetid://1842486700"},
    {Name = "Lord Of The Mountain", ID = "rbxassetid://1842486765"},
    {Name = "Ancient Rites", ID = "rbxassetid://1842486812"},
    {Name = "Seat Of The Gods", ID = "rbxassetid://1842486856"},
    {Name = "Indah", ID = "rbxassetid://1842486874"},
    {Name = "Pi Ti Dtengngan", ID = "rbxassetid://1842487662"},
    {Name = "Contrast And Colour (b)", ID = "rbxassetid://1842487943"},
    {Name = "Yesterday Revisited (b)", ID = "rbxassetid://1842488394"},
    {Name = "Khamen Phai Ruea (a)", ID = "rbxassetid://1842492718"},
    {Name = "Rabamthep", ID = "rbxassetid://1842493050"},
    {Name = "Birds in the Forest", ID = "rbxassetid://1842493365"},
    {Name = "Tales of Old (b)", ID = "rbxassetid://1842498675"},
    {Name = "Souma Bon Uta (a)", ID = "rbxassetid://1842505107"},
    {Name = "Kawachi Ondo (a)", ID = "rbxassetid://1842505282"},
    {Name = "Sansa Shigure (a)", ID = "rbxassetid://1842505301"},
    {Name = "Souma Bon Uta (b)", ID = "rbxassetid://1842505353"},
    {Name = "Konpira Fune Fune (a)", ID = "rbxassetid://1842505864"},
    {Name = "Sansa Shigure (b)", ID = "rbxassetid://1842505965"},
    {Name = "Sansa Shigure (c)", ID = "rbxassetid://1842505987"},
    {Name = "Kawachi Ondo (b)", ID = "rbxassetid://1842506051"},
    {Name = "Kawachi Ondo (c)", ID = "rbxassetid://1842506077"},
    {Name = "Etchu Owara Bushi (b)", ID = "rbxassetid://1842506100"},
    {Name = "Changbu Taryeong (a)", ID = "rbxassetid://1842510433"},
    {Name = "Baetnorae (a)", ID = "rbxassetid://1842510493"},
    {Name = "Ehera Diya (a)", ID = "rbxassetid://1842510636"},
    {Name = "Aegukga - Traditional (a)", ID = "rbxassetid://1842510750"},
    {Name = "Arirang (b)", ID = "rbxassetid://1842510816"},
    {Name = "Arirang (c)", ID = "rbxassetid://1842510821"},
    {Name = "Changbu Taryeong (b)", ID = "rbxassetid://1842510873"},
    {Name = "Changbu Taryeong (c)", ID = "rbxassetid://1842510889"},
    {Name = "Gunbam Taryeong (c)", ID = "rbxassetid://1842510934"},
    {Name = "Baetnorae (c)", ID = "rbxassetid://1842511024"},
    {Name = "Ehera Diya (c)", ID = "rbxassetid://1842511414"},
    {Name = "To Yonder Mountain", ID = "rbxassetid://1842518381"},
    {Name = "Across the Golden River", ID = "rbxassetid://1842521118"},
    {Name = "Losar", ID = "rbxassetid://1842521201"},
    {Name = "Dive In", ID = "rbxassetid://1842577756"},
    {Name = "Sweet And Soured - Underscore", ID = "rbxassetid://1842599531"},
    {Name = "Socialite", ID = "rbxassetid://1842632894"},
    {Name = "The Ivory", ID = "rbxassetid://1842655692"},
    {Name = "Mountain Breaks", ID = "rbxassetid://1842700976"},
    {Name = "It's Christmas", ID = "rbxassetid://1842713739"},
    {Name = "Dirty Breaks", ID = "rbxassetid://1842792677"},
    {Name = "City Breaks", ID = "rbxassetid://1842794310"},
    {Name = "Temples Of Lombok", ID = "rbxassetid://1842822766"},
    {Name = "Gridiron (Alternate Version)", ID = "rbxassetid://1842888635"},
    {Name = "Gametime (Drums Only Version)", ID = "rbxassetid://1842889840"},
    {Name = "Fire (Drums Only)", ID = "rbxassetid://1842892204"},
    {Name = "Bullet Train (Drums Only)", ID = "rbxassetid://1842892340"},
    {Name = "Broken Toes (Drums Only)", ID = "rbxassetid://1842892477"},
    {Name = "Turf Stomp", ID = "rbxassetid://1842892605"},
    {Name = "Turf Stomp (Bed Version)", ID = "rbxassetid://1842892634"},
    {Name = "A Regretful Rider (Drums Only Version)", ID = "rbxassetid://1842894059"},
    {Name = "Crooklyn (Drums Only Version)", ID = "rbxassetid://1842894381"},
    {Name = "King Of The Streets (Drums Only Version)", ID = "rbxassetid://1842894685"},
    {Name = "Deals In The Dark", ID = "rbxassetid://1842895076"},
    {Name = "Deals In The Dark (Drums Only)", ID = "rbxassetid://1842895143"},
    {Name = "We Triumph Together (Drums Only)", ID = "rbxassetid://1842895216"},
    {Name = "The Draw (Drums Only)", ID = "rbxassetid://1842895249"},
    {Name = "The Other Side Of The Beat (Drums Only Version)", ID = "rbxassetid://1842895603"},
    {Name = "Smokey Vibes (Drums Only Version)", ID = "rbxassetid://1842895704"},
    {Name = "ADE", ID = "rbxassetid://1842899014"},
    {Name = "Rock With Me (Drums Only Version)", ID = "rbxassetid://1842905173"},
    {Name = "Liquid Love (Drums Only Version)", ID = "rbxassetid://1842905413"},
    {Name = "East Side Jump (Bed Version)", ID = "rbxassetid://1842905601"},
    {Name = "East Side Jump (Drums Only Version)", ID = "rbxassetid://1842905605"},
    {Name = "Back In The Game (Drums Only Version)", ID = "rbxassetid://1842924372"},
    {Name = "Super Fast (Drums Only Version)", ID = "rbxassetid://1842928398"},
    {Name = "Deep In The Streets (Drums Only Version)", ID = "rbxassetid://1842938916"},
    {Name = "Dirty Money (Drums Only Version)", ID = "rbxassetid://1842939095"},
    {Name = "Undercover Brother (Drums Only Version)", ID = "rbxassetid://1842939687"},
    {Name = "Kingdom (Drums Only)", ID = "rbxassetid://1842943421"},
    {Name = "Dallas Dash (Drums Only Version)", ID = "rbxassetid://1842944700"},
    {Name = "To The Top (Percussion Only Version)", ID = "rbxassetid://1842980030"},
    {Name = "All For One", ID = "rbxassetid://1842981290"},
    {Name = "All For One (Stadium Version)", ID = "rbxassetid://1842981330"},
    {Name = "Sticks and Skins", ID = "rbxassetid://1842981546"},
    {Name = "All Star Athletes", ID = "rbxassetid://1842981681"},
    {Name = "Yardliner", ID = "rbxassetid://1842981960"},
    {Name = "Yardliner (Stadium Version)", ID = "rbxassetid://1842981979"},
    {Name = "Z98 (Drums and Percussion)", ID = "rbxassetid://1843010845"},
    {Name = "Saccio na bella canzone A", ID = "rbxassetid://1843052257"},
    {Name = "Cister", ID = "rbxassetid://1843052390"},
    {Name = "The Sound", ID = "rbxassetid://1843055897"},
    {Name = "Pizzica Normanna A", ID = "rbxassetid://1843093451"},
    {Name = "Village Fun", ID = "rbxassetid://1843199412"},
    {Name = "Piril Ay Yildiz Lala", ID = "rbxassetid://1843225049"},
    {Name = "Twinkle Star And Moon", ID = "rbxassetid://1843225127"},
    {Name = "Forbidden Love", ID = "rbxassetid://1843229380"},
    {Name = "Zillere Gel", ID = "rbxassetid://1843244142"},
    {Name = "Village Fayre", ID = "rbxassetid://1843245457"},
    {Name = "Mama Turks are Coming", ID = "rbxassetid://1843249104"},
    {Name = "Shake Right Left", ID = "rbxassetid://1843249389"},
    {Name = "Walk With Your Shadow", ID = "rbxassetid://1843249393"},
    {Name = "And now", ID = "rbxassetid://1843269518"},
    {Name = "Dust", ID = "rbxassetid://1843269532"},
    {Name = "Melo", ID = "rbxassetid://1843269570"},
    {Name = "Hidden", ID = "rbxassetid://1843269573"},
    {Name = "Hold on", ID = "rbxassetid://1843269599"},
    {Name = "Rockin", ID = "rbxassetid://1843269687"},
    {Name = "Spring play", ID = "rbxassetid://1843269722"},
    {Name = "Formula", ID = "rbxassetid://1843269758"},
    {Name = "Darkmess", ID = "rbxassetid://1843269870"},
    {Name = "Colt", ID = "rbxassetid://1843269936"},
    {Name = "Flam & dub", ID = "rbxassetid://1843269955"},
    {Name = "Zanzibar", ID = "rbxassetid://1843270016"},
    {Name = "Black suede shoes", ID = "rbxassetid://1843270026"},
    {Name = "Akim", ID = "rbxassetid://1843270078"},
    {Name = "Angel", ID = "rbxassetid://1843270110"},
    {Name = "Jet 7", ID = "rbxassetid://1843270183"},
    {Name = "Gamelan ceremony", ID = "rbxassetid://1843273717"},
    {Name = "Valse du Tyrol", ID = "rbxassetid://1843277187"},
    {Name = "Juicy sandwich", ID = "rbxassetid://1843278269"},
    {Name = "Serane Sorrow", ID = "rbxassetid://1843280404"},
    {Name = "Break and chill", ID = "rbxassetid://1843281354"},
    {Name = "Here comes the night", ID = "rbxassetid://1843282975"},
    {Name = "Cross that line", ID = "rbxassetid://1843283007"},
    {Name = "Break the Box", ID = "rbxassetid://1843287956"},
    {Name = "Dans La Foret D'Okino", ID = "rbxassetid://1843303590"},
    {Name = "Le Chat Et La Souris", ID = "rbxassetid://1843303974"},
    {Name = "Ling Dao", ID = "rbxassetid://1843304145"},
    {Name = "Ombres Chinoises", ID = "rbxassetid://1843304502"},
    {Name = "Eve", ID = "rbxassetid://1843306710"},
    {Name = "Ladybug", ID = "rbxassetid://1843312587"},
    {Name = "Banjo Street Jam", ID = "rbxassetid://1843318680"},
    {Name = "Tic Tac", ID = "rbxassetid://1843350540"},
    {Name = "Jewel Box", ID = "rbxassetid://1843372855"},
    {Name = "Yugao", ID = "rbxassetid://1843395672"},
    {Name = "Le Poisson Couché sur la Vague & le Petit Pâtre", ID = "rbxassetid://1843396591"},
    {Name = "Trois Soutras", ID = "rbxassetid://1843396670"},
    {Name = "Huit Dragons", ID = "rbxassetid://1843396720"},
    {Name = "Emirdagi", ID = "rbxassetid://1843398957"},
    {Name = "Açis", ID = "rbxassetid://1843399063"},
    {Name = "Bozlak Açis", ID = "rbxassetid://1843399078"},
    {Name = "Dede Makami", ID = "rbxassetid://1843399113"},
    {Name = "Baglamam Var Boyali", ID = "rbxassetid://1843399117"},
    {Name = "Semah de Ourfa", ID = "rbxassetid://1843399254"},
    {Name = "Gurbet Havasi", ID = "rbxassetid://1843399280"},
    {Name = "Mêhriben", ID = "rbxassetid://1843399319"},
    {Name = "Indonesia - Borneo Shamanic Healing Ritual", ID = "rbxassetid://1843400756"},
    {Name = "Azeitona Galeguinha", ID = "rbxassetid://1843403013"},
    {Name = "Abana Casaquinha Abana", ID = "rbxassetid://1843404154"},
    {Name = "Jinka D'Yemanjà 1", ID = "rbxassetid://1843406801"},
    {Name = "Tabuh Manuk Anguci", ID = "rbxassetid://1843407004"},
    {Name = "Nandir", ID = "rbxassetid://1843407103"},
    {Name = "Jauk Masal", ID = "rbxassetid://1843407114"},
    {Name = "Baris Melampahan", ID = "rbxassetid://1843407243"},
    {Name = "Legong Kraton", ID = "rbxassetid://1843407787"},
    {Name = "Tableau 1 - Prologue Au Ciel", ID = "rbxassetid://1843408271"},
    {Name = "Tableau 2 - Les Retrouvailles", ID = "rbxassetid://1843408383"},
    {Name = "Tableau 3 - Fiançailles Au Lac De l'Ouest", ID = "rbxassetid://1843408453"},
    {Name = "Tableau 4 - Arracher Le Talisman", ID = "rbxassetid://1843408548"},
    {Name = "Tableau 5 - Le Vin Jaune", ID = "rbxassetid://1843408640"},
    {Name = "Tableau 6 - Le Vol De L'amadouvier", ID = "rbxassetid://1843408719"},
    {Name = "Tableau 7 - Ensorcellement", ID = "rbxassetid://1843408841"},
    {Name = "Eloge De l'AltaÏ Et Du KhangaÏ", ID = "rbxassetid://1843410088"},
    {Name = "Amoretta", ID = "rbxassetid://1843415891"},
    {Name = "Black Vanilla", ID = "rbxassetid://1843429155"},
    {Name = "Blockbuster", ID = "rbxassetid://1843429336"},
    {Name = "Chantez dansez", ID = "rbxassetid://1843443899"},
    {Name = "King", ID = "rbxassetid://1843455360"},
    {Name = "Sweet Spot", ID = "rbxassetid://1843457994"},
    {Name = "Soca House", ID = "rbxassetid://1843478893"},
    {Name = "Seconds To Go", ID = "rbxassetid://1843503381"},
    {Name = "Going Down In Flames - Underscore", ID = "rbxassetid://1843504099"},
    {Name = "Going Down In Flames", ID = "rbxassetid://1843504899"},
    {Name = "Seconds To Go - Underscore", ID = "rbxassetid://1843517532"},
    {Name = "Darkness Awaits", ID = "rbxassetid://1843518817"},
    {Name = "Darkness Awaits - Underscore", ID = "rbxassetid://1843518825"},
    {Name = "Razor Sharp", ID = "rbxassetid://1843518880"},
    {Name = "Fall In Line", ID = "rbxassetid://1843546887"},
    {Name = "Pushing On", ID = "rbxassetid://1843547002"},
    {Name = "Beyond Limitations", ID = "rbxassetid://1843547133"},
    {Name = "Make The Call", ID = "rbxassetid://1843547194"},
    {Name = "Make The Call - Underscore", ID = "rbxassetid://1843547236"},
    {Name = "Victory On The Horizon - Underscore", ID = "rbxassetid://1843570503"},
    {Name = "Victory On The Horizon", ID = "rbxassetid://1843570523"},
    {Name = "Rural Trails (Ambient Guitars Fiddle Violin & Banj", ID = "rbxassetid://1843576195"},
    {Name = "Into The Stratosphere", ID = "rbxassetid://1843633969"},
    {Name = "Into The Stratosphere - Underscore", ID = "rbxassetid://1843634037"},
    {Name = "Breakthrough (b)", ID = "rbxassetid://1844010679"},
    {Name = "Salvador (b)", ID = "rbxassetid://1844043443"},
    {Name = "Salvador (a)", ID = "rbxassetid://1844061224"},
    {Name = "Bounce", ID = "rbxassetid://1844139293"},
    {Name = "Cool Hands (c)", ID = "rbxassetid://1844181442"},
    {Name = "Mr Lucky (c)", ID = "rbxassetid://1844181515"},
    {Name = "The Heist (c)", ID = "rbxassetid://1844239389"},
    {Name = "Shooting The Breeze (c)", ID = "rbxassetid://1844249136"},
    {Name = "Masterstroke (c)", ID = "rbxassetid://1844258046"},
    {Name = "Swanlake - Waltz", ID = "rbxassetid://1844279027"},
    {Name = "Radetzky March", ID = "rbxassetid://1844280451"},
    {Name = "\"Italian Capriccio, Op 45\"", ID = "rbxassetid://1844282371"},
    {Name = "\"Suite No.2 Air, tempo giusto\"", ID = "rbxassetid://1844288564"},
    {Name = "Midsummer Night's Dream-Overture", ID = "rbxassetid://1844291820"},
    {Name = "On The Steppes Of Central Asia", ID = "rbxassetid://1844292182"},
    {Name = "\"Symphonie Fantastique, op 14\"", ID = "rbxassetid://1844295654"},
    {Name = "\"Symphonie Fantastique, op 14\"", ID = "rbxassetid://1844295747"},
    {Name = "Traveling Trees", ID = "rbxassetid://1844319991"},
    {Name = "Nabucco Coro Di Schiavi Obrei: Va-Pensiero", ID = "rbxassetid://1844333613"},
    {Name = "Kinda Hip Hop", ID = "rbxassetid://1844388402"},
    {Name = "My House", ID = "rbxassetid://1844396994"},
    {Name = "Hollahi", ID = "rbxassetid://1844461951"},
    {Name = "La Sega", ID = "rbxassetid://1844537685"},
    {Name = "Blinky", ID = "rbxassetid://1844537794"},
    {Name = "Shuffle On", ID = "rbxassetid://1844540472"},
    {Name = "Party On The Mosquito Hill", ID = "rbxassetid://1844543930"},
    {Name = "Hip & Hop", ID = "rbxassetid://1844560604"},
    {Name = "Bullet Proof", ID = "rbxassetid://1844560675"},
    {Name = "Santaro Jomamaro", ID = "rbxassetid://1844573179"},
    {Name = "Man With A Knapsack", ID = "rbxassetid://1844573259"},
    {Name = "Jingle Bells/Christbaum/Du Frohlich", ID = "rbxassetid://1844585173"},
    {Name = "Nova Express Cafe", ID = "rbxassetid://1844604786"},
    {Name = "Fx-Room", ID = "rbxassetid://1844604833"},
    {Name = "Maritime Mambo", ID = "rbxassetid://1844692482"},
    {Name = "Industry", ID = "rbxassetid://1844716978"},
    {Name = "To Selva", ID = "rbxassetid://1844757842"},
    {Name = "Lucky", ID = "rbxassetid://1844783511"},
    {Name = "First Novell", ID = "rbxassetid://1844795234"},
    {Name = "Caucasian Express", ID = "rbxassetid://1844799313"},
    {Name = "The Moscow Lady", ID = "rbxassetid://1844921682"},
    {Name = "Es War Einmal", ID = "rbxassetid://1844960594"},
    {Name = "Minimal Swing", ID = "rbxassetid://1844973474"},
    {Name = "Baltic Harmonica Folk", ID = "rbxassetid://1845010273"},
    {Name = "Tarantella Duo", ID = "rbxassetid://1845025947"},
    {Name = "Slovakian Bagpipe Duo", ID = "rbxassetid://1845028659"},
    {Name = "Tsymbali Folk Dance", ID = "rbxassetid://1845032038"},
    {Name = "Ukrainian Bagpipe Ballad", ID = "rbxassetid://1845032122"},
    {Name = "Drums On Phasing (7)", ID = "rbxassetid://1845065985"},
    {Name = "Chocolate Chip V.2", ID = "rbxassetid://1845070858"},
    {Name = "Deep", ID = "rbxassetid://1845092133"},
    {Name = "Batter Ram", ID = "rbxassetid://1845102892"},
    {Name = "The Christmas Card", ID = "rbxassetid://1845178016"},
    {Name = "Santa's On His Way", ID = "rbxassetid://1845179020"},
    {Name = "Village Day", ID = "rbxassetid://1845197284"},
    {Name = "Gummo", ID = "rbxassetid://1845283824"},
    {Name = "March Of Liberty", ID = "rbxassetid://1845335288"},
    {Name = "Nomad", ID = "rbxassetid://1845363560"},
    {Name = "Nomad", ID = "rbxassetid://1845363566"},
    {Name = "Land Of Liberty", ID = "rbxassetid://1845419667"},
    {Name = "Springtime", ID = "rbxassetid://1845428249"},
    {Name = "Gridiron Parade", ID = "rbxassetid://1845451471"},
    {Name = "Big Top March", ID = "rbxassetid://1845452065"},
    {Name = "Man On The Go", ID = "rbxassetid://1845470870"},
    {Name = "Showcase", ID = "rbxassetid://1845471577"},
    {Name = "Day Trip Jaunt", ID = "rbxassetid://1845474194"},
    {Name = "Get You", ID = "rbxassetid://1845487450"},
    {Name = "Jujuletwa", ID = "rbxassetid://1845492561"},
    {Name = "Khulu Breaks", ID = "rbxassetid://1845506882"},
    {Name = "Pakati", ID = "rbxassetid://1845536374"},
    {Name = "Tambourine Time", ID = "rbxassetid://1845552784"},
    {Name = "Heya Lele", ID = "rbxassetid://1845553762"},
    {Name = "Augustina's New Groove", ID = "rbxassetid://1845568557"},
    {Name = "Downtown Chillin'", ID = "rbxassetid://1845569052"},
    {Name = "Gut Gelaunt", ID = "rbxassetid://1845726781"},
    {Name = "Festliche Klänge", ID = "rbxassetid://1845736681"},
    {Name = "New Venture", ID = "rbxassetid://1845738730"},
    {Name = "Costa Borada", ID = "rbxassetid://1845755689"},
    {Name = "Is This Love?", ID = "rbxassetid://1845764230"},
    {Name = "Star Rider", ID = "rbxassetid://1845764804"},
    {Name = "Zeichen Für S.b.", ID = "rbxassetid://1845769400"},
    {Name = "Flucht Im Gewölbe (1988)", ID = "rbxassetid://1845769908"},
    {Name = "Pasarea Maiastra - For Clarinet", ID = "rbxassetid://1845772519"},
    {Name = "Le Quasi Infini", ID = "rbxassetid://1845792316"},
    {Name = "Town Hall Bells", ID = "rbxassetid://1845854173"},
    {Name = "Plum Blossoms", ID = "rbxassetid://1845854732"},
    {Name = "Faint Moonlight", ID = "rbxassetid://1845854743"},
    {Name = "Midare", ID = "rbxassetid://1845854954"},
    {Name = "Pastourelle Ma Bien-aimee", ID = "rbxassetid://1845858648"},
    {Name = "Joyous Songs And Dances", ID = "rbxassetid://1845862412"},
    {Name = "Pearl Curtain In The Moon", ID = "rbxassetid://1845862506"},
    {Name = "Kadrilli", ID = "rbxassetid://1845867055"},
    {Name = "Capoeira A", ID = "rbxassetid://1845870556"},
    {Name = "Zurna Mood", ID = "rbxassetid://1845872537"},
    {Name = "Fruits Of Ankara E", ID = "rbxassetid://1845872796"},
    {Name = "Bahia A", ID = "rbxassetid://1845873688"},
    {Name = "Bohemian Mountainside", ID = "rbxassetid://1845879297"},
    {Name = "Galop", ID = "rbxassetid://1845879397"},
    {Name = "Fujara Variations", ID = "rbxassetid://1845879874"},
    {Name = "At The Raciborz Marketplace", ID = "rbxassetid://1845880285"},
    {Name = "Morning In The Village", ID = "rbxassetid://1845880768"},
    {Name = "Minho Verde A", ID = "rbxassetid://1845881600"},
    {Name = "Bubuka", ID = "rbxassetid://1845883976"},
    {Name = "Cinta Kuring", ID = "rbxassetid://1845884073"},
    {Name = "Pasisian", ID = "rbxassetid://1845884375"},
    {Name = "Sami Sigalong", ID = "rbxassetid://1845887852"},
    {Name = "Barong Dance", ID = "rbxassetid://1845893513"},
    {Name = "Legong Dance", ID = "rbxassetid://1845893548"},
    {Name = "Cremation Ceremony", ID = "rbxassetid://1845893590"},
    {Name = "Bagus Song", ID = "rbxassetid://1845893598"},
    {Name = "Temple Of Besakih", ID = "rbxassetid://1845893629"},
    {Name = "Astuti Beauty", ID = "rbxassetid://1845893649"},
    {Name = "New Bali Wave", ID = "rbxassetid://1845893660"},
    {Name = "Agung Choir", ID = "rbxassetid://1845893700"},
    {Name = "Four Seasons", ID = "rbxassetid://1845893744"},
    {Name = "Wind Of Spring", ID = "rbxassetid://1845893774"},
    {Name = "Samul Nori", ID = "rbxassetid://1845893814"},
    {Name = "Tiger Dance", ID = "rbxassetid://1845893820"},
    {Name = "Yum Bull", ID = "rbxassetid://1845893851"},
    {Name = "Elegy", ID = "rbxassetid://1845893877"},
    {Name = "Pa Bal Ma", ID = "rbxassetid://1845893900"},
    {Name = "Set Dance 2 B", ID = "rbxassetid://1845895725"},
    {Name = "Gita Kusuma", ID = "rbxassetid://1845901554"},
    {Name = "Sekar Sungsang", ID = "rbxassetid://1845901636"},
    {Name = "Los Dos Bolillos", ID = "rbxassetid://1845912546"},
    {Name = "Fantasy Of Waves", ID = "rbxassetid://1845916643"},
    {Name = "Frog Dance", ID = "rbxassetid://1845919249"},
    {Name = "Warrior's Dance", ID = "rbxassetid://1845919297"},
    {Name = "Bebaturan", ID = "rbxassetid://1845919304"},
    {Name = "Tabuh Paguneman", ID = "rbxassetid://1845919347"},
    {Name = "Joged Bumbung", ID = "rbxassetid://1845919402"},
    {Name = "Angklung", ID = "rbxassetid://1845919415"},
    {Name = "Werda Lumaku", ID = "rbxassetid://1845919453"},
    {Name = "Megha Suara", ID = "rbxassetid://1845919502"},
    {Name = "Duda", ID = "rbxassetid://1845919511"},
    {Name = "Sorban Palid", ID = "rbxassetid://1845919579"},
    {Name = "Pembukaan Arja", ID = "rbxassetid://1845919593"},
    {Name = "Prawan", ID = "rbxassetid://1845919647"},
    {Name = "Ogoh Ogoh", ID = "rbxassetid://1845919702"},
    {Name = "Tabuh Jiwa Merta", ID = "rbxassetid://1845919705"},
    {Name = "Bandung", ID = "rbxassetid://1845919739"},
    {Name = "Dam Ma", ID = "rbxassetid://1845920681"},
    {Name = "Amarez Zaman", ID = "rbxassetid://1845926237"},
    {Name = "Tiny Gummy A", ID = "rbxassetid://1845927487"},
    {Name = "Langma A", ID = "rbxassetid://1845928049"},
    {Name = "Buddhist Journey", ID = "rbxassetid://1845928644"},
    {Name = "Tibetan Ceremony", ID = "rbxassetid://1845929659"},
    {Name = "Thavil Solo", ID = "rbxassetid://1845941684"},
    {Name = "Aathukku A", ID = "rbxassetid://1845955584"},
    {Name = "Chennai City", ID = "rbxassetid://1845956582"},
    {Name = "The Bedouin C", ID = "rbxassetid://1845964109"},
    {Name = "Ladat Nainwa Lad Gaye D", ID = "rbxassetid://1845980978"},
    {Name = "Farandole", ID = "rbxassetid://1846056436"},
    {Name = "Crosses On Chests", ID = "rbxassetid://1846060314"},
    {Name = "Housewarming", ID = "rbxassetid://1846062860"},
    {Name = "Ingrata (italy Ca.1470)", ID = "rbxassetid://1846124118"},
    {Name = "Woodstock", ID = "rbxassetid://1846140851"},
    {Name = "Kids Groove", ID = "rbxassetid://1846174777"},
    {Name = "Beat The Rivals A", ID = "rbxassetid://1846204043"},
    {Name = "Groovex", ID = "rbxassetid://1846206805"},
    {Name = "Endurance", ID = "rbxassetid://1846206826"},
    {Name = "Entymology", ID = "rbxassetid://1846220625"},
    {Name = "Hathead Theme A", ID = "rbxassetid://1846254949"},
    {Name = "Hip Hop Boogie", ID = "rbxassetid://1846265739"},
    {Name = "Rebirth Of The Groove", ID = "rbxassetid://1846265757"},
    {Name = "Old Suitcase", ID = "rbxassetid://1846265898"},
    {Name = "Once Again", ID = "rbxassetid://1846266038"},
    {Name = "Jazz Mix", ID = "rbxassetid://1846266201"},
    {Name = "Funky Stuff", ID = "rbxassetid://1846266264"},
    {Name = "Artistry In March 2", ID = "rbxassetid://1846266425"},
    {Name = "Trip Hopper A", ID = "rbxassetid://1846273071"},
    {Name = "Tek-know-how A", ID = "rbxassetid://1846275907"},
    {Name = "Mambop", ID = "rbxassetid://1846287283"},
    {Name = "Xlokk A", ID = "rbxassetid://1846314549"},
    {Name = "Mostly The Charleston A", ID = "rbxassetid://1846395329"},
    {Name = "Dax A", ID = "rbxassetid://1846432629"},
    {Name = "The Entertainer", ID = "rbxassetid://1846443494"},
    {Name = "Smash Beat", ID = "rbxassetid://1846496522"},
    {Name = "Tatavliano", ID = "rbxassetid://1846507089"},
    {Name = "Madhuvanthi", ID = "rbxassetid://1846507113"},
    {Name = "Victory And Emotions A", ID = "rbxassetid://1846509060"},
    {Name = "Itchie And Scratchie", ID = "rbxassetid://1846541008"},
    {Name = "Kick The Stars B", ID = "rbxassetid://1846561488"},
    {Name = "Squeeze Cheese A", ID = "rbxassetid://1846628382"},
    {Name = "This Is Fun", ID = "rbxassetid://1846649685"},
    {Name = "New Connections (A)", ID = "rbxassetid://1846692595"},
    {Name = "Tight Spaced B", ID = "rbxassetid://1846703339"},
    {Name = "Sunshine Groove", ID = "rbxassetid://1846717388"},
    {Name = "Future Lounge A", ID = "rbxassetid://1846721043"},
    {Name = "Proficiency", ID = "rbxassetid://1846752735"},
    {Name = "Fiesta Latina", ID = "rbxassetid://1846761933"},
    {Name = "Breaks And Stops", ID = "rbxassetid://1846762404"},
    {Name = "Celtic March", ID = "rbxassetid://1846762426"},
    {Name = "Indian Experience", ID = "rbxassetid://1846762457"},
    {Name = "Drum Battle", ID = "rbxassetid://1846762845"},
    {Name = "Focus On Cool A", ID = "rbxassetid://1846772378"},
    {Name = "Operator A", ID = "rbxassetid://1846803492"},
    {Name = "Kicking Beats A", ID = "rbxassetid://1846868915"},
    {Name = "Block Party A", ID = "rbxassetid://1846892151"},
    {Name = "Block Party", ID = "rbxassetid://1846892352"},
    {Name = "Short Circuit", ID = "rbxassetid://1846912629"},
    {Name = "Our Little Ones A", ID = "rbxassetid://1846917424"},
    {Name = "Sesame Kids", ID = "rbxassetid://1846917572"},
    {Name = "Drive Me Nuts (a)", ID = "rbxassetid://1846924511"},
    {Name = "Simple And Useful A", ID = "rbxassetid://1846992373"},
    {Name = "My Little Darling", ID = "rbxassetid://1847030277"},
    {Name = "B And Bee Groove", ID = "rbxassetid://1847036863"},
    {Name = "Flipside A", ID = "rbxassetid://1847070560"},
    {Name = "Latin Drive A", ID = "rbxassetid://1847072189"},
    {Name = "Lambada Fever A", ID = "rbxassetid://1847072358"},
    {Name = "GRANDE FANTAISIE de DON JUAN (Mozart)", ID = "rbxassetid://1847089866"},
    {Name = "REMINISCENCES des PURITAINS-Grand Fant.", ID = "rbxassetid://1847089938"},
    {Name = "Grande Symphony Funebre Et Triomphale Op.15", ID = "rbxassetid://1847099658"},
    {Name = "Carnival-Concert Overture OP.92", ID = "rbxassetid://1847100201"},
    {Name = "Sinfonie No.1 In G-min.''winter Dreams''", ID = "rbxassetid://1847101899"},
    {Name = "Sinfonie No.2 In B-Moll Op.5-Finale.Allegro", ID = "rbxassetid://1847102187"},
    {Name = "Peer Gynt Suite No. 2 Op. 55", ID = "rbxassetid://1847102956"},
    {Name = "The Hebrides-Concert Overture Op.26", ID = "rbxassetid://1847104115"},
    {Name = "Symphony No.4 in G-Maj.", ID = "rbxassetid://1847104225"},
    {Name = "CONCERTO for Piano No. 1 op.23", ID = "rbxassetid://1847105684"},
    {Name = "Symphony No.9 ''from The New World'' Op.95", ID = "rbxassetid://1847106143"},
    {Name = "Symphony No.9 ''from The New World'' Op.95", ID = "rbxassetid://1847106273"},
    {Name = "Carnival-Overture Op.92", ID = "rbxassetid://1847106298"},
    {Name = "Suite No.1d-min.op.43", ID = "rbxassetid://1847106462"},
    {Name = "Suite No.1d-min.op.43", ID = "rbxassetid://1847106544"},
    {Name = "Suite No.2 C-maj.op.53 Characteristique", ID = "rbxassetid://1847106616"},
    {Name = "Suite No.2 C-maj.op.53 Characteristique", ID = "rbxassetid://1847106665"},
    {Name = "Suite No.2 C-maj.op.53 Characteristique", ID = "rbxassetid://1847106715"},
    {Name = "Suite For Orch.no.3 G-maj.op.55", ID = "rbxassetid://1847106843"},
    {Name = "SONATA No. 2 D-Maj. K. 7-Allegro molto", ID = "rbxassetid://1847107857"},
    {Name = "SONATA No. 2 D-Maj. K. 7-Adagio", ID = "rbxassetid://1847107903"},
    {Name = "SONATA No. 2 D-Maj. K. 7-Menuetto", ID = "rbxassetid://1847107919"},
    {Name = "SONATA No. 4 G-Maj. K. 9-Andante", ID = "rbxassetid://1847107953"},
    {Name = "SONATA No. 4 G-Maj. K. 9-Menuetto", ID = "rbxassetid://1847108008"},
    {Name = "SONATA No.16 Bb-Maj. K.31-Allegro", ID = "rbxassetid://1847108223"},
    {Name = "SONATA No.16 Bb-Maj. K.31-Tempo Menuetto.Moderato", ID = "rbxassetid://1847108251"},
    {Name = "Festive Symphony In E-major Op.6", ID = "rbxassetid://1847118817"},
    {Name = "Carnival-Concert Overture OP.92", ID = "rbxassetid://1847120493"},
    {Name = "Symphony No.5 In F-Maj. Op.76", ID = "rbxassetid://1847133860"},
    {Name = "Sonata For Harpsichord In F-minor K.019", ID = "rbxassetid://1847145192"},
    {Name = "Sonata For Harpsichord In D-major K.278", ID = "rbxassetid://1847145278"},
    {Name = "Sonata For Harpsichord In B-major K.244", ID = "rbxassetid://1847145366"},
    {Name = "Sonata For Harpsichord In G-major K.063", ID = "rbxassetid://1847145521"},
    {Name = "Sonata For Harpsichord In G-minor K.426", ID = "rbxassetid://1847145554"},
    {Name = "Sonata For Harpsichord In C-major K.406", ID = "rbxassetid://1847145573"},
    {Name = "Sonata For Harpsichord In C-minor K.011", ID = "rbxassetid://1847145637"},
    {Name = "Introduction & Variations Op.38", ID = "rbxassetid://1847149366"},
    {Name = "Quartet In D-Minor-Vivace", ID = "rbxassetid://1847150945"},
    {Name = "Troi Polkas Des Salon Op.7-polka In F Min.", ID = "rbxassetid://1847164853"},
    {Name = "Troi Polkas Des Salon Op.7-polka In F Sharp Maj.", ID = "rbxassetid://1847164867"},
    {Name = "Treasury Of Melodies-preludium. Lento", ID = "rbxassetid://1847165399"},
    {Name = "Treasury Of Melodies-capriccio. Vivace", ID = "rbxassetid://1847165474"},
    {Name = "Nature, Life And Love - Carnival, Op.92", ID = "rbxassetid://1847169098"},
    {Name = "Roadhouse B", ID = "rbxassetid://1847174943"},
    {Name = "The Kid In Me OL", ID = "rbxassetid://1847180496"},
    {Name = "Electrochase", ID = "rbxassetid://1847244833"},
    {Name = "Bright And Early A", ID = "rbxassetid://1847249606"},
    {Name = "Radiotronic A", ID = "rbxassetid://1847249970"},
    {Name = "Summer Breaks A", ID = "rbxassetid://1847250113"},
    {Name = "Jungle On The Move B", ID = "rbxassetid://1847285170"},
    {Name = "Fighting Drums Of Zim A", ID = "rbxassetid://1847288273"},
    {Name = "Electro Tap A", ID = "rbxassetid://1847292238"},
    {Name = "Kgaledi Sunrise", ID = "rbxassetid://1847295409"},
    {Name = "Industrial Energy A", ID = "rbxassetid://1847321323"},
    {Name = "Allegro From Concerto 2 B", ID = "rbxassetid://1847338350"},
    {Name = "Allegro From Concerto 4 B", ID = "rbxassetid://1847339086"},
    {Name = "Afroclub A", ID = "rbxassetid://1847368192"},
    {Name = "Bounce Around A", ID = "rbxassetid://1847372371"},
    {Name = "Funky Wes D", ID = "rbxassetid://1847382832"},
    {Name = "New Team Spirit", ID = "rbxassetid://1847440895"},
    {Name = "Day Club Swing Remix C", ID = "rbxassetid://1847482010"},
    {Name = "Crimetime A", ID = "rbxassetid://1847499093"},
    {Name = "Bustling City A", ID = "rbxassetid://1847499278"},
    {Name = "Laidback A", ID = "rbxassetid://1847499420"},
    {Name = "Double Beat A", ID = "rbxassetid://1847499588"},
    {Name = "Full Of Suspense D", ID = "rbxassetid://1847547592"},
    {Name = "March To Adventure A", ID = "rbxassetid://1847563928"},
    {Name = "Slimline A", ID = "rbxassetid://1847568569"},
    {Name = "Hip Teens A", ID = "rbxassetid://1847583192"},
    {Name = "Hip Teens C", ID = "rbxassetid://1847583246"},
    {Name = "House Made", ID = "rbxassetid://1847590172"},
    {Name = "Lick Smack", ID = "rbxassetid://1847590254"},
    {Name = "Down The Line E", ID = "rbxassetid://1847610229"},
    {Name = "Color My Life A", ID = "rbxassetid://1847630443"},
    {Name = "Walking Through My Garden A", ID = "rbxassetid://1847642375"},
    {Name = "Fashion Choice C", ID = "rbxassetid://1847646657"},
    {Name = "Shameless Nameless A", ID = "rbxassetid://1847734106"},
    {Name = "Electron Funk Machine A", ID = "rbxassetid://1847734284"},
    {Name = "Funky Atoms B", ID = "rbxassetid://1847734507"},
    {Name = "Retro Chase", ID = "rbxassetid://1847736790"},
    {Name = "Mental Probe B", ID = "rbxassetid://1847738659"},
    {Name = "Tekiosso A", ID = "rbxassetid://1847785772"},
    {Name = "Street Beat A", ID = "rbxassetid://1847808118"},
    {Name = "Speedy Runners A", ID = "rbxassetid://1847863506"},
    {Name = "Cool Drums A", ID = "rbxassetid://1847863727"},
    {Name = "Symphony #4 - Finale", ID = "rbxassetid://1848045523"},
    {Name = "Four Seasons - Winter", ID = "rbxassetid://1848048712"},
    {Name = "Adagio For Glass Harmonica Kv 617a", ID = "rbxassetid://1848049082"},
    {Name = "Peer Gynt Suite No.2 Op.55 @ Arabian Dance", ID = "rbxassetid://1848071886"},
    {Name = "Trolls Everywhere A", ID = "rbxassetid://1848184469"},
    {Name = "In The Middle Of The Winternight", ID = "rbxassetid://1848266866"},
    {Name = "Blue Beat", ID = "rbxassetid://1848269548"},
    {Name = "Street Jungle (C)", ID = "rbxassetid://1848337114"},
    {Name = "Ginseng", ID = "rbxassetid://1848360580"},
    {Name = "The Life Machine (a)", ID = "rbxassetid://1848365565"},
    {Name = "Creepy Cronies", ID = "rbxassetid://9038114010"},
    {Name = "Crib Rich", ID = "rbxassetid://9038226498"},
    {Name = "The Other Side of the Rainbow", ID = "rbxassetid://9038244687"},
    {Name = "Pagoda in the Rain", ID = "rbxassetid://9038245085"},
    {Name = "Trapymambo (Underscore)", ID = "rbxassetid://9038249556"},
    {Name = "Sweetsong Of China", ID = "rbxassetid://9038291272"},
    {Name = "Pipas Duet", ID = "rbxassetid://9038291591"},
    {Name = "Thousand Lanterns", ID = "rbxassetid://9038291760"},
    {Name = "Shamisen Rock", ID = "rbxassetid://9038291937"},
    {Name = "Forever and Always (a)", ID = "rbxassetid://9038304399"},
    {Name = "Spring Break Lockdown  No Melodies", ID = "rbxassetid://9038355760"},
    {Name = "Spring Break Lockdown  No Vox", ID = "rbxassetid://9038355783"},
    {Name = "Spring Break Lockdown", ID = "rbxassetid://9038355786"},
    {Name = "Summers On The Run Drums", ID = "rbxassetid://9038359021"},
    {Name = "Eyes Are Windows Into The Soul Drums", ID = "rbxassetid://9038360943"},
    {Name = "Enchanted Chill Out  Drums", ID = "rbxassetid://9038363195"},
    {Name = "Dance To This Beat No Vox", ID = "rbxassetid://9038365092"},
    {Name = "The Serpent - Remastered", ID = "rbxassetid://9038403534"},
    {Name = "Effortless Move", ID = "rbxassetid://9038437566"},
    {Name = "All About The Money (Underscore Version)", ID = "rbxassetid://9038620447"},
    {Name = "Quick Beat", ID = "rbxassetid://9038865072"},
    {Name = "More Action", ID = "rbxassetid://9038866717"},
    {Name = "Cartoon Helpers", ID = "rbxassetid://9038870478"},
    {Name = "Fly High C", ID = "rbxassetid://9038912813"},
    {Name = "Fly High E", ID = "rbxassetid://9038913040"},
    {Name = "The Very First One", ID = "rbxassetid://9039286992"},
    {Name = "Bouncing Brass B", ID = "rbxassetid://9039347017"},
    {Name = "All up in Atwater (a)", ID = "rbxassetid://9039464677"},
    {Name = "All up in Atwater (b)", ID = "rbxassetid://9039465791"},
    {Name = "All up in Atwater (c)", ID = "rbxassetid://9039466748"},
    {Name = "Il Gatto Della Donna", ID = "rbxassetid://9039504764"},
    {Name = "Latin Breakbeat", ID = "rbxassetid://9039700388"},
    {Name = "Latin Breakbeat - Instrumental", ID = "rbxassetid://9039703049"},
    {Name = "Morgen Kommt Der Weihnachtsmann / Morgn, Kinder, W", ID = "rbxassetid://9039800598"},
    {Name = "Medley: Winter Dreams", ID = "rbxassetid://9039800608"},
    {Name = "Medley: Jingle Bells / Der Christbaum Ist Der Scho", ID = "rbxassetid://9039800955"},
    {Name = "Medley: Frohliche Weihnacht uberall / Grunet, Feld", ID = "rbxassetid://9039801218"},
    {Name = "Camel Bells", ID = "rbxassetid://9039802691"},
    {Name = "Long Road", ID = "rbxassetid://9039806848"},
    {Name = "Swing And Relax", ID = "rbxassetid://9039848793"},
    {Name = "Uplifting Flow Sparse", ID = "rbxassetid://9039900022"},
    {Name = "No Worries", ID = "rbxassetid://9039993268"},
    {Name = "My Requiem", ID = "rbxassetid://9040390126"},
    {Name = "My Requiem", ID = "rbxassetid://9040390388"},
    {Name = "My Requiem", ID = "rbxassetid://9040390410"},
    {Name = "Ember Months", ID = "rbxassetid://9040406299"},
    {Name = "Ajebutter", ID = "rbxassetid://9040406576"},
    {Name = "Mile End", ID = "rbxassetid://9040586340"},
    {Name = "Hounslow West", ID = "rbxassetid://9040587531"},
    {Name = "Ratchet", ID = "rbxassetid://9040610047"},
    {Name = "Ratchet", ID = "rbxassetid://9040610783"},
    {Name = "Stomping Floors", ID = "rbxassetid://9041810309"},
    {Name = "Postcard", ID = "rbxassetid://9041810765"},
    {Name = "Winter Bells", ID = "rbxassetid://9041824712"},
    {Name = "Take My Hand", ID = "rbxassetid://9041837578"},
    {Name = "Sunshine Edition C", ID = "rbxassetid://9041854267"},
    {Name = "Bumping Beans (c)", ID = "rbxassetid://9041959615"},
    {Name = "Snappy Clappers (b)", ID = "rbxassetid://9041960079"},
    {Name = "Happy Glampers (e)", ID = "rbxassetid://9041960094"},
    {Name = "Garden Games (e)", ID = "rbxassetid://9041961328"},
    {Name = "Camper Van Plans (e)", ID = "rbxassetid://9041961681"},
    {Name = "Byte Sized Bouncer (c)", ID = "rbxassetid://9041961807"},
    {Name = "Cutesy Tootsy (c)", ID = "rbxassetid://9041962000"},
    {Name = "Head First", ID = "rbxassetid://9042024876"},
    {Name = "Criminal (c)", ID = "rbxassetid://9042183808"},
    {Name = "Addiction (c)", ID = "rbxassetid://9042184137"},
    {Name = "Suleika", ID = "rbxassetid://9042430842"},
    {Name = "The Sunny Side", ID = "rbxassetid://9042598076"},
    {Name = "Do you need Me no vocals", ID = "rbxassetid://9042713825"},
    {Name = "Country Hop - Remastered", ID = "rbxassetid://9042746567"},
    {Name = "Hot Step", ID = "rbxassetid://9042813565"},
    {Name = "Street Race", ID = "rbxassetid://9042814546"},
    {Name = "Hot Step", ID = "rbxassetid://9042814796"},
    {Name = "Street Race", ID = "rbxassetid://9042815932"},
    {Name = "Lakmé, Act I: Flower Duet", ID = "rbxassetid://9042830209"},
    {Name = "Il Travatore, Act II: Vedi! Le fosche", ID = "rbxassetid://9042830348"},
    {Name = "Maya", ID = "rbxassetid://9042854672"},
    {Name = "Disco Cola", ID = "rbxassetid://9043082199"},
    {Name = "Disco Cola", ID = "rbxassetid://9043083775"},
    {Name = "Rhythmic Action", ID = "rbxassetid://9043086115"},
    {Name = "High On A Hill", ID = "rbxassetid://9043095096"},
    {Name = "Entymology", ID = "rbxassetid://9043103827"},
    {Name = "Entymology", ID = "rbxassetid://9043104978"},
    {Name = "Own This (Underscore) A", ID = "rbxassetid://9043313637"},
    {Name = "luup main", ID = "rbxassetid://9043402682"},
    {Name = "Big Skies Beyond (c)", ID = "rbxassetid://9043425730"},
    {Name = "Big Skies Beyond (d)", ID = "rbxassetid://9043425893"},
    {Name = "Sing Me To Summer (c)", ID = "rbxassetid://9043426426"},
    {Name = "Sing Me To Summer (d)", ID = "rbxassetid://9043426436"},
    {Name = "Southern States Rock--ALT. 1", ID = "rbxassetid://9043456554"},
    {Name = "Mr Pumpkin Head (b)", ID = "rbxassetid://9043599196"},
    {Name = "String Quartet No. 14 in C-Sharp Minor, Op. 131: V", ID = "rbxassetid://9043645973"},
    {Name = "Exit Plan (Bed Version)", ID = "rbxassetid://9043675577"},
    {Name = "Pictures Of China IV", ID = "rbxassetid://9043814827"},
    {Name = "Fiesta Andaluza", ID = "rbxassetid://9043816050"},
    {Name = "Folk Of South East Asia I", ID = "rbxassetid://9043818269"},
    {Name = "Maria, Pepe & Alicia", ID = "rbxassetid://9043827619"},
    {Name = "Panamericana", ID = "rbxassetid://9043828299"},
    {Name = "Hawaiian Folk Festival", ID = "rbxassetid://9043829227"},
    {Name = "Hemlangtan", ID = "rbxassetid://9043829821"},
    {Name = "Sparkling Moments", ID = "rbxassetid://9043832615"},
    {Name = "Tropical Island", ID = "rbxassetid://9043853096"},
    {Name = "I Don't Even Want That Old Thing Back C", ID = "rbxassetid://9043889358"},
    {Name = "No Ceilings C", ID = "rbxassetid://9043890925"},
    {Name = "No Chance E", ID = "rbxassetid://9043891356"},
    {Name = "Damelo B", ID = "rbxassetid://9043892307"},
    {Name = "Damelo F", ID = "rbxassetid://9043892542"},
    {Name = "Megaman E", ID = "rbxassetid://9043897742"},
    {Name = "Fly High C", ID = "rbxassetid://9043903565"},
    {Name = "Fly High E", ID = "rbxassetid://9043903885"},
    {Name = "Future House C", ID = "rbxassetid://9044008913"},
    {Name = "Fever 105 (b)", ID = "rbxassetid://9044611290"},
    {Name = "Hypnotizing Rhythm", ID = "rbxassetid://9044688381"},
    {Name = "Rush (b)", ID = "rbxassetid://9044835824"},
    {Name = "Rush (c)", ID = "rbxassetid://9044835963"},
    {Name = "Kampala (a)", ID = "rbxassetid://9044873744"},
    {Name = "Rough Trade", ID = "rbxassetid://9045024326"},
    {Name = "No Beef", ID = "rbxassetid://9045033862"},
    {Name = "Cuore Piu Grande Di Te", ID = "rbxassetid://9045236644"},
    {Name = "E' Vero", ID = "rbxassetid://9045237307"},
    {Name = "Put On Gloves", ID = "rbxassetid://9045410744"},
    {Name = "High On Sugar D", ID = "rbxassetid://9046255301"},
    {Name = "Hop Hop", ID = "rbxassetid://9046355043"},
    {Name = "L'Elisir D'Amore - Una Furtive Lagrima (Full)", ID = "rbxassetid://9046356123"},
    {Name = "Juggernaut Hip Hop - Main", ID = "rbxassetid://9046535832"},
    {Name = "Solo Harpsichord - Greensleeves - Remastered", ID = "rbxassetid://9046642359"},
    {Name = "Solo Harpsichord - Greensleeves", ID = "rbxassetid://9046646150"},
    {Name = "The Flame - Remastered", ID = "rbxassetid://9046653559"},
    {Name = "These Drums Want Action", ID = "rbxassetid://9046673080"},
    {Name = "These Drums Want Action--ALT. 1", ID = "rbxassetid://9046673118"},
    {Name = "These Drums Want Action--Underscore", ID = "rbxassetid://9046673152"},
    {Name = "Clap Tough", ID = "rbxassetid://9046676173"},
    {Name = "Clap Tough--ALT. 1", ID = "rbxassetid://9046676309"},
    {Name = "Big Energy Drums", ID = "rbxassetid://9046676622"},
    {Name = "Big Energy Drums--Underscore", ID = "rbxassetid://9046676724"},
    {Name = "Gardeners' Gold", ID = "rbxassetid://9046771283"},
    {Name = "Cooking with Jessona", ID = "rbxassetid://9046771569"},
    {Name = "The Deep End (b)", ID = "rbxassetid://9046816058"},
    {Name = "The Deep End (c)", ID = "rbxassetid://9046816156"},
    {Name = "Different Way E", ID = "rbxassetid://9047109176"},
    {Name = "Hitomi E", ID = "rbxassetid://9047129810"},
    {Name = "Old Waikiki A", ID = "rbxassetid://9047135669"},
    {Name = "Blazing Smack Attack - Alt5, DrumsPercShouts", ID = "rbxassetid://9047222920"},
    {Name = "Blazing Smack Attack - Alt6, DrumsPerc", ID = "rbxassetid://9047222949"},
    {Name = "Copacetic - DrumsPerc", ID = "rbxassetid://9047230887"},
    {Name = "Shimmering Lehenga", ID = "rbxassetid://9047598615"},
    {Name = "Urban Jungle", ID = "rbxassetid://9047750652"},
    {Name = "Energetic Percussion", ID = "rbxassetid://9048008709"},
    {Name = "Upbeat Percussion", ID = "rbxassetid://9048009537"},
    {Name = "Snow Feather (b)", ID = "rbxassetid://9048447457"},
    {Name = "Battleground", ID = "rbxassetid://9048541013"},
    {Name = "Competitive Beast", ID = "rbxassetid://9048544035"},
    {Name = "Symphony No. 40", ID = "rbxassetid://9048612596"},
    {Name = "Little Bill's Trumpet", ID = "rbxassetid://9048719921"},
    {Name = "septembers rain", ID = "rbxassetid://70399877797129"},
    {Name = "Rhythm Problem Jam 001", ID = "rbxassetid://70501598017320"},
    {Name = "Pulse Jump To Nowhere", ID = "rbxassetid://70559367709087"},
    {Name = "Orang Hutan", ID = "rbxassetid://70607820006576"},
    {Name = "Too Loved to Die", ID = "rbxassetid://70622969393107"},
    {Name = "Inside The Machine", ID = "rbxassetid://70758638937770"},
    {Name = "Salted Waves", ID = "rbxassetid://70768848322206"},
    {Name = "TaTaTa (Instrumental)", ID = "rbxassetid://70826036167782"},
    {Name = "Rhythms of the Garden . Tanbur Meditation III", ID = "rbxassetid://70915159728016"},
    {Name = "Aggressed", ID = "rbxassetid://70951862150037"},
    {Name = "Home Isn't Home", ID = "rbxassetid://70975247456899"},
    {Name = "Soft Whispers in the night", ID = "rbxassetid://71076181686773"},
    {Name = "Breakbeat Overdrive", ID = "rbxassetid://71197989449324"},
    {Name = "Cahaya Doa Ibu — Mother’s Prayer Light", ID = "rbxassetid://71208654314656"},
    {Name = "Mis Amigos", ID = "rbxassetid://71211814559406"},
    {Name = "Langkah Bijak Pencak Silat", ID = "rbxassetid://71304244481787"},
    {Name = "breakgaze untitled ptfive", ID = "rbxassetid://71449739581360"},
    {Name = "Hillwood Transit System", ID = "rbxassetid://71646532271479"},
    {Name = "Lost In Elation", ID = "rbxassetid://71758719425947"},
    {Name = "선명해", ID = "rbxassetid://72017654124514"},
    {Name = "Indonesia (Satu Nyawa, Seribu Pulau)", ID = "rbxassetid://72023492876060"},
    {Name = "Dangdut", ID = "rbxassetid://72274013572185"},
    {Name = "Te Perdí", ID = "rbxassetid://72277931345247"},
    {Name = "figment", ID = "rbxassetid://72579370159401"},
    {Name = "Fly Away", ID = "rbxassetid://72665558289497"},
    {Name = "Bisikan Tengah Malam | Emo X Pop Punk Indonesia", ID = "rbxassetid://72671155919763"},
    {Name = "porcelain", ID = "rbxassetid://72789572881149"},
    {Name = "Indonesiaku", ID = "rbxassetid://72892322389595"},
    {Name = "Theenmar Band Hyderabad Style", ID = "rbxassetid://73267184543206"},
    {Name = "Sérénade Miniature (Face B)", ID = "rbxassetid://73360725279341"},
    {Name = "Спокойная ночьь", ID = "rbxassetid://73510658253178"},
    {Name = "Dade's Horizon", ID = "rbxassetid://73523978092742"},
    {Name = "Kalimantn Indonesia Harmoni Musik", ID = "rbxassetid://73574786397017"},
    {Name = "KAB-OT Singgit sa Pagtoo", ID = "rbxassetid://73577239311033"},
    {Name = "Sands Beneath the Moon", ID = "rbxassetid://73722499137326"},
    {Name = "Transcend", ID = "rbxassetid://73790872249927"},
    {Name = "Senandung Brantas", ID = "rbxassetid://73946945197239"},
    {Name = "Roll In", ID = "rbxassetid://74017456231849"},
    {Name = "DJ STAY THE SAME BREAKBEAT", ID = "rbxassetid://74088514222709"},
    {Name = "AM A CHILD TO THE MOST HIGH GOD", ID = "rbxassetid://74190239282122"},
    {Name = "Easier That Way (Remastered)", ID = "rbxassetid://74236496656221"},
    {Name = "Dangdut", ID = "rbxassetid://74249376797344"},
    {Name = "Welcome to Indonesia", ID = "rbxassetid://74397211168670"},
    {Name = "Hyperdrive Sleep Mode", ID = "rbxassetid://74471472879811"},
    {Name = "Lift Up His Name", ID = "rbxassetid://74525212371974"},
    {Name = "Asmara di Tepi Kali Ciliwung", ID = "rbxassetid://74542916623593"},
    {Name = "Sabar Adalah Kekuatan — Patience Is Strength", ID = "rbxassetid://74640259066531"},
    {Name = "Kasih Terpendam di Balik Tirai", ID = "rbxassetid://74811658763470"},
    {Name = "Harapan di Pagi Jumat — Hope on Friday Morning", ID = "rbxassetid://74838199602729"},
    {Name = "BAD KID", ID = "rbxassetid://74939450172821"},
    {Name = "Dangdut", ID = "rbxassetid://74971025789585"},
    {Name = "Do Brasil", ID = "rbxassetid://74998378425294"},
    {Name = "Eid Mubarak Indonesian 2", ID = "rbxassetid://75006259518599"},
    {Name = "The Memory of You", ID = "rbxassetid://75061258621890"},
    {Name = "Beskar Breakbeat", ID = "rbxassetid://75146194001541"},
    {Name = "Menanti Kembali", ID = "rbxassetid://75147672813417"},
    {Name = "BOATSHIP", ID = "rbxassetid://75209803258338"},
    {Name = "bleu", ID = "rbxassetid://75265037917302"},
    {Name = "Nightly News", ID = "rbxassetid://75400048085036"},
    {Name = "New S2391 1", ID = "rbxassetid://75467787644458"},
    {Name = "Let's Have Some Church", ID = "rbxassetid://75660697040293"},
    {Name = "Que tout genou fléchisse an Kreyol", ID = "rbxassetid://75688836518477"},
    {Name = "Heavy Heart", ID = "rbxassetid://75703496331242"},
    {Name = "Mafia", ID = "rbxassetid://75838524263105"},
    {Name = "Kuatkan Langkah", ID = "rbxassetid://75972257082351"},
    {Name = "Turkish Dances - Poco Allegro", ID = "rbxassetid://76021904713830"},
    {Name = "Different Person \"Hype Master Edit\"", ID = "rbxassetid://76041351613873"},
    {Name = "Funny Oriental 4/4 Style (140 BPM Tempo)", ID = "rbxassetid://76114945517559"},
    {Name = "Fly Away", ID = "rbxassetid://76203210558999"},
    {Name = "Cinta Takkan Lelah", ID = "rbxassetid://76206714905360"},
    {Name = "Bandari Rhythm (120 BPM)", ID = "rbxassetid://76223260175120"},
    {Name = "62-143", ID = "rbxassetid://76230685388348"},
    {Name = "Dangdut", ID = "rbxassetid://76327636680600"},
    {Name = "Living Proof", ID = "rbxassetid://76377580864223"},
    {Name = "Ku Bisa", ID = "rbxassetid://76408787548432"},
    {Name = "Melewati Badai Salju (Indonesian)", ID = "rbxassetid://76420606396243"},
    {Name = "Breakbeat Boulevard", ID = "rbxassetid://76496106865344"},
    {Name = "Coba Dipikirkan Secara Logika", ID = "rbxassetid://76509436625665"},
    {Name = "When You Were High", ID = "rbxassetid://76550515391557"},
    {Name = "apple", ID = "rbxassetid://76569242801453"},
    {Name = "Phoebe's Study Session", ID = "rbxassetid://76590748496326"},
    {Name = "Hayang Baso disanguan", ID = "rbxassetid://76857417377306"},
    {Name = "GO GO", ID = "rbxassetid://76908797108664"},
    {Name = "Hidup Sederhana — Simple Living", ID = "rbxassetid://76918878133240"},
    {Name = "Berselimut Kelam", ID = "rbxassetid://77074966041085"},
    {Name = "Jalan Sunnah Kita — Our Path of Sunnah", ID = "rbxassetid://77179012464882"},
    {Name = "Hallowed", ID = "rbxassetid://77190883114775"},
    {Name = "Fire Inna The Breakbeat", ID = "rbxassetid://77308987754519"},
    {Name = "Maybe I Was Never Your Type", ID = "rbxassetid://77359826913752"},
    {Name = "Dime Que Sí (Breakbeat Techno Mix)", ID = "rbxassetid://77417379180477"},
    {Name = "Rooftop Bungalow", ID = "rbxassetid://77462197723303"},
    {Name = "अभंग - नाम गाऊ नाम घेऊ Abhang - Naam Gau Naam Gheu", ID = "rbxassetid://77559186887742"},
    {Name = "The Sound of Being", ID = "rbxassetid://77601891044970"},
    {Name = "Rimba Tanjung Puting", ID = "rbxassetid://77663255469404"},
    {Name = "Sukarno (1901–1970)", ID = "rbxassetid://77757639993116"},
    {Name = "Jalan Menuju Surga — Road to Paradise", ID = "rbxassetid://77907114164910"},
    {Name = "The Lost Key", ID = "rbxassetid://77953938546935"},
    {Name = "Ta'ala Ya Rab | تعالى يارب", ID = "rbxassetid://78095474437913"},
    {Name = "Dangdut", ID = "rbxassetid://78221597662795"},
    {Name = "Berdiri Teguh", ID = "rbxassetid://78269829173371"},
    {Name = "Cepat Pulih Indonesiaku", ID = "rbxassetid://78288361987424"},
    {Name = "CENIZAS", ID = "rbxassetid://78496016872801"},
    {Name = "I Will Heal", ID = "rbxassetid://78676943658941"},
    {Name = "My Moment Has Arrived", ID = "rbxassetid://78736509692953"},
    {Name = "Maraton Kehidupan", ID = "rbxassetid://78778005499644"},
    {Name = "going out to dance", ID = "rbxassetid://78784410276770"},
    {Name = "Land of Smiles and Harmony (Indonesia)", ID = "rbxassetid://78788121226933"},
    {Name = "Oriental 4/4 Rhythm (130 BPM Tempo)", ID = "rbxassetid://78802515539219"},
    {Name = "Kürdi Makamı Bağlama Taksim", ID = "rbxassetid://78834769540647"},
    {Name = "If This Aint Love \"Straight Path Edit\"", ID = "rbxassetid://78912226576113"},
    {Name = "Fragmented Metal Memory", ID = "rbxassetid://78927895092062"},
    {Name = "Amapiano love vibes hit max 2025", ID = "rbxassetid://78928146192902"},
    {Name = "OFONE", ID = "rbxassetid://78970927578947"},
    {Name = "Always My Light (Classic Breakbeat)", ID = "rbxassetid://79036924458882"},
    {Name = "Joget Lalalala", ID = "rbxassetid://79073283903510"},
    {Name = "John & Christie", ID = "rbxassetid://79157139074955"},
    {Name = "Sitll Yours In Every Dream", ID = "rbxassetid://79289263864530"},
    {Name = "Dangdut", ID = "rbxassetid://79409787558673"},
    {Name = "MAPATI GAJAH MADA A", ID = "rbxassetid://79608440928305"},
    {Name = "Modem Dreams", ID = "rbxassetid://79621451801499"},
    {Name = "星空の囁き", ID = "rbxassetid://79668637797209"},
    {Name = "The Actioneer F", ID = "rbxassetid://79820860960802"},
    {Name = "Merantau", ID = "rbxassetid://79864278939617"},
    {Name = "Gunung Bromo", ID = "rbxassetid://79964171362765"},
    {Name = "Slow Burn Acceptance, Vol. 2", ID = "rbxassetid://80229928431606"},
    {Name = "MODERN GIANYAR A", ID = "rbxassetid://80399232423293"},
    {Name = "Breaking until Sunrise", ID = "rbxassetid://80437869174443"},
    {Name = "Nada Cinta Dalam Irama jazz", ID = "rbxassetid://80469096504953"},
    {Name = "خليجي طرب || انا شكاي ياعمده", ID = "rbxassetid://80462333781645"},
    {Name = "See You Again", ID = "rbxassetid://80533316549304"},
    {Name = "Breakbeat Dynamo", ID = "rbxassetid://80604930072417"},
    {Name = "Rain Sleep Sounds (Peaceful Deep Sleep), Pt. 02", ID = "rbxassetid://80661303040278"},
    {Name = "Pride Night @ Disney", ID = "rbxassetid://80729889655710"},
    {Name = "Hold On Tight", ID = "rbxassetid://80801068129384"},
    {Name = "Indonesia", ID = "rbxassetid://80993672035027"},
    {Name = "Roue à Musique (Face A)", ID = "rbxassetid://81080370260060"},
    {Name = "Hold That Thought", ID = "rbxassetid://81096653603738"},
    {Name = "Elephant", ID = "rbxassetid://81127285456803"},
    {Name = "Langkah Hijrah — Steps of Transformation", ID = "rbxassetid://81157928815912"},
    {Name = "Breakbeat : Interference Streets", ID = "rbxassetid://81209592345127"},
    {Name = "Morning Blessings", ID = "rbxassetid://81224836441955"},
    {Name = "Dyrekasse", ID = "rbxassetid://81253354814606"},
    {Name = "Atlas Station 1999", ID = "rbxassetid://81313081628088"},
    {Name = "CELAWZE I BIARKAN KU PERGI BREAKBEAT", ID = "rbxassetid://81426876012759"},
    {Name = "###########################", ID = "rbxassetid://81498454907225"},
    {Name = "Not Broken \"Rewritten Edit\"", ID = "rbxassetid://81636298469509"},
    {Name = "SILENT SHADOWS", ID = "rbxassetid://81652765538344"},
    {Name = "Merl Song", ID = "rbxassetid://81669366526621"},
    {Name = "The Last Tree", ID = "rbxassetid://81691967979436"},
    {Name = "Redemption", ID = "rbxassetid://81698315763673"},
    {Name = "Nusantara Baru, Indonesia Maju (Versi Kelima)", ID = "rbxassetid://81714951121814"},
    {Name = "Dangdut", ID = "rbxassetid://81885636095720"},
    {Name = "Ya Rabb (Indonesia)", ID = "rbxassetid://81968444955924"},
    {Name = "Cahaya Ukhuwah — Light of Brotherhood", ID = "rbxassetid://82118889583997"},
    {Name = "Distancia", ID = "rbxassetid://82208827718691"},
    {Name = "PERANG JAGARAGA A", ID = "rbxassetid://82347311241065"},
    {Name = "Menjaga Al-Ahlak — Preserving Morals", ID = "rbxassetid://82427735289361"},
    {Name = "Celtic Pulse", ID = "rbxassetid://82646539560399"},
    {Name = "【維新志士】〜暁の風", ID = "rbxassetid://82674705329326"},
    {Name = "doa belum terjawab", ID = "rbxassetid://82749479358766"},
    {Name = "Jai Jai Bhagwanta", ID = "rbxassetid://82867180677797"},
    {Name = "Green's Meats", ID = "rbxassetid://82973689418703"},
    {Name = "Indonesia Tanpa Narkoba", ID = "rbxassetid://82994411958058"},
    {Name = "Too Much ft.Cinoz", ID = "rbxassetid://83001684323418"},
    {Name = "Chatter", ID = "rbxassetid://83044154146172"},
    {Name = "Gamelan Resonance Field", ID = "rbxassetid://83077123902599"},
    {Name = "Breakbeat : Urban Rhythm Distortion", ID = "rbxassetid://83130312048076"},
    {Name = "Janji Hati", ID = "rbxassetid://83235710267654"},
    {Name = "Cendrawasih", ID = "rbxassetid://83270599938186"},
    {Name = "LAGN GEET | POONAM GONDALIYA | સો સો બંધૂકિયા 2025", ID = "rbxassetid://83326781588906"},
    {Name = "Indonesia selamanya", ID = "rbxassetid://83431612899711"},
    {Name = "See In My Eyes", ID = "rbxassetid://83453919719146"},
    {Name = "Collective Joy", ID = "rbxassetid://83498441335223"},
    {Name = "Astral Breakbeat Bloom", ID = "rbxassetid://83613841753314"},
    {Name = "Chiang Mai", ID = "rbxassetid://83635976522378"},
    {Name = "放課後、君を追いかけて", ID = "rbxassetid://83694748989105"},
    {Name = "In My Bones \"Battlerock Edit\"", ID = "rbxassetid://83907389105609"},
    {Name = "Dangdut", ID = "rbxassetid://83983889443377"},
    {Name = "Romeo", ID = "rbxassetid://84026377432090"},
    {Name = "breakgaze untitled ptsix", ID = "rbxassetid://84172206039535"},
    {Name = "Chasing Dreams", ID = "rbxassetid://84226767978362"},
    {Name = "Cinta Yang Hilang", ID = "rbxassetid://84286174651625"},
    {Name = "Your Hand in Mine", ID = "rbxassetid://84317955205372"},
    {Name = "Where Love Went", ID = "rbxassetid://84357156011130"},
    {Name = "Mangun Code Romo", ID = "rbxassetid://84495940592908"},
    {Name = "Emotions Left Us", ID = "rbxassetid://84540068528213"},
    {Name = "Yami Yami", ID = "rbxassetid://84570363516667"},
    {Name = "Light Back In", ID = "rbxassetid://84622310926106"},
    {Name = "Terlambat Sudah", ID = "rbxassetid://84636570444045"},
    {Name = "Máthair", ID = "rbxassetid://84648195436739"},
    {Name = "Titian Taubat — Bridge of Repentance", ID = "rbxassetid://84665118006473"},
    {Name = "Tattoos Up (FLAC)", ID = "rbxassetid://84733469940438"},
    {Name = "Duhai Kekasihku | Rock Pop Music Indonesia", ID = "rbxassetid://84763217485839"},
    {Name = "It Takes an Open Heart", ID = "rbxassetid://84913173543977"},
    {Name = "Tinta", ID = "rbxassetid://84941017510455"},
    {Name = "蓮の花の道", ID = "rbxassetid://84954277253011"},
    {Name = "Whistlin'", ID = "rbxassetid://85141197904958"},
    {Name = "What The Phreak?!", ID = "rbxassetid://85170712541829"},
    {Name = "Dangdut", ID = "rbxassetid://85379667649242"},
    {Name = "DJ Phut Hon Indo Full Bass", ID = "rbxassetid://85427648559465"},
    {Name = "Turn To You \"Shuffle Breaks Edit\".", ID = "rbxassetid://85489432681695"},
    {Name = "Archive", ID = "rbxassetid://85522734276507"},
    {Name = "Castle on the Hill", ID = "rbxassetid://85624088182042"},
    {Name = "D'Etre Aimée", ID = "rbxassetid://85625657838494"},
    {Name = "“Kabut Magelang”", ID = "rbxassetid://85702081837810"},
    {Name = "Sang Naga Purba", ID = "rbxassetid://85798906545437"},
    {Name = "Kusimpan Rinduku Padamu Breakbeat Full Bass", ID = "rbxassetid://85819723455208"},
    {Name = "Allah Cahaya Hati — Allah Light of the Heart", ID = "rbxassetid://85830500702188"},
    {Name = "Dangdut", ID = "rbxassetid://85877830119095"},
    {Name = "Nicol I BREAKBEAT 1", ID = "rbxassetid://85891590780891"},
    {Name = "Goodnight Moon (XV)", ID = "rbxassetid://85900653018835"},
    {Name = "Dans Nos Mains, la Paix Grandit", ID = "rbxassetid://85904988374538"},
    {Name = "First Christmas Slumber", ID = "rbxassetid://85912579351047"},
    {Name = "Galactic Market", ID = "rbxassetid://85922328966318"},
    {Name = "Bargaining", ID = "rbxassetid://85938058245992"},
    {Name = "Send Vsal 2-3 years Indonesia and Forget.", ID = "rbxassetid://86098487176284"},
    {Name = "Dissolving Bronze State", ID = "rbxassetid://86106638294968"},
    {Name = "smalldreams", ID = "rbxassetid://86222715837976"},
    {Name = "Milonga del Ángel", ID = "rbxassetid://86272943968629"},
    {Name = "The Last Hymn of Eden", ID = "rbxassetid://86294829003989"},
    {Name = "Merinduimu | Pop Rock Indonesia", ID = "rbxassetid://86386856727968"},
    {Name = "Just Wonderin'", ID = "rbxassetid://86593363072325"},
    {Name = "Api Suci Pertiwi", ID = "rbxassetid://86614108870353"},
    {Name = "The Truth is a Tether", ID = "rbxassetid://86639983492042"},
    {Name = "Witches' Spell", ID = "rbxassetid://86645902635962"},
    {Name = "Soft Metallophone Drift", ID = "rbxassetid://86693052435576"},
    {Name = "When It Pours", ID = "rbxassetid://86871527489561"},
    {Name = "Candy Piano Pop", ID = "rbxassetid://86928571954032"},
    {Name = "Welcome to Indonesia", ID = "rbxassetid://86985155076440"},
    {Name = "Hadès", ID = "rbxassetid://87014864126492"},
    {Name = "Baby Bedtime", ID = "rbxassetid://87061031251765"},
    {Name = "Ki Hajar Dewantara (1889–1959)", ID = "rbxassetid://87203887626456"},
    {Name = "Area 16 - 17 (Day)", ID = "rbxassetid://87291734486553"},
    {Name = "Hati Yang Sama", ID = "rbxassetid://87326774693324"},
    {Name = "Hymn For Her", ID = "rbxassetid://87478324072463"},
    {Name = "Wild Grace \"Bright Lights Edit\"", ID = "rbxassetid://87480258843744"},
    {Name = "Dark Matter Groove", ID = "rbxassetid://87481453221253"},
    {Name = "Winter Night", ID = "rbxassetid://87602422481487"},
    {Name = "VICTORY IS MY NAME", ID = "rbxassetid://87644754148252"},
    {Name = "Burn", ID = "rbxassetid://87653575745456"},
    {Name = "Mengalir Seperti Air", ID = "rbxassetid://87656623713559"},
    {Name = "When the Year Turns", ID = "rbxassetid://87870625789045"},
    {Name = "Cak Cak Maiyah", ID = "rbxassetid://87891044788343"},
    {Name = "Core Glow", ID = "rbxassetid://87905647898210"},
    {Name = "DENYU WANGSA JAYA A", ID = "rbxassetid://87984680569074"},
    {Name = "####################", ID = "rbxassetid://87987861855549"},
    {Name = "Rooftop Rave", ID = "rbxassetid://88098182493975"},
    {Name = "Valse Bébé (Face B)", ID = "rbxassetid://88161277573753"},
    {Name = "By the Morning", ID = "rbxassetid://88262978437805"},
    {Name = "Cookin the work", ID = "rbxassetid://88273528601972"},
    {Name = "Detuned Metal Cycles", ID = "rbxassetid://88296626075590"},
    {Name = "Άγιος Έρωτας", ID = "rbxassetid://88478347927138"},
    {Name = "Sepi Malam", ID = "rbxassetid://88484998407278"},
    {Name = "Higher Than My Fear", ID = "rbxassetid://88517660272675"},
    {Name = "Lycanthropy (instrumental)", ID = "rbxassetid://88555886417383"},
    {Name = "Come Alive \"Daft Pop Edit\"", ID = "rbxassetid://88560865205025"},
    {Name = "Subtle Bronze Pulsation", ID = "rbxassetid://88670555840266"},
    {Name = "Lemon Tinted Glasses", ID = "rbxassetid://88678864376975"},
    {Name = "Fast Arabic 4/4 Style (150 BPM Tempo)", ID = "rbxassetid://88723247303626"},
    {Name = "DJ NO EXPIRATION DATE BREAKBEAT", ID = "rbxassetid://88762074202384"},
    {Name = "Breakers step it up", ID = "rbxassetid://88808601459356"},
    {Name = "La Tempesta", ID = "rbxassetid://88814734620577"},
    {Name = "Aku Ingin Bernyanyi Jazz", ID = "rbxassetid://88854441643783"},
    {Name = "また明日ね", ID = "rbxassetid://88909181821339"},
    {Name = "In My Bones \"Chain Break Edit\"", ID = "rbxassetid://88925334026154"},
    {Name = "Lagu Blues Indonesia Penuh Perasaan dan Cerita", ID = "rbxassetid://89145983680102"},
    {Name = "The Long Way Home", ID = "rbxassetid://89148861947723"},
    {Name = "Spanish Attack", ID = "rbxassetid://89195988878802"},
    {Name = "Living Proof \"Rooftop Edit\"", ID = "rbxassetid://89203313599725"},
    {Name = "Maafkan Aku", ID = "rbxassetid://89256849369516"},
    {Name = "Xumxumê Torîvanê", ID = "rbxassetid://89403154262561"},
    {Name = "Only for the bizarre ones", ID = "rbxassetid://89471211575142"},
    {Name = "Merry Christmas, Stranger", ID = "rbxassetid://89488390276100"},
    {Name = "M-o trimis mama la capre", ID = "rbxassetid://89586527986510"},
    {Name = "Just My Canvas, Vol. 1", ID = "rbxassetid://89612576716082"},
    {Name = "Hayang Baso disanguan", ID = "rbxassetid://89624641298741"},
    {Name = "Layered Gamelan Field", ID = "rbxassetid://89729128524640"},
    {Name = "Hari Baru", ID = "rbxassetid://89762697590898"},
    {Name = "Lap One", ID = "rbxassetid://89810933049679"},
    {Name = "Jatuh Cinta Lagi", ID = "rbxassetid://89836791839135"},
    {Name = "Kita Satu Indonesia", ID = "rbxassetid://89858463306530"},
    {Name = "Jangan Tanyakan Mengapa", ID = "rbxassetid://89880845173810"},
    {Name = "Jenderal Sudirman (1916–1950)", ID = "rbxassetid://89933142083266"},
    {Name = "Informant", ID = "rbxassetid://89961112063158"},
    {Name = "Cosmic Heart", ID = "rbxassetid://89976281188173"},
    {Name = "Saeidy Rhythm (80 BPM)", ID = "rbxassetid://90029285262919"},
    {Name = "COUNTY BIBBS", ID = "rbxassetid://90063595179401"},
    {Name = "Breakbeat Memories", ID = "rbxassetid://90075816100384"},
    {Name = "Ghost RAM", ID = "rbxassetid://90140314835119"},
    {Name = "주말 데이트 코스 (Weekend Date Itinerary)", ID = "rbxassetid://90299380989713"},
    {Name = "deep snorkel", ID = "rbxassetid://90377482676415"},
    {Name = "Kita Indonesia", ID = "rbxassetid://90441919512302"},
    {Name = "Breakbeat Hardcore", ID = "rbxassetid://90558148579847"},
    {Name = "Dark Nights", ID = "rbxassetid://90611225739952"},
    {Name = "Late Night at Sunset Arms", ID = "rbxassetid://90643586225973"},
    {Name = "The Anomaly Lounge", ID = "rbxassetid://90651179056565"},
    {Name = "Skating Along the Ice", ID = "rbxassetid://90663886986909"},
    {Name = "A.i Takes Over", ID = "rbxassetid://90813870788599"},
    {Name = "lelah fikiran", ID = "rbxassetid://90836164179025"},
    {Name = "Stuff I do (Breakbeat edit)", ID = "rbxassetid://90838395059882"},
    {Name = "I Turn to You", ID = "rbxassetid://90904630181350"},
    {Name = "No More Double Taps, Vol. 1", ID = "rbxassetid://90953359416582"},
    {Name = "Not Broken", ID = "rbxassetid://90968733522887"},
    {Name = "In My Bones", ID = "rbxassetid://91031173943476"},
    {Name = "I Love to Empower Women + Gender Equality", ID = "rbxassetid://91065747705618"},
    {Name = "Suka Suka Bahagia (Enak Enak)", ID = "rbxassetid://91089804280618"},
    {Name = "Mimpi Sang Bocah", ID = "rbxassetid://91152970879311"},
    {Name = "Kitchen", ID = "rbxassetid://91183498757344"},
    {Name = "Silk & Steel (Refined C-Breakbeat)", ID = "rbxassetid://91186265472500"},
    {Name = "Điện Thoại Cầm Ngang Thì Đời Còn Khổ", ID = "rbxassetid://91213804458940"},
    {Name = "DJ WHERE DID YOUR LOVE GO BREAKBEAT", ID = "rbxassetid://91342380026565"},
    {Name = "Summer's End Unplugged", ID = "rbxassetid://91416327218489"},
    {Name = "135 Bpm Maksum Rhythm Arabic Maqsoum", ID = "rbxassetid://91583275431599"},
    {Name = "Exit", ID = "rbxassetid://91593685498378"},
    {Name = "Eternal Reality \"Vitamin E Edit\"", ID = "rbxassetid://91615258977915"},
    {Name = "Sumatra Earth Relaxation", ID = "rbxassetid://91648739628840"},
    {Name = "Hiç", ID = "rbxassetid://91713934436691"},
    {Name = "220 BPM Fusion Jazz Drums", ID = "rbxassetid://91808032441280"},
    {Name = "Sahara", ID = "rbxassetid://91877905053086"},
    {Name = "Jingle Bells (Christmas Remix)", ID = "rbxassetid://91974795992054"},
    {Name = "Every Time At Night", ID = "rbxassetid://92001277140346"},
    {Name = "Every Road Leads to You", ID = "rbxassetid://92112881581381"},
    {Name = "cartoon glory", ID = "rbxassetid://92144147383720"},
    {Name = "Promesas Falsas", ID = "rbxassetid://92224191630425"},
    {Name = "Screw ", ID = "rbxassetid://92282759692488"},
    {Name = "Hujan Di Tengah Malam | Emo X Pop Punk Indonesia", ID = "rbxassetid://92447730674697"},
    {Name = "Percaya Diri", ID = "rbxassetid://92547183733961"},
    {Name = "Permainan Kata", ID = "rbxassetid://92589844803766"},
    {Name = "Umbu Presidenku", ID = "rbxassetid://92787582316535"},
    {Name = "Fractured Gravity", ID = "rbxassetid://92869271600088"},
    {Name = "Keep Walking", ID = "rbxassetid://92890331726415"},
    {Name = "Buih", ID = "rbxassetid://92976398387545"},
    {Name = "文化祭シンフォニー", ID = "rbxassetid://92998168038422"},
    {Name = "Pelaminan Kelabu", ID = "rbxassetid://93009400915610"},
    {Name = "Pepita la ovejita", ID = "rbxassetid://93298744382907"},
    {Name = "Fantasize", ID = "rbxassetid://93391631643827"},
    {Name = "A Cold Summer Morning", ID = "rbxassetid://93399850792013"},
    {Name = "My Own Reflection's Song, Vol. 2", ID = "rbxassetid://93466904126618"},
    {Name = "Forever Wasn't Long Enough", ID = "rbxassetid://93485251092021"},
    {Name = "Kau Di Hatiku", ID = "rbxassetid://93596344950405"},
    {Name = "Bored", ID = "rbxassetid://93600830372003"},
    {Name = "Sonic Surge", ID = "rbxassetid://93671310577895"},
    {Name = "220 BPM Vintage Jazz Drum Track", ID = "rbxassetid://93687866077291"},
    {Name = "Mengapa Tiada Maaf", ID = "rbxassetid://93877364258588"},
    {Name = "Gerald's Secret Handshake", ID = "rbxassetid://93953978810477"},
    {Name = "offbalance", ID = "rbxassetid://93965057924109"},
    {Name = "Crash Override Dawn", ID = "rbxassetid://93974993575418"},
    {Name = "Sidewalk Shuffle", ID = "rbxassetid://94096444690641"},
    {Name = "Hayang Baso disanguan", ID = "rbxassetid://94098600557644"},
    {Name = "Almas Distintas", ID = "rbxassetid://94273986630412"},
    {Name = "Gettin' the Bunz", ID = "rbxassetid://94394007570509"},
    {Name = "granite", ID = "rbxassetid://94514636332890"},
    {Name = "Senandung Doa", ID = "rbxassetid://94523048452112"},
    {Name = "beautiful song", ID = "rbxassetid://94631155383435"},
    {Name = "steel", ID = "rbxassetid://94713778581423"},
    {Name = "Yare", ID = "rbxassetid://94824886384487"},
    {Name = "Christmas Carol Symphony", ID = "rbxassetid://94990843831149"},
    {Name = "I Give Myself \"Running Steady Edit\"", ID = "rbxassetid://95045354664557"},
    {Name = "Grup Seyran Limin derdo", ID = "rbxassetid://95054548188872"},
    {Name = "Rondo Alla Turca 'Turkish March'", ID = "rbxassetid://95122467092647"},
    {Name = "Sejuta Rasa | Rock Pop Music Indonesia", ID = "rbxassetid://95133697837196"},
    {Name = "Neon Mainframe", ID = "rbxassetid://95181604572507"},
    {Name = "Promenade", ID = "rbxassetid://95186092147948"},
    {Name = "N.W.O", ID = "rbxassetid://95317819427621"},
    {Name = "Growing Up with You", ID = "rbxassetid://95373794706767"},
    {Name = "concrete", ID = "rbxassetid://95500824410482"},
    {Name = "Bobby's Big Dream", ID = "rbxassetid://95607476719012"},
    {Name = "QUIET GHOSTS", ID = "rbxassetid://95640679869500"},
    {Name = "Joy", ID = "rbxassetid://95668459207907"},
    {Name = "Doa Orang Tua — Parents' Prayer", ID = "rbxassetid://95765279626110"},
    {Name = "Pram Bapak Minke", ID = "rbxassetid://95942433473615"},
    {Name = "125 Bpm Maksum Rhythm Arabic Maqsoum", ID = "rbxassetid://96058394841518"},
    {Name = "The Breakbeat Days", ID = "rbxassetid://96142109575204"},
    {Name = "Abadi Bersamamu", ID = "rbxassetid://96159173961268"},
    {Name = "Hayang Baso disanguan", ID = "rbxassetid://96165422586061"},
    {Name = "Pepperpot - Remastered", ID = "rbxassetid://96208476920505"},
    {Name = "Jangan Pernah Menyerah", ID = "rbxassetid://96378291814640"},
    {Name = "Coffee and Conversations", ID = "rbxassetid://96426602661085"},
    {Name = "Hitta", ID = "rbxassetid://96435690433601"},
    {Name = "Underpass", ID = "rbxassetid://96577299170624"},
    {Name = "Need a Hero", ID = "rbxassetid://96664775992849"},
    {Name = "I.L.D&B", ID = "rbxassetid://96836839765371"},
    {Name = "GLITCH AT 5:55 AM", ID = "rbxassetid://96942468399151"},
    {Name = "Cool Heat", ID = "rbxassetid://97020458022735"},
    {Name = "Suenos con brillo dorado", ID = "rbxassetid://97023137489916"},
    {Name = "Late Night", ID = "rbxassetid://97047519858963"},
    {Name = "8 Beat Retro Rock Drums (170 Bpm)", ID = "rbxassetid://97100773840045"},
    {Name = "Breakbeat Phantom", ID = "rbxassetid://97104261362780"},
    {Name = "Red Steel", ID = "rbxassetid://97169918200810"},
    {Name = "1st", ID = "rbxassetid://97194826383630"},
    {Name = "HOT", ID = "rbxassetid://97224066487221"},
    {Name = "يانور تيماء - فتى تيماء", ID = "rbxassetid://97295995994919"},
    {Name = "RAMPAS MAJAPAHIT A", ID = "rbxassetid://97478830354769"},
    {Name = "You'll Be The One", ID = "rbxassetid://97534276766378"},
    {Name = "Dendang Kasih di Ujung Senja", ID = "rbxassetid://97664495157989"},
    {Name = "Santri Indonesia", ID = "rbxassetid://97686967268859"},
    {Name = "TAHTA SRI MAHARAJA A", ID = "rbxassetid://97702652091774"},
    {Name = "Stream Of Consciousness 100", ID = "rbxassetid://97903355022554"},
    {Name = "Far From Home", ID = "rbxassetid://97946607335252"},
    {Name = "I'M Still Here", ID = "rbxassetid://98029326177771"},
    {Name = "Many Are Your Names", ID = "rbxassetid://98068038424614"},
    {Name = "Thank You For Visiting Indonesia", ID = "rbxassetid://98137923298581"},
    {Name = "Bolongo Omele Highlife loop", ID = "rbxassetid://98141975943582"},
    {Name = "Gugusan Piaynemo", ID = "rbxassetid://98184237878173"},
    {Name = "alamku", ID = "rbxassetid://98279051576501"},
    {Name = "One for the Horses, Two for the Men", ID = "rbxassetid://98344294713162"},
    {Name = "Loading Screen Infinity", ID = "rbxassetid://98434998274423"},
    {Name = "IrishEye", ID = "rbxassetid://98444616457324"},
    {Name = "Breakbeats and Burnt Toast", ID = "rbxassetid://98522412646683"},
    {Name = "Breakbeat Science", ID = "rbxassetid://98589813522373"},
    {Name = "Echo", ID = "rbxassetid://98595088624942"},
    {Name = "Twinkle Twinkle Lullaby", ID = "rbxassetid://98689219221161"},
    {Name = "Breakbeat Groove 2", ID = "rbxassetid://98768369866646"},
    {Name = "Walk On That Dog", ID = "rbxassetid://99059512324089"},
    {Name = "Pantai Tersembunyi", ID = "rbxassetid://99108066025009"},
    {Name = "Karma Asmara", ID = "rbxassetid://99213688433095"},
    {Name = "Gitu Aja Kok Repot", ID = "rbxassetid://99273699065941"},
    {Name = "Langkah Yang Terhenti | Pop Punk Indonesia", ID = "rbxassetid://99373770925026"},
    {Name = "Temp", ID = "rbxassetid://99437403127779"},
    {Name = "Coba Dipikirkan Secara Logika x Jamilah Wegah", ID = "rbxassetid://99474568031095"},
    {Name = "Don Giovanni La Ci Darem La Mano Revisited", ID = "rbxassetid://99501205832094"},
    {Name = "Hold Me Tonight", ID = "rbxassetid://99609502533688"},
    {Name = "True Nature", ID = "rbxassetid://99650607503171"},
    {Name = "Natraa | Our Indonesia", ID = "rbxassetid://99707851605786"},
    {Name = "Floating Metal Intervals", ID = "rbxassetid://100014426288815"},
    {Name = "YOU and ME and HER", ID = "rbxassetid://100055571716079"},
    {Name = "uang merubah hatimu", ID = "rbxassetid://100163797767444"},
    {Name = "Sujud Hati — Prostration of the Heart", ID = "rbxassetid://100552988087007"},
    {Name = "Unwanted Guitar", ID = "rbxassetid://100652535987894"},
    {Name = "Aku Suka Jedag Jedug Full Bass", ID = "rbxassetid://100787734732008"},
    {Name = "Angin | Emo X Pop Punk Indonesia", ID = "rbxassetid://100819411811116"},
    {Name = "गौळण - हरी माझा भोळा ग Gaulan - Hari Maza Bhola G", ID = "rbxassetid://100928541398531"},
    {Name = "Tuanku Imam Bonjol (1772–1864)", ID = "rbxassetid://100980152527008"},
    {Name = "Jalan Ilmu — Path of Knowledge", ID = "rbxassetid://101088653192953"},
    {Name = "Peluk Diriku | Pop Rock Indonesia", ID = "rbxassetid://101233884875890"},
    {Name = "Menghadapi Luka", ID = "rbxassetid://101236764029002"},
    {Name = "Menemukan Arti", ID = "rbxassetid://101243229906123"},
    {Name = "Cakrawala Yang Tenang | Emo X Pop Punk Indonesia", ID = "rbxassetid://101257262205648"},
    {Name = "Breaking Souls", ID = "rbxassetid://101278004364177"},
    {Name = "De Lema", ID = "rbxassetid://101335815730832"},
    {Name = "dirt", ID = "rbxassetid://101349583636610"},
    {Name = "Lunapark", ID = "rbxassetid://101491062908437"},
    {Name = "Warp Drive Lullaby", ID = "rbxassetid://101494693414094"},
    {Name = "Jamur Misteri Semesta", ID = "rbxassetid://101506966500997"},
    {Name = "Eternal Reality", ID = "rbxassetid://101618409061790"},
    {Name = "Forever Too Late", ID = "rbxassetid://101632661739650"},
    {Name = "CoreTax", ID = "rbxassetid://101751684625489"},
    {Name = "dengarkan ayah", ID = "rbxassetid://101759571272604"},
    {Name = "Friday", ID = "rbxassetid://101768701855140"},
    {Name = "No More Double Taps, Vol. 2", ID = "rbxassetid://101792788377048"},
    {Name = "Resonant Bronze Textures", ID = "rbxassetid://101820253484195"},
    {Name = "Boomshakalakaboom", ID = "rbxassetid://101824470324116"},
    {Name = "J.U.S.T_B.U.Y_I.T_N.O.W", ID = "rbxassetid://101904372561111"},
    {Name = "O XCIX · ASSOOP VI", ID = "rbxassetid://101987130952879"},
    {Name = "Pot Luck - Remastered", ID = "rbxassetid://102006754862928"},
    {Name = "Mélodie Céleste (Face B)", ID = "rbxassetid://102086390292070"},
    {Name = "Tarian Barong", ID = "rbxassetid://102121957103809"},
    {Name = "Demolitions Expert", ID = "rbxassetid://102123220276959"},
    {Name = "Janji Untuk Selalu", ID = "rbxassetid://102243069137065"},
    {Name = "vintage music box", ID = "rbxassetid://102376826426876"},
    {Name = "Bronze Harmonic Layers", ID = "rbxassetid://102385493824219"},
    {Name = "まっさらなノート", ID = "rbxassetid://102456935274044"},
    {Name = "Kitap Ormanında Yürüyüş", ID = "rbxassetid://102480346007201"},
    {Name = "New Beginnings", ID = "rbxassetid://102585242642108"},
    {Name = "Lo-fi Japanese Jolly Christmas 3", ID = "rbxassetid://102610659479660"},
    {Name = "'Til The Sun Go Down", ID = "rbxassetid://102617995439629"},
    {Name = "Its My Time", ID = "rbxassetid://102732310745399"},
    {Name = "terlelap dalam mimpi", ID = "rbxassetid://102760457982829"},
    {Name = "Sky Through The Atrium", ID = "rbxassetid://102822941739215"},
    {Name = "Hayang Baso disanguan", ID = "rbxassetid://102894698468163"},
    {Name = "Acid Burn's Reflection", ID = "rbxassetid://102911604640385"},
    {Name = "Ilusi Pertempuran", ID = "rbxassetid://103004171923328"},
    {Name = "Goodbye", ID = "rbxassetid://103009392949855"},
    {Name = "Sinyal Yok", ID = "rbxassetid://103075677368158"},
    {Name = "cicada", ID = "rbxassetid://103152846010455"},
    {Name = "Bintang Abadi", ID = "rbxassetid://103173092982636"},
    {Name = "Nebula Submersion", ID = "rbxassetid://103299183510225"},
    {Name = "Warehouse Pressure (UK Breakbeat Mix)", ID = "rbxassetid://103390035607049"},
    {Name = "Rindu Setengah Mati", ID = "rbxassetid://103447236688741"},
    {Name = "Breakbeat : Pyro Pulse", ID = "rbxassetid://103491797412309"},
    {Name = "Silent Night for Baby", ID = "rbxassetid://103512207014023"},
    {Name = "Berwali Rhythm (110 BPM)", ID = "rbxassetid://103601109195076"},
    {Name = "Suara Jalanan Jogja", ID = "rbxassetid://103813816301516"},
    {Name = "Freestyle Beat", ID = "rbxassetid://103857040411270"},
    {Name = "Clan Energy", ID = "rbxassetid://103979242138137"},
    {Name = "Goresan Canting Batik", ID = "rbxassetid://103990590824307"},
    {Name = "Silicon Beach", ID = "rbxassetid://104009505630890"},
    {Name = "Sri Mulia Hidupnya", ID = "rbxassetid://104014242633716"},
    {Name = "Queiro", ID = "rbxassetid://104018785373030"},
    {Name = "Penipu Cinta | Pop Rock Indonesia", ID = "rbxassetid://104078609930836"},
    {Name = "Nadi Mon Amour-Rai 3robi", ID = "rbxassetid://104185555513459"},
    {Name = "Không Ngủ Khi Vắng Em", ID = "rbxassetid://104221606462929"},
    {Name = "Semangat untuk anak indonesia", ID = "rbxassetid://104246351108629"},
    {Name = "Dangdut", ID = "rbxassetid://104269014728644"},
    {Name = "Late Night Breakbeat Session Trip Hop", ID = "rbxassetid://104270948346147"},
    {Name = "H && Q", ID = "rbxassetid://104353353037487"},
    {Name = "Lova Tulca", ID = "rbxassetid://104400528302590"},
    {Name = "I Won’T Fall Again", ID = "rbxassetid://104402733169694"},
    {Name = "Surga Bawah Laut", ID = "rbxassetid://104415341964444"},
    {Name = "Until The Dawn (Piano and Violin)", ID = "rbxassetid://104458870030466"},
    {Name = "DJ ALL OF ME IS YOURS BREAKBEAT", ID = "rbxassetid://104593616947405"},
    {Name = "Bottom of the Sea", ID = "rbxassetid://104661074256268"},
    {Name = "Sajj Chhiye Aaj Ame Yuvano", ID = "rbxassetid://104685587978003"},
    {Name = "Little Things", ID = "rbxassetid://104704608272609"},
    {Name = "Everything Is Gonna Be Alright", ID = "rbxassetid://104733172961097"},
    {Name = "Hanya Dirimu", ID = "rbxassetid://104791543659700"},
    {Name = "अभंग - वेढा रे पंढरी Abhang - Vedha Re Pandhari", ID = "rbxassetid://105091299168608"},
    {Name = "Kids Like It", ID = "rbxassetid://105095614390653"},
    {Name = "that i seek", ID = "rbxassetid://105108379373738"},
    {Name = "गौळण - अधरी धरुनी वेणू Gaulan Adhari Dharuni Venu", ID = "rbxassetid://105140883926623"},
    {Name = "Lockjaw", ID = "rbxassetid://105141268703366"},
    {Name = "BodyMovement", ID = "rbxassetid://105173192939767"},
    {Name = "Counting Stars", ID = "rbxassetid://105289452043939"},
    {Name = "Breakbeat Techno Assault", ID = "rbxassetid://105326312913875"},
    {Name = "Family Movie C", ID = "rbxassetid://105339392318414"},
    {Name = "Langkah Kita | Pop Punk Indonesia", ID = "rbxassetid://105385272788102"},
    {Name = "Amapiano hit 2025 (Amazon)", ID = "rbxassetid://105441441524332"},
    {Name = "Cahaya Al-Akhlaq — Light of Good Character", ID = "rbxassetid://105604552526136"},
    {Name = "Indonesian Allstars", ID = "rbxassetid://105614561925547"},
    {Name = "Break on all the Dancefloors", ID = "rbxassetid://105682326408993"},
    {Name = "####################", ID = "rbxassetid://105883390274308"},
    {Name = "Breakbeat : Rising City Echo", ID = "rbxassetid://105999369811833"},
    {Name = "Only You and Me", ID = "rbxassetid://106052800186736"},
    {Name = "Pejuang Tampan", ID = "rbxassetid://106068096920700"},
    {Name = "Jangan Menangis Lagi | Pop Rock Indonesia", ID = "rbxassetid://106082720247379"},
    {Name = "Toxic (Florida Breakbeat Weapon)", ID = "rbxassetid://106150468294833"},
    {Name = "“Asha Ka Darpan” (Hindi – Inde)", ID = "rbxassetid://106152455757022"},
    {Name = "##############", ID = "rbxassetid://106334266138074"},
    {Name = "Medieval Tea Tale", ID = "rbxassetid://106338518490874"},
    {Name = "Dancing Clouds", ID = "rbxassetid://106368281978694"},
    {Name = "Graveyard Waltz", ID = "rbxassetid://106416707652602"},
    {Name = "Ney & Kanun Nihavend Taksim", ID = "rbxassetid://106469393000722"},
    {Name = "Kalau Aku Kaya Raya", ID = "rbxassetid://106563127983942"},
    {Name = "Dangdut", ID = "rbxassetid://106616715733558"},
    {Name = "Fear on the Mend", ID = "rbxassetid://106634057542898"},
    {Name = "Heaven", ID = "rbxassetid://106796619957176"},
    {Name = "Cahaya Qiblat — Light of the Qibla", ID = "rbxassetid://106857260737949"},
    {Name = "Silent Snow", ID = "rbxassetid://106889206730166"},
    {Name = "fulminated mercury", ID = "rbxassetid://107115109838914"},
    {Name = "Phreak's Fantasy", ID = "rbxassetid://107139197599181"},
    {Name = "Lantern of Souls (90 BPM)", ID = "rbxassetid://107143264615446"},
    {Name = "Edge Of Loneliness", ID = "rbxassetid://107183308977206"},
    {Name = "Terrification", ID = "rbxassetid://107190977452438"},
    {Name = "Breakbeat Dream", ID = "rbxassetid://107233359407505"},
    {Name = "Corrido de Trilico", ID = "rbxassetid://107260287823586"},
    {Name = "Psalm 119 (The Law of the Lord), Pt. Twenty-Two", ID = "rbxassetid://107306711308108"},
    {Name = "Last of the Rad (Red's Mix)", ID = "rbxassetid://107366846719538"},
    {Name = "Tak Kusangka", ID = "rbxassetid://107396988039804"},
    {Name = "cukup satu kali", ID = "rbxassetid://107415406064867"},
    {Name = "Ombak Yang Bercerita | Emo X Pop Punk Indonesia", ID = "rbxassetid://107463716651285"},
    {Name = "Sang Pejuang", ID = "rbxassetid://107483499219016"},
    {Name = "We Meet Again", ID = "rbxassetid://107518505481095"},
    {Name = "Night Calm", ID = "rbxassetid://107545106893938"},
    {Name = "A Homesick Apple's Industrial Blues(Rotten)", ID = "rbxassetid://107619272581022"},
    {Name = "Rindu Tanjung Perak", ID = "rbxassetid://107678073687321"},
    {Name = "######################", ID = "rbxassetid://107723056753163"},
    {Name = "ឧត្តរមានជ័យ", ID = "rbxassetid://107730206618956"},
    {Name = "Nusantara Baru, Indonesia Maju (Versi Keenam)", ID = "rbxassetid://107787048761822"},
    {Name = "(Down) Payment ID Nusantara", ID = "rbxassetid://107827771430987"},
    {Name = "Breakbeat Groove", ID = "rbxassetid://107902200890946"},
    {Name = "Classic Spanish", ID = "rbxassetid://107936185050626"},
    {Name = "Doa di Malam Sepi — Prayer in the Quiet Night", ID = "rbxassetid://107968068225860"},
    {Name = "Breakbeats roll qube", ID = "rbxassetid://108058154381272"},
    {Name = "Orpheus Odyssey Ode to the Eternal Flame", ID = "rbxassetid://108102253411576"},
    {Name = "Payphone Hypnosis", ID = "rbxassetid://108111248446854"},
    {Name = "Irama Pulau Kebebasan", ID = "rbxassetid://108232733996879"},
    {Name = "Saturday Night House party Pt. 2", ID = "rbxassetid://108291833506141"},
    {Name = "Harapan Setelah Ujian — Hope After Trials", ID = "rbxassetid://108334863726386"},
    {Name = "Jingle Bells (live 2024)", ID = "rbxassetid://108350821461545"},
    {Name = "breakgaze untitled ptone", ID = "rbxassetid://108374537882824"},
    {Name = "bayangan takdir", ID = "rbxassetid://108455751424853"},
    {Name = "Gili Trawangan", ID = "rbxassetid://108526648439012"},
    {Name = "Who Am I", ID = "rbxassetid://108556908140218"},
    {Name = "220 BPM Jazz Drummer", ID = "rbxassetid://108594244001974"},
    {Name = "Cayenne", ID = "rbxassetid://108660084669744"},
    {Name = "No Me Apagues Ahora", ID = "rbxassetid://108688386198079"},
    {Name = "I found You", ID = "rbxassetid://108725202210256"},
    {Name = "Slow Lullaby Air", ID = "rbxassetid://108756664779368"},
    {Name = "“Menunggu Pagi”", ID = "rbxassetid://108801847033880"},
    {Name = "Get Higher", ID = "rbxassetid://108990704980124"},
    {Name = "SINGGASANA RADEN WIJAYA A", ID = "rbxassetid://109000491424920"},
    {Name = "Willie Wagtail - Remastered", ID = "rbxassetid://109002149714659"},
    {Name = "Last Train To Breakbeat (Nu Skool Breaks)", ID = "rbxassetid://109011488337369"},
    {Name = "Milling About(Lip Devotion 2)", ID = "rbxassetid://109130126268754"},
    {Name = "Neon Mirage – Latin Breakbeat Vision", ID = "rbxassetid://109152610170479"},
    {Name = "Holiday Mood- Remastered", ID = "rbxassetid://109320497577352"},
    {Name = "Gagner (ได้รับ)", ID = "rbxassetid://109363997419618"},
    {Name = "SCAR", ID = "rbxassetid://109428761812410"},
    {Name = "Hayang Baso disanguan", ID = "rbxassetid://109468460076916"},
    {Name = "Dangdut", ID = "rbxassetid://109591909360198"},
    {Name = "Chasing The Impossible", ID = "rbxassetid://109604343337704"},
    {Name = "Peace, love, and Bali", ID = "rbxassetid://109614493509410"},
    {Name = "Break the Tower", ID = "rbxassetid://109809486111393"},
    {Name = "Cawan Madu", ID = "rbxassetid://109825923603659"},
    {Name = "The Night Club", ID = "rbxassetid://109907972195751"},
    {Name = "Night Siren", ID = "rbxassetid://109941513326196"},
    {Name = "If This Aint Love", ID = "rbxassetid://109987808466478"},
    {Name = "Break it in the Jungle", ID = "rbxassetid://110077026200484"},
    {Name = "Fire In My Soul \"Big Vein Edit\"", ID = "rbxassetid://110078768633259"},
    {Name = "Sunrise Groove (Latin Pop)", ID = "rbxassetid://110122693042710"},
    {Name = "Blaze", ID = "rbxassetid://110129249682511"},
    {Name = "Dil-e-Mohabbat 2.0", ID = "rbxassetid://110139387234017"},
    {Name = "breakgaze untitled ptthree", ID = "rbxassetid://110148371779727"},
    {Name = "Indonesia emas", ID = "rbxassetid://110150329742123"},
    {Name = "Noël sous le Même Ciel", ID = "rbxassetid://110418817586587"},
    {Name = "BALDUR'S BREAKBEAT", ID = "rbxassetid://110575435904527"},
    {Name = "Syair Cinta di Bawah Pelita", ID = "rbxassetid://110602193749544"},
    {Name = "Cinematic Trip-Hop Breakbeats", ID = "rbxassetid://110766636440720"},
    {Name = "Kita Berakhir Sebelum Pergi", ID = "rbxassetid://110893143056721"},
    {Name = "Burnt up", ID = "rbxassetid://111052976462328"},
    {Name = "Burkina Denou", ID = "rbxassetid://111147759227800"},
    {Name = "Signs of Significance", ID = "rbxassetid://111158035615355"},
    {Name = "Time to Break", ID = "rbxassetid://111166869697942"},
    {Name = "back 2 me", ID = "rbxassetid://111352348560287"},
    {Name = "Free Franky (Island Boys Into The Void)", ID = "rbxassetid://111413635192841"},
    {Name = "Kör Adamın Gazeli", ID = "rbxassetid://111454815540677"},
    {Name = "Soviet Anthem (State Anthem of the USSR)", ID = "rbxassetid://111473215196479"},
    {Name = "Important Announcement", ID = "rbxassetid://111516156327486"},
    {Name = "Malo Sene", ID = "rbxassetid://111555940112281"},
    {Name = "Merangkai Kembali", ID = "rbxassetid://111566614772700"},
    {Name = "Hak Mani Bewase Taw", ID = "rbxassetid://111575477024555"},
    {Name = "Hanya Diriku", ID = "rbxassetid://111642341850105"},
    {Name = "Mandolin", ID = "rbxassetid://111707735498728"},
    {Name = "Full Throttle \"Full Send Edit\"", ID = "rbxassetid://111798701881490"},
    {Name = "คนสู้ชีวิต.ไม่เคยยอมแพ้", ID = "rbxassetid://111838773821502"},
    {Name = "Roof Access Ambient", ID = "rbxassetid://111997772336689"},
    {Name = "lobster match", ID = "rbxassetid://112031992989181"},
    {Name = "Breakbeat Memorial Service", ID = "rbxassetid://112166533585496"},
    {Name = "BANGBANG", ID = "rbxassetid://112276210623183"},
    {Name = "Sebuah Lagu Indonesia", ID = "rbxassetid://112287730284203"},
    {Name = "Dangdut", ID = "rbxassetid://112298149597283"},
    {Name = "Hati Bahagia", ID = "rbxassetid://112357725482663"},
    {Name = "Hati Yang Tersesat", ID = "rbxassetid://112374483294581"},
    {Name = "Fluidity", ID = "rbxassetid://112385047253935"},
    {Name = "Terlambat | Pop Punk Indonesia", ID = "rbxassetid://112567440115634"},
    {Name = "Hayang Baso disanguan", ID = "rbxassetid://112642820190417"},
    {Name = "Umama Uyalila By Chipmunks", ID = "rbxassetid://112678145223362"},
    {Name = "Hug the Ones You Love", ID = "rbxassetid://112727617501920"},
    {Name = "Cahaya Ramadhan Anak — Children’s Ramadan Light", ID = "rbxassetid://112727719002148"},
    {Name = "Future Made \"VR Edit\".", ID = "rbxassetid://112732067530958"},
    {Name = "Bujang Lapuk", ID = "rbxassetid://112758907055390"},
    {Name = "Snap To It", ID = "rbxassetid://112781407657305"},
    {Name = "Whispered Flamenco", ID = "rbxassetid://112787709177143"},
    {Name = "Oh Indonesia", ID = "rbxassetid://112892534705672"},
    {Name = "Shaaby Rhythm (110 BPM)", ID = "rbxassetid://112912197292804"},
    {Name = "Berbeda Arah | Emo X Pop Punk Indonesia", ID = "rbxassetid://112939669539771"},
    {Name = "Turn The Darkness Gold", ID = "rbxassetid://113171790769897"},
    {Name = "Static", ID = "rbxassetid://113186915422956"},
    {Name = "Month After Month(Humming Right Along)", ID = "rbxassetid://113240594948184"},
    {Name = "Welcome to Indonesia", ID = "rbxassetid://113292163703293"},
    {Name = "Kabut Rasa", ID = "rbxassetid://113317903649786"},
    {Name = "Slowly Burn Reverie", ID = "rbxassetid://113343415763823"},
    {Name = "Gathjodo (Vivah Geet)", ID = "rbxassetid://113360303459739"},
    {Name = "Handsomely Matched Apples", ID = "rbxassetid://113505861772345"},
    {Name = "The Last Day", ID = "rbxassetid://113516821212991"},
    {Name = "คนรักที่อยู่ไกล", ID = "rbxassetid://113555245035054"},
    {Name = "Sumatra Natural Balance", ID = "rbxassetid://113564485769721"},
    {Name = "Reverse DLR", ID = "rbxassetid://113572185764431"},
    {Name = "Credits", ID = "rbxassetid://113595932292936"},
    {Name = "Reda | Pop Punk Indonesia", ID = "rbxassetid://113701633747008"},
    {Name = "Point Me at the Sky", ID = "rbxassetid://113711083441753"},
    {Name = "Downtown Hillwood", ID = "rbxassetid://113777389417513"},
    {Name = "RINDIK SUNYI A", ID = "rbxassetid://113827729626755"},
    {Name = "Indonesia", ID = "rbxassetid://113914345764732"},
    {Name = "Break Through The Silence", ID = "rbxassetid://113987901653966"},
    {Name = "New Home", ID = "rbxassetid://114069423920085"},
    {Name = "Arabic Low Tempo 4/4 Rhythm (110 BPM Tempo)", ID = "rbxassetid://114093953283180"},
    {Name = "Asap Harum Malam Sunyi", ID = "rbxassetid://114120366762143"},
    {Name = "Keep Dancing", ID = "rbxassetid://114287686953624"},
    {Name = "Woodbattle", ID = "rbxassetid://114427180935776"},
    {Name = "breakgaze untitled pttwo", ID = "rbxassetid://114561311586070"},
    {Name = "Drummin' State", ID = "rbxassetid://114566940388951"},
    {Name = "Pretty Slowly", ID = "rbxassetid://114774217085721"},
    {Name = "Castillos de Arena", ID = "rbxassetid://114808875991702"},
    {Name = "Hati Yang Bersyukur — A Grateful Heart", ID = "rbxassetid://114918391697997"},
    {Name = "ceramic", ID = "rbxassetid://114978540018538"},
    {Name = "Tak Akan Padam | Emo X Pop Punk Indonesia", ID = "rbxassetid://115035257005697"},
    {Name = "CooKie HYOJAE", ID = "rbxassetid://115054914817910"},
    {Name = "Pressure Room (Breakbeat)", ID = "rbxassetid://115055414200898"},
    {Name = "Never Give Up", ID = "rbxassetid://115068450099066"},
    {Name = "Pasir Merah Muda", ID = "rbxassetid://115113405436980"},
    {Name = "DJ BREAKBEAT BARAT, Vol. 1", ID = "rbxassetid://115153624060642"},
    {Name = "Let Them", ID = "rbxassetid://115153679165745"},
    {Name = "No balanço da rede ao luar", ID = "rbxassetid://115156919436625"},
    {Name = "Cahaya Kemenangan Haqq — Light of Truth’s Victory", ID = "rbxassetid://115170024900440"},
    {Name = "VINVIN I BREAKBEAT 1 II", ID = "rbxassetid://115259177751410"},
    {Name = "未来まで好きになる", ID = "rbxassetid://115268323302675"},
    {Name = "Veteran On Wheels- Remastered", ID = "rbxassetid://115356022166345"},
    {Name = "Pengumuman Disclaimer", ID = "rbxassetid://115373696087731"},
    {Name = "GETTING READY", ID = "rbxassetid://115499228139524"},
    {Name = "Shout it out for the Breakbeat Days", ID = "rbxassetid://115579677683252"},
    {Name = "Until the Last Heartbeat", ID = "rbxassetid://115631523879840"},
    {Name = "Hanya Mimpi | Rock Pop Music Indonesia", ID = "rbxassetid://115799119001472"},
    {Name = "Indonesia Jangan Menangis", ID = "rbxassetid://115823102619075"},
    {Name = "Domestic violence (Indonesian)", ID = "rbxassetid://115837107057684"},
    {Name = "Nusantara Baru, Indonesia Maju (Versi Pertama)", ID = "rbxassetid://115931545626375"},
    {Name = "Yesterday", ID = "rbxassetid://115945695719548"},
    {Name = "Blood on the Breakbeat", ID = "rbxassetid://116174804782999"},
    {Name = "Hati Yang Retak", ID = "rbxassetid://116543714654689"},
    {Name = "R...r....................", ID = "rbxassetid://116640296390054"},
    {Name = "that i seek", ID = "rbxassetid://116725226750572"},
    {Name = "Hijau Rimbun", ID = "rbxassetid://116742332943165"},
    {Name = "Holy Spirit", ID = "rbxassetid://116774527646991"},
    {Name = "Full Throttle", ID = "rbxassetid://116986585729266"},
    {Name = "Breakbeat Heartbeat", ID = "rbxassetid://117008245079459"},
    {Name = "Uang (Cuan)", ID = "rbxassetid://117126521330615"},
    {Name = "Celestia e Silencio", ID = "rbxassetid://117148576904763"},
    {Name = "Thank You Forever", ID = "rbxassetid://117162967710397"},
    {Name = "the page, the pattern, the picture", ID = "rbxassetid://117179627848390"},
    {Name = "BREAKBEAT PIANO", ID = "rbxassetid://117236172072103"},
    {Name = "Hinundayan (I Still Come Home)", ID = "rbxassetid://117266867014846"},
    {Name = "Calm Beginnings . Tanbur Meditation I", ID = "rbxassetid://117277105385366"},
    {Name = "Beyond the Veil", ID = "rbxassetid://117302441849854"},
    {Name = "Kick It", ID = "rbxassetid://117319879647586"},
    {Name = "Dangerous Life", ID = "rbxassetid://117412215406987"},
    {Name = "Longshore drift", ID = "rbxassetid://117486052686600"},
    {Name = "Samay bayati", ID = "rbxassetid://117488465485062"},
    {Name = "A BREAKBEAT CHRISTMAS", ID = "rbxassetid://117524989638619"},
    {Name = "JAY | Blackhole Breakbeat", ID = "rbxassetid://117574079633196"},
    {Name = "Indonesia Pusaka", ID = "rbxassetid://117608920840233"},
    {Name = "Butterfly Dance (나비의 춤)", ID = "rbxassetid://117643777667165"},
    {Name = "Dark Ages", ID = "rbxassetid://117677473059741"},
    {Name = "Autumn's Fall", ID = "rbxassetid://117718123334609"},
    {Name = "Can't Look Away (Classic Breakbeat)", ID = "rbxassetid://117727582073729"},
    {Name = "################################", ID = "rbxassetid://117975178357745"},
    {Name = "Neural", ID = "rbxassetid://117978214598954"},
    {Name = "Cinta Di Setiap Detik", ID = "rbxassetid://118057288321617"},
    {Name = "PROGRESS", ID = "rbxassetid://118296974220682"},
    {Name = "Zikir Pagi — Morning Remembrance", ID = "rbxassetid://118459980839501"},
    {Name = "HAYAM WURUK INTERLUDE A", ID = "rbxassetid://118484762345224"},
    {Name = "##################", ID = "rbxassetid://118709731496746"},
    {Name = "Senyum Mulai Pudar", ID = "rbxassetid://118736589327247"},
    {Name = "The Euclid Chillout Room", ID = "rbxassetid://118954585596559"},
    {Name = "Indonesia – Gamelan Trance Disco", ID = "rbxassetid://119093288421761"},
    {Name = "DJ MISSING YOU BREAKBEAT", ID = "rbxassetid://119116468910055"},
    {Name = "WC jongkok cintaku", ID = "rbxassetid://119183154540323"},
    {Name = "Holiday Song", ID = "rbxassetid://119190682207302"},
    {Name = "Two Sisters, One Soul", ID = "rbxassetid://119213318852399"},
    {Name = "Just Jenny", ID = "rbxassetid://119363936743917"},
    {Name = "39,1 Tanbur Improvisation", ID = "rbxassetid://119397079151006"},
    {Name = "Where the Northern Rivers Flow | Breakbeat Fusion", ID = "rbxassetid://119589526439627"},
    {Name = "Grace", ID = "rbxassetid://119671609014234"},
    {Name = "Living Without Us", ID = "rbxassetid://119732741994782"},
    {Name = "Kasih Pergi", ID = "rbxassetid://119774869488515"},
    {Name = "HAYAM WURUK PRELUDE A", ID = "rbxassetid://119832221330194"},
    {Name = "Friars at Dawn Chime", ID = "rbxassetid://119860895671965"},
    {Name = "Proximo Golpe", ID = "rbxassetid://119922736782765"},
    {Name = "La Guerra Perdida", ID = "rbxassetid://120022798363192"},
    {Name = "Dulce y Bonita", ID = "rbxassetid://120074665800086"},
    {Name = "Shouting", ID = "rbxassetid://120083302477933"},
    {Name = "Legacy of the North Wind", ID = "rbxassetid://120125528467207"},
    {Name = "marble", ID = "rbxassetid://120181024505184"},
    {Name = "Berubah", ID = "rbxassetid://120226132084901"},
    {Name = "Wild Grace", ID = "rbxassetid://120440945967707"},
    {Name = "Perjalanan Hidup Ini (Indonesian)", ID = "rbxassetid://120449344389710"},
    {Name = "That's OK", ID = "rbxassetid://120501625257490"},
    {Name = "Give Myself", ID = "rbxassetid://120589757413772"},
    {Name = "Deck the Halls/Jingle Bells Mashup", ID = "rbxassetid://120628500425246"},
    {Name = "Nước Mắt Rơi", ID = "rbxassetid://120632781106185"},
    {Name = "Pipedream", ID = "rbxassetid://120719141432979"},
    {Name = "Indonesia (Instrumental)", ID = "rbxassetid://120753804960891"},
    {Name = "Martha's Melody - Remastered", ID = "rbxassetid://120953973102338"},
    {Name = "God is my Protector", ID = "rbxassetid://120986542775546"},
    {Name = "Karma", ID = "rbxassetid://121054813561169"},
    {Name = "Indonesian Girls", ID = "rbxassetid://121072379807488"},
    {Name = "Just My Canvas, Vol. 2", ID = "rbxassetid://121232664703766"},
    {Name = "Dreaming Back to You", ID = "rbxassetid://121294775786934"},
    {Name = "Breakbeat : Chaos Convergence", ID = "rbxassetid://121349524628739"},
    {Name = "The wholesome world", ID = "rbxassetid://121351672519124"},
    {Name = "TOXIC", ID = "rbxassetid://121354720549532"},
    {Name = "No One Knows", ID = "rbxassetid://121354846247954"},
    {Name = "dalam redup hatiku", ID = "rbxassetid://121378952695285"},
    {Name = "Celestial Paths", ID = "rbxassetid://121557952131905"},
    {Name = "Perempuan Indonesia Zamrud Khatulistiwa", ID = "rbxassetid://121594970364568"},
    {Name = "Senja Surabaya", ID = "rbxassetid://121673332099446"},
    {Name = "Bisa Lebih Baik", ID = "rbxassetid://121674280117395"},
    {Name = "Reverse Feeling", ID = "rbxassetid://121721315280522"},
    {Name = "Ambient Tennessee Rain", ID = "rbxassetid://121769859605346"},
    {Name = "Hari-Hari Itu (Indonesian)", ID = "rbxassetid://121802081864027"},
    {Name = "Pulang Kampung", ID = "rbxassetid://121830966537023"},
    {Name = "Here Now", ID = "rbxassetid://121831255356728"},
    {Name = "Nothing Can Stop Me", ID = "rbxassetid://121984275175577"},
    {Name = "Sambalku, Cintaku", ID = "rbxassetid://122014566733328"},
    {Name = "Echoes of the Underground", ID = "rbxassetid://122302899154831"},
    {Name = "Dangdut", ID = "rbxassetid://122308384213418"},
    {Name = "Gamelan Without Pulse", ID = "rbxassetid://122341055760449"},
    {Name = "Dendang Kasih di Ujung Senja", ID = "rbxassetid://122378184670843"},
    {Name = "אני פינוקיו ילד העץ", ID = "rbxassetid://122435029973218"},
    {Name = "End of Eternity", ID = "rbxassetid://122457948229703"},
    {Name = "Breakbeat Brother", ID = "rbxassetid://122564249715073"},
    {Name = "Budaya Nongkrong", ID = "rbxassetid://122700635668842"},
    {Name = "Wheezing Ed", ID = "rbxassetid://122725638903173"},
    {Name = "Things Are Moving - Remastered", ID = "rbxassetid://122747018876645"},
    {Name = "Nusantara Baru, Indonesia Maju (Versi Keempat)", ID = "rbxassetid://122809405209197"},
    {Name = "Martha Christina Tiahahu (1800–1818)", ID = "rbxassetid://122818985167172"},
    {Name = "Sunrise Sound", ID = "rbxassetid://122820085222427"},
    {Name = "Semangat Pagi", ID = "rbxassetid://122827602727670"},
    {Name = "###################", ID = "rbxassetid://122867587038870"},
    {Name = "nube sobre el mar", ID = "rbxassetid://123244709734904"},
    {Name = "PURNAWARMAN A", ID = "rbxassetid://123314280037020"},
    {Name = "REINA DE REINAS (Latin Gospel)", ID = "rbxassetid://123424892571898"},
    {Name = "Do Anything", ID = "rbxassetid://123448498640335"},
    {Name = "Different Person", ID = "rbxassetid://123672504930577"},
    {Name = "Indah | Pop Rock Indonesia", ID = "rbxassetid://123805547642120"},
    {Name = "Praise For real \"Tribe Wars Edit\"", ID = "rbxassetid://123836215613386"},
    {Name = "Breaks from the Darkside", ID = "rbxassetid://123957416891771"},
    {Name = "Jangan Sakiti Hatinya", ID = "rbxassetid://124027138086932"},
    {Name = "We Will Rise Again", ID = "rbxassetid://124119663810327"},
    {Name = "Kamar Budi Siti (Jangan Ngeres)", ID = "rbxassetid://124131035701186"},
    {Name = "The Lion", ID = "rbxassetid://124229395358793"},
    {Name = "One World", ID = "rbxassetid://124241265481300"},
    {Name = "Misteri Pantai Selatan", ID = "rbxassetid://124267726267185"},
    {Name = "Johnny's Shoulder", ID = "rbxassetid://124276975072423"},
    {Name = "Inside Project", ID = "rbxassetid://124322390745709"},
    {Name = "Syukur di Meja Makan — Gratitude at the Table", ID = "rbxassetid://124393082500734"},
    {Name = "Cawan Madu", ID = "rbxassetid://124413770624321"},
    {Name = "Fajar Indonesia", ID = "rbxassetid://124416052259260"},
    {Name = "House songs", ID = "rbxassetid://124659683005482"},
    {Name = "Indonesia's Sri Vijaya Tide", ID = "rbxassetid://124969919184022"},
    {Name = "Puncak Kuning Tumpeng", ID = "rbxassetid://125061115577488"},
    {Name = "La Voz del Mar", ID = "rbxassetid://125105240946364"},
    {Name = "Semua Bisa", ID = "rbxassetid://125120061503990"},
    {Name = "गौळण - दुडी वर दुडी Gaulan - Dudi Vr Dudi", ID = "rbxassetid://125130996832686"},
    {Name = "Shine Forever", ID = "rbxassetid://125209061523024"},
    {Name = "A Balancing Act(Help Me Help You Help Yourself)", ID = "rbxassetid://125416099272933"},
    {Name = "Middle East 4/4 Arabic Style (120 BPM Tempo)", ID = "rbxassetid://125444474753603"},
    {Name = "Turn Your Eyes", ID = "rbxassetid://125468278348227"},
    {Name = "Envole toi pere noel", ID = "rbxassetid://125508656149174"},
    {Name = "Children of the Quanta", ID = "rbxassetid://125515691824483"},
    {Name = "Camp", ID = "rbxassetid://125576443620574"},
    {Name = "El Puente", ID = "rbxassetid://125601027511678"},
    {Name = "Tempatku Pulang", ID = "rbxassetid://125654265518740"},
    {Name = "Home is Where the Heart Is", ID = "rbxassetid://125732860552009"},
    {Name = "Playful Youth Main Christmas Mix", ID = "rbxassetid://125804257476884"},
    {Name = "Kasih Ibu", ID = "rbxassetid://125808212598994"},
    {Name = "Bunga Malam Dibalik Lampu Merah", ID = "rbxassetid://126173373266557"},
    {Name = "breakgaze untitled ptfour", ID = "rbxassetid://126249890988148"},
    {Name = "Lezatnya Nasi Goreng", ID = "rbxassetid://126274975198031"},
    {Name = "Maberu", ID = "rbxassetid://126308766537270"},
    {Name = "BreakBEAT Boxterz", ID = "rbxassetid://126376192423056"},
    {Name = "Lonely Lights", ID = "rbxassetid://126522853611292"},
    {Name = "Pesona Pasar Malam", ID = "rbxassetid://126625378797860"},
    {Name = "Kedamaian Danau Toba", ID = "rbxassetid://126646512028188"},
    {Name = "Praise For Real", ID = "rbxassetid://126685161496254"},
    {Name = "The Peng beat", ID = "rbxassetid://126868929394385"},
    {Name = "Dangdut", ID = "rbxassetid://126871315644602"},
    {Name = "Bossa Nae-va (Music Box)", ID = "rbxassetid://126883716797537"},
    {Name = "Forest Fireflies", ID = "rbxassetid://127111976330374"},
    {Name = "Dalam Gelap, Ku Temukan Terang", ID = "rbxassetid://127132782673326"},
    {Name = "Ombak timur indonesia", ID = "rbxassetid://127171528480686"},
    {Name = "先輩、ずるいくらい眩しくて", ID = "rbxassetid://127255689898199"},
    {Name = "Fahmi", ID = "rbxassetid://127264588125654"},
    {Name = "Behind the Wall", ID = "rbxassetid://127331865612697"},
    {Name = "Event Indonesia Tercinta Merdeka", ID = "rbxassetid://127425103220977"},
    {Name = "Headache", ID = "rbxassetid://127487712875150"},
    {Name = "I Am a Reason", ID = "rbxassetid://127514734904994"},
    {Name = "Blister", ID = "rbxassetid://127514824186684"},
    {Name = "Naungan Rahmat — Shade of Mercy", ID = "rbxassetid://127595587722738"},
    {Name = "130 Bpm Maksum Rhythm Arabic Maqsoum", ID = "rbxassetid://127625766394319"},
    {Name = "Borobudur", ID = "rbxassetid://127630310017081"},
    {Name = "Dangdut", ID = "rbxassetid://127664057235628"},
    {Name = "Indonesia Merdeka Selamanya", ID = "rbxassetid://127681098321651"},
    {Name = "Fuego Del Amor", ID = "rbxassetid://127682058415934"},
    {Name = "Savan Ke Mahine Mein", ID = "rbxassetid://127734114174494"},
    {Name = "dinginya hatiku", ID = "rbxassetid://127812965779727"},
    {Name = "Like You Think", ID = "rbxassetid://127829565632716"},
    {Name = "Under The Indonesian Moonlight", ID = "rbxassetid://127862512987151"},
    {Name = "Rumah Saya", ID = "rbxassetid://127870623928857"},
    {Name = "Hail Columbia", ID = "rbxassetid://128005156849550"},
    {Name = "No Place To Run", ID = "rbxassetid://128046582961228"},
    {Name = "Michael 2 (Jaafar Jackson) Indonesia Remix", ID = "rbxassetid://128047028650217"},
    {Name = "One More Sunrise", ID = "rbxassetid://128085038602576"},
    {Name = "Lespwa", ID = "rbxassetid://128115721029045"},
    {Name = "Stream Of Consciousness: 52", ID = "rbxassetid://128201465905709"},
    {Name = "Bangku Kosong | Emo X Pop Punk Indonesia", ID = "rbxassetid://128254564484382"},
    {Name = "Space Station '98", ID = "rbxassetid://128285716110465"},
    {Name = "Untuk dunia yang lebih indah (indonesian)", ID = "rbxassetid://128337714097960"},
    {Name = "Burn the Pain", ID = "rbxassetid://128370254300410"},
    {Name = "Can't Hold Back", ID = "rbxassetid://128411902649712"},
    {Name = "Overdrive", ID = "rbxassetid://128492255671465"},
    {Name = "Segarnya Jamu Gendong", ID = "rbxassetid://128555602990271"},
    {Name = "Victory", ID = "rbxassetid://128581160511924"},
    {Name = "Subsonic Storm", ID = "rbxassetid://128764060248781"},
    {Name = "Northern Albanian Motifs", ID = "rbxassetid://128797926330159"},
    {Name = "Oi!", ID = "rbxassetid://128822873375104"},
    {Name = "Certified", ID = "rbxassetid://128981246528552"},
    {Name = "EID Mubarak (Kashmir to Turkey)", ID = "rbxassetid://129008937885789"},
    {Name = "Inside The Machine", ID = "rbxassetid://129308887042999"},
    {Name = "Ananda", ID = "rbxassetid://129312673572993"},
    {Name = "Bujang Lapuk", ID = "rbxassetid://129440026429331"},
    {Name = "Van is the New Horse", ID = "rbxassetid://129457358206889"},
    {Name = "Harum Canang Sari", ID = "rbxassetid://129519212115490"},
    {Name = "Balada Penari", ID = "rbxassetid://129523481801669"},
    {Name = "Midnight CMD", ID = "rbxassetid://129605191020264"},
    {Name = "Breakbeat Fire at the Corner Spot", ID = "rbxassetid://129631952085138"},
    {Name = "Dangdut", ID = "rbxassetid://129650616105343"},
    {Name = "Sang Pelangi | Rock Pop Indonesia", ID = "rbxassetid://129677908533603"},
    {Name = "Moonlit Echoes", ID = "rbxassetid://129734280515557"},
    {Name = "Chillatro", ID = "rbxassetid://129812200109987"},
    {Name = "You Know", ID = "rbxassetid://129833686786362"},
    {Name = "Crown of the Afterglow", ID = "rbxassetid://129847136649644"},
    {Name = "Cut Nyak Dhien (1848–1908)", ID = "rbxassetid://129966046332839"},
    {Name = "Los Pepés (Lullaby)", ID = "rbxassetid://129977481805484"},
    {Name = "One 2.0", ID = "rbxassetid://130078266167249"},
    {Name = "Warisan Bangsa, Harumkan Indonesia", ID = "rbxassetid://130156060103864"},
    {Name = "Jejak Haji — Footsteps of Hajj", ID = "rbxassetid://130179200183246"},
    {Name = "Slow Burn Acceptance, Vol. 1", ID = "rbxassetid://130367833089631"},
    {Name = "Jalan Sendiri", ID = "rbxassetid://130520003629503"},
    {Name = "I'm Not An Empty Space", ID = "rbxassetid://130525003362219"},
    {Name = "Bonfire", ID = "rbxassetid://130527333530438"},
    {Name = "Dissolved Interlocking Patterns", ID = "rbxassetid://130791283501324"},
    {Name = "Happy Families - Remastered", ID = "rbxassetid://130967716273398"},
    {Name = "WIR SIND DRAUSSEN (Breakbeat Mix)", ID = "rbxassetid://131156592498385"},
    {Name = "Hey Darlin'", ID = "rbxassetid://131247616856387"},
    {Name = "Furla", ID = "rbxassetid://131294576876047"},
    {Name = "Buah Hati", ID = "rbxassetid://131306230211625"},
    {Name = "Burung Dalam Sangkar", ID = "rbxassetid://131344136277587"},
    {Name = "“Angkringan Jam Sebelas", ID = "rbxassetid://131374413816952"},
    {Name = "#################################################", ID = "rbxassetid://131644047283089"},
    {Name = "God Rest Ye Merry Gentlemen E", ID = "rbxassetid://131661814789822"},
    {Name = "Sumatra Jungle Relaxation", ID = "rbxassetid://131806718839391"},
    {Name = "Tormenta", ID = "rbxassetid://131957878277614"},
    {Name = "Zero Cool Sunset", ID = "rbxassetid://132026032558143"},
    {Name = "Dangdut", ID = "rbxassetid://132057962354730"},
    {Name = "“Lagu Untuk Yang Sudah Pergi”", ID = "rbxassetid://132088861378266"},
    {Name = "Inferno", ID = "rbxassetid://132334315755319"},
    {Name = "2 Minutes of Faster Reggaeton Drums", ID = "rbxassetid://132336593552319"},
    {Name = "220 BPM Silent Jazz Drums", ID = "rbxassetid://132347899172260"},
    {Name = "Peluk Semesta | Emo X Pop Punk Indonesia", ID = "rbxassetid://132395391620469"},
    {Name = "Inner Shoreline", ID = "rbxassetid://132443056605170"},
    {Name = "Breaks at Midnight", ID = "rbxassetid://132447293596598"},
    {Name = "Sevmeyene Kül Başına", ID = "rbxassetid://132520760043551"},
    {Name = "Melepas Perlahan | Pop Punk Indonesia", ID = "rbxassetid://132577036476657"},
    {Name = "Gully Shapes", ID = "rbxassetid://132594230660891"},
    {Name = "hyperBOMB Trinitycore 180BPM", ID = "rbxassetid://132601278814495"},
    {Name = "Mengharap Ampunan — Seeking Forgiveness", ID = "rbxassetid://132712860277816"},
    {Name = "Lift Me Up", ID = "rbxassetid://132790527201602"},
    {Name = "Dev Deepawali Geet (NITIKA GAUTAM)", ID = "rbxassetid://132842956100768"},
    {Name = "O sol nascendo lento", ID = "rbxassetid://132911906280290"},
    {Name = "waking tribes", ID = "rbxassetid://133030091129431"},
    {Name = "Ramadhan Berkah — Ramadan of Blessings", ID = "rbxassetid://133075279367082"},
    {Name = "Mercy", ID = "rbxassetid://133120083113509"},
    {Name = "The good old Breakbeat Days", ID = "rbxassetid://133132552423993"},
    {Name = "Menjaga Lidah — Guarding the Tongue", ID = "rbxassetid://133137569220171"},
    {Name = "Tiny Floating Keys", ID = "rbxassetid://133203469466202"},
    {Name = "Ikhlas Dalam Beramal — Sincerity in Deeds", ID = "rbxassetid://133220394033385"},
    {Name = "Pacific Northwest City", ID = "rbxassetid://133233954159624"},
    {Name = "Rise Through The Fire", ID = "rbxassetid://133315720486175"},
    {Name = "Underground Node", ID = "rbxassetid://133401349290757"},
    {Name = "In Your Presence, Pt. 1", ID = "rbxassetid://133731954950299"},
    {Name = "Wisata Media Yang Menginspirasi", ID = "rbxassetid://133913205623751"},
    {Name = "Raden Ajeng Kartini (1879–1904)", ID = "rbxassetid://133915602213994"},
    {Name = "The Sky Is Still Mine", ID = "rbxassetid://133924613041449"},
    {Name = "No one in this world", ID = "rbxassetid://134040848584987"},
    {Name = "Pyrkochyły", ID = "rbxassetid://134057238300190"},
    {Name = "Too Much Rain Over Paradise", ID = "rbxassetid://134062717276634"},
    {Name = "Look at me (breakbeat vers)", ID = "rbxassetid://134139817267350"},
    {Name = "Walk Beat", ID = "rbxassetid://134188299137086"},
    {Name = "Aurora's Heart", ID = "rbxassetid://134432428922125"},
    {Name = "quartz", ID = "rbxassetid://134772682502714"},
    {Name = "Singgah | Pop Punk Indonesia", ID = "rbxassetid://134773025537357"},
    {Name = "Beso de Estilo (Breakbeat)", ID = "rbxassetid://134830838582946"},
    {Name = "Don't Let Go", ID = "rbxassetid://134963656139159"},
    {Name = "MAKE SUM SHAKE", ID = "rbxassetid://135165875644342"},
    {Name = "I Am Not Who I Used To Be", ID = "rbxassetid://135213216489160"},
    {Name = "Worship", ID = "rbxassetid://135289835147765"},
    {Name = "Coffee And Sunshine", ID = "rbxassetid://135403121041184"},
    {Name = "#############", ID = "rbxassetid://135410791093576"},
    {Name = "Tales of the Tavern", ID = "rbxassetid://135411356743631"},
    {Name = "Tiga Warna Kelimutu", ID = "rbxassetid://135435221288990"},
    {Name = "The Land I Call My Home", ID = "rbxassetid://135441162490922"},
    {Name = "Gibson Halo", ID = "rbxassetid://135459041082593"},
    {Name = "Harmoni Sawah Hijau", ID = "rbxassetid://135553757279165"},
    {Name = "A Turins loop (violin range talharpa)", ID = "rbxassetid://135735842038798"},
    {Name = "Flowing Energy . Tanbur Meditation II", ID = "rbxassetid://135755370545559"},
    {Name = "Panoi", ID = "rbxassetid://135791627287010"},
    {Name = "KEN DEDES A", ID = "rbxassetid://135793029989834"},
    {Name = "Stay Where I Can’t Hide", ID = "rbxassetid://135798319775355"},
    {Name = "Bangkit Dari Luka", ID = "rbxassetid://135825408597541"},
    {Name = "Unstoppable Light", ID = "rbxassetid://135859683635277"},
    {Name = "Moroccan Medley Chaabi Najat Atabou", ID = "rbxassetid://135910395995221"},
    {Name = "꿈을 향해 달려가", ID = "rbxassetid://135993940577211"},
    {Name = "Menyambut Esok | Emo X Pop Punk Indonesia", ID = "rbxassetid://136079092849471"},
    {Name = "Breakbeat : Holographic Drift", ID = "rbxassetid://136097291945878"},
    {Name = "Navidad, Hoy Es Navidad", ID = "rbxassetid://136117783864625"},
    {Name = "Pray for Indonesia", ID = "rbxassetid://136160115165652"},
    {Name = "Run Into The Light", ID = "rbxassetid://136176526856878"},
    {Name = "Berpisah di Teras Saint Carolus", ID = "rbxassetid://136253879873401"},
    {Name = "Red Box Resonance", ID = "rbxassetid://136304174636803"},
    {Name = "Stream Of Consciousness Jam 33", ID = "rbxassetid://136338966480797"},
    {Name = "Mother Theresa", ID = "rbxassetid://136339442975131"},
    {Name = "Hala Madrid finale", ID = "rbxassetid://136467769470824"},
    {Name = "Futures Made", ID = "rbxassetid://136546356531303"},
    {Name = "Blackout", ID = "rbxassetid://136590727855076"},
    {Name = "Rythme du Dodo (Face A)", ID = "rbxassetid://136600114537923"},
    {Name = "NO NOS VAMOS A CASA breakbeat", ID = "rbxassetid://136615770779103"},
    {Name = "Fast Rock'n Roll Drums (140 Bpm)", ID = "rbxassetid://136652609147065"},
    {Name = "Eid Mubarak Indonesian 1", ID = "rbxassetid://136657986559713"},
    {Name = "Bulan yang Hilang", ID = "rbxassetid://136663436881254"},
    {Name = "Deep Space Ocean", ID = "rbxassetid://136827064604146"},
    {Name = "Lagi", ID = "rbxassetid://136843294006724"},
    {Name = "Cosmic Cafe", ID = "rbxassetid://136898642923218"},
    {Name = "Etien | Pop Rock Indonesia", ID = "rbxassetid://136952619119251"},
    {Name = "Drift, baby drift", ID = "rbxassetid://136972296751255"},
    {Name = "Indonesia rumah kita", ID = "rbxassetid://137183981450457"},
    {Name = "Something Inside", ID = "rbxassetid://137450163361666"},
    {Name = "Town", ID = "rbxassetid://137666111044822"},
    {Name = "Tanah Tinggi Toraja", ID = "rbxassetid://137728763861153"},
    {Name = "Earth", ID = "rbxassetid://137850302729721"},
    {Name = "I Kept On (Drums & Bass)", ID = "rbxassetid://137862607474807"},
    {Name = "Burning Through The Night", ID = "rbxassetid://137947954357436"},
    {Name = "Stronger Than The Storm", ID = "rbxassetid://138024392611422"},
    {Name = "The Diversion", ID = "rbxassetid://138113939683925"},
    {Name = "###########################", ID = "rbxassetid://138134465438947"},
    {Name = "TΓΛGIC", ID = "rbxassetid://138201165766620"},
    {Name = "Islands of Indonesia", ID = "rbxassetid://138294224882122"},
    {Name = "Uneasy Waltz", ID = "rbxassetid://138310855714026"},
    {Name = "Inner Thoughts", ID = "rbxassetid://138411480543109"},
    {Name = "groundhog day", ID = "rbxassetid://138418736242562"},
    {Name = "Negeri Penuh Harapan", ID = "rbxassetid://138427165921892"},
    {Name = "The Bard’s Breakbeat", ID = "rbxassetid://138538288877449"},
    {Name = "sheep and shepherd | Indonesian", ID = "rbxassetid://138590640323973"},
    {Name = "헤드폰 속 작은 세상", ID = "rbxassetid://138601191490173"},
    {Name = "Midnight Lullaby For A Sound Sleep", ID = "rbxassetid://138608463560791"},
    {Name = "Breakbeat Compliance", ID = "rbxassetid://138746036698396"},
    {Name = "Tak Ada Yang Tak Bisa", ID = "rbxassetid://138793745370220"},
    {Name = "Sång 62", ID = "rbxassetid://138825502542908"},
    {Name = "風のコンパス", ID = "rbxassetid://138830512430575"},
    {Name = "ពិសាខដើមឆ្នាំ", ID = "rbxassetid://138842197518792"},
    {Name = "DJ LAST GOODBYE BREAKBEAT", ID = "rbxassetid://139065609615135"},
    {Name = "Gong and Silence", ID = "rbxassetid://139327115619643"},
    {Name = "SRI GIRINATHAPUTRA A", ID = "rbxassetid://139389579259617"},
    {Name = "Made", ID = "rbxassetid://139437947383682"},
    {Name = "Sumatra Jungle Soul", ID = "rbxassetid://139440060578400"},
    {Name = "Wind Writes Poems", ID = "rbxassetid://139907431714517"},
    {Name = "Mungkinkah", ID = "rbxassetid://139963601065649"},
    {Name = "Let your Spirit fall on us", ID = "rbxassetid://140003575829680"},
    {Name = "Pool On The Roof", ID = "rbxassetid://140271423148024"},
    {Name = "Selalu Di Sisi", ID = "rbxassetid://140521260325790"},
    {Name = "The Djinn’s Dance (100 BPM)", ID = "rbxassetid://140586656547208"},
    {Name = "Samaii Rhythm (90 BPM)", ID = "rbxassetid://140600951779469"},
    {Name = "The Moon Isn't Brighter Than We", ID = "rbxassetid://140642909263902"},
    {Name = "I Got You", ID = "rbxassetid://140703509532621"},
    {Name = "Magical Yellow", ID = "rbxassetid://140718389949617"},
    {Name = "Indonesia", ID = "rbxassetid://140731050212536"},
},

	DefaultVolume = 0.5,

	Theme = {
		Background = Color3.fromRGB(18, 18, 22),
		Panel = Color3.fromRGB(25, 25, 30),
		Panel2 = Color3.fromRGB(31, 31, 37),
		Gold = Color3.fromRGB(220, 175, 70),
		GoldLight = Color3.fromRGB(245, 205, 105),
		Text = Color3.fromRGB(245, 245, 245),
		SubText = Color3.fromRGB(155, 155, 165),
		Stroke = Color3.fromRGB(55, 55, 65),
		Red = Color3.fromRGB(220, 75, 75),
	}
}

--========================================================--
--                     CLEANUP                            --
--========================================================--

local oldGui = playerGui:FindFirstChild("SimpleMusicPlayer")
if oldGui then
	oldGui:Destroy()
end

--========================================================--
--                      HELPERS                           --
--========================================================--

local function create(className, properties, parent)
	local object = Instance.new(className)

	for property, value in pairs(properties) do
		object[property] = value
	end

	object.Parent = parent
	return object
end

local function corner(parent, radius)
	return create("UICorner", {
		CornerRadius = UDim.new(0, radius)
	}, parent)
end

local function stroke(parent, color, thickness)
	return create("UIStroke", {
		Color = color,
		Thickness = thickness or 1
	}, parent)
end

local function tween(object, properties, duration)
	local info = TweenInfo.new(
		duration or 0.2,
		Enum.EasingStyle.Quart,
		Enum.EasingDirection.Out
	)

	TweenService:Create(object, info, properties):Play()
end

--========================================================--
--                       SOUND                            --
--========================================================--

local sound = create("Sound", {
	Name = "MusicPlayerSound",
	Volume = CONFIG.DefaultVolume,
	Looped = false,
}, workspace)

--========================================================--
--                        GUI                             --
--========================================================--

local gui = create("ScreenGui", {
	Name = "SimpleMusicPlayer",
	ResetOnSpawn = false,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	IgnoreGuiInset = true,
}, playerGui)

--========================================================--
--                  MAIN WINDOW                           --
--========================================================--

local main = create("Frame", {
	Name = "Main",
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.52),
	Size = UDim2.new(0, 330, 0, 430),
	BackgroundColor3 = CONFIG.Theme.Background,
	BorderSizePixel = 0,
	Active = true,
}, gui)

corner(main, 14)
stroke(main, CONFIG.Theme.Stroke, 1)

local sizeConstraint = create("UISizeConstraint", {
	MinSize = Vector2.new(285, 370),
	MaxSize = Vector2.new(380, 500),
}, main)

--========================================================--
--                       HEADER                           --
--========================================================--

local header = create("Frame", {
	Name = "Header",
	Size = UDim2.new(1, 0, 0, 48),
	BackgroundTransparency = 1,
	Active = true,
}, main)

local title = create("TextLabel", {
	Position = UDim2.new(0, 16, 0, 7),
	Size = UDim2.new(1, -100, 0, 18),
	BackgroundTransparency = 1,
	Text = "MUSIC PLAYER",
	TextColor3 = CONFIG.Theme.Text,
	TextSize = 14,
	Font = Enum.Font.GothamBold,
	TextXAlignment = Enum.TextXAlignment.Left,
}, header)

local subtitle = create("TextLabel", {
	Position = UDim2.new(0, 16, 0, 25),
	Size = UDim2.new(1, -100, 0, 15),
	BackgroundTransparency = 1,
	Text = "Your playlist",
	TextColor3 = CONFIG.Theme.SubText,
	TextSize = 10,
	Font = Enum.Font.Gotham,
	TextXAlignment = Enum.TextXAlignment.Left,
}, header)

local minimizeButton = create("TextButton", {
	Position = UDim2.new(1, -78, 0, 10),
	Size = UDim2.new(0, 30, 0, 28),
	BackgroundColor3 = CONFIG.Theme.Panel2,
	Text = "—",
	TextColor3 = CONFIG.Theme.GoldLight,
	TextSize = 18,
	Font = Enum.Font.GothamBold,
	AutoButtonColor = false,
}, header)

corner(minimizeButton, 8)

local closeButton = create("TextButton", {
	Position = UDim2.new(1, -42, 0, 10),
	Size = UDim2.new(0, 30, 0, 28),
	BackgroundColor3 = CONFIG.Theme.Panel2,
	Text = "×",
	TextColor3 = CONFIG.Theme.Red,
	TextSize = 18,
	Font = Enum.Font.GothamBold,
	AutoButtonColor = false,
}, header)

corner(closeButton, 8)

--========================================================--
--                     NOW PLAYING                        --
--========================================================--

local nowPlaying = create("Frame", {
	Position = UDim2.new(0, 14, 0, 56),
	Size = UDim2.new(1, -28, 0, 82),
	BackgroundColor3 = CONFIG.Theme.Panel,
	BorderSizePixel = 0,
}, main)

corner(nowPlaying, 11)

local musicIcon = create("Frame", {
	Position = UDim2.new(0, 10, 0.5, -26),
	Size = UDim2.new(0, 52, 0, 52),
	BackgroundColor3 = CONFIG.Theme.Gold,
	BorderSizePixel = 0,
}, nowPlaying)

corner(musicIcon, 10)

local musicIconText = create("TextLabel", {
	Size = UDim2.fromScale(1, 1),
	BackgroundTransparency = 1,
	Text = "♫",
	TextColor3 = CONFIG.Theme.Background,
	TextSize = 27,
	Font = Enum.Font.GothamBold,
}, musicIcon)

local currentName = create("TextLabel", {
	Position = UDim2.new(0, 74, 0, 17),
	Size = UDim2.new(1, -84, 0, 21),
	BackgroundTransparency = 1,
	Text = "Nothing Playing",
	TextColor3 = CONFIG.Theme.Text,
	TextSize = 13,
	Font = Enum.Font.GothamBold,
	TextTruncate = Enum.TextTruncate.AtEnd,
	TextXAlignment = Enum.TextXAlignment.Left,
}, nowPlaying)

local statusText = create("TextLabel", {
	Position = UDim2.new(0, 74, 0, 40),
	Size = UDim2.new(1, -84, 0, 17),
	BackgroundTransparency = 1,
	Text = "Select a song",
	TextColor3 = CONFIG.Theme.SubText,
	TextSize = 10,
	Font = Enum.Font.Gotham,
	TextXAlignment = Enum.TextXAlignment.Left,
}, nowPlaying)

--========================================================--
--                     SEARCH                             --
--========================================================--

local searchBox = create("TextBox", {
	Position = UDim2.new(0, 14, 0, 146),
	Size = UDim2.new(1, -28, 0, 36),
	BackgroundColor3 = CONFIG.Theme.Panel,
	BorderSizePixel = 0,
	PlaceholderText = "Search music...",
	PlaceholderColor3 = CONFIG.Theme.SubText,
	Text = "",
	TextColor3 = CONFIG.Theme.Text,
	TextSize = 11,
	Font = Enum.Font.Gotham,
	ClearTextOnFocus = false,
	TextXAlignment = Enum.TextXAlignment.Left,
}, main)

corner(searchBox, 9)

create("UIPadding", {
	PaddingLeft = UDim.new(0, 12),
	PaddingRight = UDim.new(0, 12),
}, searchBox)

--========================================================--
--                     PLAYLIST                           --
--========================================================--

local playlist = create("ScrollingFrame", {
	Name = "Playlist",
	Position = UDim2.new(0, 14, 0, 190),
	Size = UDim2.new(1, -28, 0, 125),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	ScrollBarThickness = 3,
	ScrollBarImageColor3 = CONFIG.Theme.Gold,
	CanvasSize = UDim2.new(0, 0, 0, 0),
	AutomaticCanvasSize = Enum.AutomaticSize.Y,
}, main)

local listLayout = create("UIListLayout", {
	Padding = UDim.new(0, 5),
	SortOrder = Enum.SortOrder.LayoutOrder,
}, playlist)

--========================================================--
--                    PROGRESS BAR                        --
--========================================================--

local progressBackground = create("Frame", {
	Position = UDim2.new(0, 14, 0, 324),
	Size = UDim2.new(1, -28, 0, 5),
	BackgroundColor3 = CONFIG.Theme.Panel2,
	BorderSizePixel = 0,
}, main)

corner(progressBackground, 5)

local progress = create("Frame", {
	Size = UDim2.new(0, 0, 1, 0),
	BackgroundColor3 = CONFIG.Theme.Gold,
	BorderSizePixel = 0,
}, progressBackground)

corner(progress, 5)

local timeLabel = create("TextLabel", {
	Position = UDim2.new(0, 14, 0, 333),
	Size = UDim2.new(1, -28, 0, 16),
	BackgroundTransparency = 1,
	Text = "0:00 / 0:00",
	TextColor3 = CONFIG.Theme.SubText,
	TextSize = 9,
	Font = Enum.Font.Gotham,
	TextXAlignment = Enum.TextXAlignment.Right,
}, main)

--========================================================--
--                   CONTROLS                            --
--========================================================--

local controls = create("Frame", {
	Position = UDim2.new(0, 14, 0, 352),
	Size = UDim2.new(1, -28, 0, 48),
	BackgroundTransparency = 1,
}, main)

local function button(name, text, x, width, textSize)
	local b = create("TextButton", {
		Name = name,
		Position = UDim2.new(0, x, 0.5, -width / 2),
		Size = UDim2.new(0, width, 0, width),
		BackgroundColor3 = CONFIG.Theme.Panel2,
		Text = text,
		TextColor3 = CONFIG.Theme.Text,
		TextSize = textSize or 15,
		Font = Enum.Font.GothamBold,
		AutoButtonColor = false,
	}, controls)

	corner(b, width / 2)

	return b
end

local previousButton = button("Previous", "‹", 15, 38, 23)
local playButton = button("Play", "▶", 65, 48, 18)
local nextButton = button("Next", "›", 125, 38, 23)

--========================================================--
--                     VOLUME                            --
--========================================================--

local volumeFrame = create("Frame", {
	Position = UDim2.new(0, 190, 0.5, -15),
	Size = UDim2.new(1, -200, 0, 30),
	BackgroundTransparency = 1,
}, controls)

local volumeIcon = create("TextLabel", {
	Size = UDim2.new(0, 20, 1, 0),
	BackgroundTransparency = 1,
	Text = "♪",
	TextColor3 = CONFIG.Theme.GoldLight,
	TextSize = 15,
	Font = Enum.Font.GothamBold,
}, volumeFrame)

local volumeBar = create("Frame", {
	Position = UDim2.new(0, 25, 0.5, -3),
	Size = UDim2.new(1, -25, 0, 6),
	BackgroundColor3 = CONFIG.Theme.Panel2,
	BorderSizePixel = 0,
	Active = true,
}, volumeFrame)

corner(volumeBar, 5)

local volumeFill = create("Frame", {
	Size = UDim2.new(CONFIG.DefaultVolume, 0, 1, 0),
	BackgroundColor3 = CONFIG.Theme.Gold,
	BorderSizePixel = 0,
}, volumeBar)

corner(volumeFill, 5)

--========================================================--
--                    MINIMIZED ICON                      --
--========================================================--

local mini = create("TextButton", {
	Name = "Mini",
	AnchorPoint = Vector2.new(1, 1),
	Position = UDim2.new(1, -18, 1, -18),
	Size = UDim2.new(0, 50, 0, 50),
	BackgroundColor3 = CONFIG.Theme.Gold,
	Text = "♫",
	TextColor3 = CONFIG.Theme.Background,
	TextSize = 23,
	Font = Enum.Font.GothamBold,
	Visible = false,
	AutoButtonColor = false,
}, gui)

corner(mini, 16)
stroke(mini, CONFIG.Theme.GoldLight, 1)

--========================================================--
--                    STATE                              --
--========================================================--

local currentIndex = 0
local minimized = false
local dragging = false
local dragStart
local startPosition

--========================================================--
--                    FORMAT TIME                         --
--========================================================--

local function formatTime(seconds)
	if not seconds or seconds ~= seconds then
		return "0:00"
	end

	seconds = math.floor(seconds)

	local minutes = math.floor(seconds / 60)
	local secs = seconds % 60

	return string.format("%d:%02d", minutes, secs)
end

--========================================================--
--                  PLAY MUSIC                            --
--========================================================--

local function updatePlayButton()
	if sound.IsPlaying then
		playButton.Text = "Ⅱ"
	else
		playButton.Text = "▶"
	end
end

local function playSong(index)
	if #CONFIG.Playlist == 0 then
		return
	end

	if index < 1 then
		index = #CONFIG.Playlist
	elseif index > #CONFIG.Playlist then
		index = 1
	end

	currentIndex = index

	local data = CONFIG.Playlist[currentIndex]

	sound:Stop()
	sound.SoundId = data.ID
	sound.TimePosition = 0

	currentName.Text = data.Name
	statusText.Text = "Loading..."

	sound:Play()

	updatePlayButton()
end

--========================================================--
--                     PLAYLIST UI                        --
--========================================================--

local songButtons = {}

local function refreshPlaylist(filter)
	for _, child in ipairs(playlist:GetChildren()) do
		if child:IsA("TextButton") then
			child:Destroy()
		end
	end

	songButtons = {}

	filter = string.lower(filter or "")

	for index, songData in ipairs(CONFIG.Playlist) do

		if filter == "" or string.find(string.lower(songData.Name), filter, 1, true) then

			local songButton = create("TextButton", {
				Name = "Song_" .. index,
				Size = UDim2.new(1, -4, 0, 34),
				BackgroundColor3 = CONFIG.Theme.Panel,
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = index,
			}, playlist)

			corner(songButton, 8)

			local number = create("TextLabel", {
				Position = UDim2.new(0, 10, 0, 0),
				Size = UDim2.new(0, 25, 1, 0),
				BackgroundTransparency = 1,
				Text = string.format("%02d", index),
				TextColor3 = CONFIG.Theme.Gold,
				TextSize = 9,
				Font = Enum.Font.GothamBold,
			}, songButton)

			local nameLabel = create("TextLabel", {
				Position = UDim2.new(0, 43, 0, 0),
				Size = UDim2.new(1, -55, 1, 0),
				BackgroundTransparency = 1,
				Text = songData.Name,
				TextColor3 = CONFIG.Theme.Text,
				TextSize = 10,
				Font = Enum.Font.GothamMedium,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}, songButton)

			songButtons[index] = songButton

			songButton.MouseEnter:Connect(function()
				tween(songButton, {
					BackgroundColor3 = CONFIG.Theme.Panel2
				}, 0.15)
			end)

			songButton.MouseLeave:Connect(function()
				if currentIndex ~= index then
					tween(songButton, {
						BackgroundColor3 = CONFIG.Theme.Panel
					}, 0.15)
				end
			end)

			songButton.Activated:Connect(function()
				playSong(index)
			end)
		end
	end
end

refreshPlaylist()

--========================================================--
--                    PLAY / PAUSE                        --
--========================================================--

playButton.Activated:Connect(function()

	if currentIndex == 0 then
		playSong(1)
		return
	end

	if sound.IsPlaying then
		sound:Pause()
		statusText.Text = "Paused"
	else
		sound:Resume()
		statusText.Text = "Playing"
	end

	updatePlayButton()
end)

--========================================================--
--                    PREVIOUS                           --
--========================================================--

previousButton.Activated:Connect(function()

	if #CONFIG.Playlist == 0 then
		return
	end

	local newIndex = currentIndex - 1

	if newIndex < 1 then
		newIndex = #CONFIG.Playlist
	end

	playSong(newIndex)
end)

--========================================================--
--                       NEXT                             --
--========================================================--

nextButton.Activated:Connect(function()

	if #CONFIG.Playlist == 0 then
		return
	end

	local newIndex = currentIndex + 1

	if newIndex > #CONFIG.Playlist then
		newIndex = 1
	end

	playSong(newIndex)
end)

--========================================================--
--                    AUTO NEXT                           --
--========================================================--

sound.Ended:Connect(function()

	if #CONFIG.Playlist == 0 then
		return
	end

	local nextIndex = currentIndex + 1

	if nextIndex > #CONFIG.Playlist then
		nextIndex = 1
	end

	playSong(nextIndex)
end)

sound.Loaded:Connect(function()
	if sound.TimeLength > 0 then
		statusText.Text = "Playing"
	end
end)

--========================================================--
--                    PROGRESS                            --
--========================================================--

task.spawn(function()

	while gui.Parent do

		task.wait(0.1)

		if sound.TimeLength > 0 then

			local ratio = math.clamp(
				sound.TimePosition / sound.TimeLength,
				0,
				1
			)

			progress.Size = UDim2.new(ratio, 0, 1, 0)

			timeLabel.Text =
				formatTime(sound.TimePosition)
				.. " / "
				.. formatTime(sound.TimeLength)

		else
			progress.Size = UDim2.new(0, 0, 1, 0)
			timeLabel.Text = "0:00 / 0:00"
		end
	end
end)

--========================================================--
--                  CLICK PROGRESS                        --
--========================================================--

progressBackground.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		if sound.TimeLength > 0 then

			local relative =
				(input.Position.X - progressBackground.AbsolutePosition.X)
				/ progressBackground.AbsoluteSize.X

			relative = math.clamp(relative, 0, 1)

			sound.TimePosition = sound.TimeLength * relative
		end
	end
end)

--========================================================--
--                     VOLUME                             --
--========================================================--

local function setVolumeFromInput(inputX)

	local relative =
		(inputX - volumeBar.AbsolutePosition.X)
		/ volumeBar.AbsoluteSize.X

	relative = math.clamp(relative, 0, 1)

	sound.Volume = relative
	volumeFill.Size = UDim2.new(relative, 0, 1, 0)
end

volumeBar.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		setVolumeFromInput(input.Position.X)
	end
end)

UserInputService.InputChanged:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch then

		if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
			setVolumeFromInput(input.Position.X)
		end
	end
end)

--========================================================--
--                       SEARCH                            --
--========================================================--

searchBox:GetPropertyChangedSignal("Text"):Connect(function()
	refreshPlaylist(searchBox.Text)
end)

--========================================================--
--                       DRAG                              --
--========================================================--

local function startDrag(input)

	dragging = true
	dragStart = input.Position
	startPosition = main.Position

end

local function updateDrag(input)

	if not dragging then
		return
	end

	local delta = input.Position - dragStart

	main.Position = UDim2.new(
		startPosition.X.Scale,
		startPosition.X.Offset + delta.X,
		startPosition.Y.Scale,
		startPosition.Y.Offset + delta.Y
	)
end

header.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		startDrag(input)
	end
end)

UserInputService.InputChanged:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch then

		updateDrag(input)
	end
end)

UserInputService.InputEnded:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then

		dragging = false
	end
end)

--========================================================--
--                     MINIMIZE                           --
--========================================================--

local function minimize()

	if minimized then
		return
	end

	minimized = true

	tween(main, {
		Size = UDim2.new(0, 0, 0, 0)
	}, 0.25)

	task.delay(0.22, function()

		if minimized then
			main.Visible = false
			mini.Visible = true

			mini.Size = UDim2.new(0, 0, 0, 0)

			tween(mini, {
				Size = UDim2.new(0, 50, 0, 50)
			}, 0.2)
		end
	end)
end

local function restore()

	if not minimized then
		return
	end

	minimized = false
	mini.Visible = false

	main.Visible = true
	main.Size = UDim2.new(0, 0, 0, 0)

	tween(main, {
		Size = UDim2.new(0, 330, 0, 430)
	}, 0.25)
end

minimizeButton.Activated:Connect(minimize)
mini.Activated:Connect(restore)

--========================================================--
--                       CLOSE                            --
--========================================================--

closeButton.Activated:Connect(function()

	sound:Stop()

	tween(main, {
		Size = UDim2.new(0, 0, 0, 0)
	}, 0.2)

	task.delay(0.2, function()
		gui:Destroy()
	end)
end)

--========================================================--
--                    BUTTON EFFECT                       --
--========================================================--

local allButtons = {
	previousButton,
	playButton,
	nextButton,
	minimizeButton,
	closeButton,
	mini
}

for _, b in ipairs(allButtons) do

	b.MouseEnter:Connect(function()
		if b == playButton then
			tween(b, {
				BackgroundColor3 = CONFIG.Theme.GoldLight
			}, 0.12)

			tween(b, {
				TextColor3 = CONFIG.Theme.Background
			}, 0.12)
		else
			tween(b, {
				BackgroundColor3 = CONFIG.Theme.Gold
			}, 0.12)
		end
	end)

	b.MouseLeave:Connect(function()
		if b == playButton then
			tween(b, {
				BackgroundColor3 = CONFIG.Theme.Panel2,
				TextColor3 = CONFIG.Theme.Text
			}, 0.12)
		else
			tween(b, {
				BackgroundColor3 = CONFIG.Theme.Panel2
			}, 0.12)
		end
	end)
end

--========================================================--
--                  INITIAL STATE                         --
--========================================================--

sound.Volume = CONFIG.DefaultVolume
volumeFill.Size = UDim2.new(CONFIG.DefaultVolume, 0, 1, 0)

if #CONFIG.Playlist > 0 then
	currentName.Text = "Select a song"
	statusText.Text = tostring(#CONFIG.Playlist) .. " songs available"
end
