import hector.*

class Maiz {
	var property imagen = "corn_baby.png"
	method regar(){
		self.imagen("corn_adult.png")
	}
}

class Trigo {
	var property imagen = "wheat_0.png"
	method regar(){
		if (self.imagen() == "wheat_0.png"){
			self.imagen("wheat_1.png")	
		}else if(self.imagen() == "wheat_1.png"){
			self.imagen("wheat_2.png")	
		}else if(self.imagen() == "wheat_2.png"){
			self.imagen("wheat_3.png")	
		}else if(self.imagen() == "wheat_3.png"){
			self.imagen("wheat_0.png")	
		}
	}
}

class Tomaco {
	method imagen() = "tomaco.png"
	method regar(){
		game.removeVisual(self)
		game.addVisualIn(self, hector.posicion().up(1))
	}
}
