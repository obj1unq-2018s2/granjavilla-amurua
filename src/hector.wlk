import especies.*

object hector {
	var property posicion = game.at(2,2)
	method imagen() = "player.png"
	
	method plantaMaiz() {
		game.say(self, "mirame plantando maiz")
		const unMaiz = new Maiz()
		game.addVisualIn(unMaiz, posicion.clone())
	}
	
	method plantaTrigo() {
		game.say(self, "mirame plantando Trigo")
		const unTrigo = new Trigo()
		game.addVisualIn(unTrigo, posicion.clone())
	}
	
	method plantaTomaco() {
		game.say(self, "mirame plantando tomaco")
		const unTomaco = new Tomaco()
		game.addVisualIn(unTomaco, posicion.clone())
	}
	
	method regar(cosasQueHay){
		cosasQueHay.remove(self)
		cosasQueHay.forEach({especie => especie.regar()})
		if(cosasQueHay.isEmpty()){
			game.say(self,"no tengo nada para regar")
		}
	}
}
