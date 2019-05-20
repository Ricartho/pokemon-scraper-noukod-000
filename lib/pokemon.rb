class Pokemon
<<<<<<< HEAD
  attr_reader :id, :name, :type, :hp, :db
  @@all = []

  def initialize (id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db
    @@all << self
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    name = pokemon[1]
    type = pokemon[2]
    hp = pokemon[3]
    pokemon_inst = Pokemon.new(id: id, name: name, type: type, hp: hp, db: db)
  end

   def alter_hp(hp, database_connection)
    database_connection.execute("UPDATE pokemon SET hp = ? WHERE id = ?", hp, @id)
  end
    
end
=======
attr_accessor :id,:name,:type,:db
  @@all = []
  
  def initialize(id:,name:,type:,db:)
    @id = id
    @name = name,
    @type = type,
    @db = db
    @@all.push(self)
  end 
  
  def self.save(name,type,db_connection)
    db_connection.execute("INSERT INTO pokemon(name,type) VALUES(?,?)",name,type)
  end 
  
  def self.find(id,db_connection)
    pokemon = db_connection.execute("SELECT * FROM pokemon WHERE id = ?",id)
    name = pokemon[1]
    type = pokemon[2]
    new_pokeman = Pokemon.new(id: id,type: type,name: name)
    
  end
end
>>>>>>> ddf7f6672fa5043f0012f6f85b8030871934495c
