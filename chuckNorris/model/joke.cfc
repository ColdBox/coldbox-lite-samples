component {

	property name="jokeAPIURL" inject="coldbox:setting:jokeAPIURL";

	public function init(){
		return this;
	}

	public any function getJoke() {
		try {
			var h = new http( url = "#jokeAPIURL#/jokes/random?limitTo=[nerdy]", method = "GET", result="results" );
			var p = h.send().getPrefix();

			if(isJSON(p.filecontent.toString())) {
				var results = deserializeJSON(p.filecontent.toString());
							
				if(results.type == "success"){
					return results.value.joke;
				} else {
					return "Chuck Norris doesn't joke!";
				}
			}
		} catch (any e) {
			return "Chuck Norris doesn't joke!";
		}
	}

}