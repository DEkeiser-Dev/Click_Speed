extends Node

func _ADS(_a):
	var id_ads := ""
	match _a:
		0: # banner_loading
			id_ads = "ca-app-pub-5066256392694449/7066302845"

		1: # banner
			id_ads = "ca-app-pub-5066256392694449/4801407632"

		2: # interstitial_medium
			id_ads = "ca-app-pub-5066256392694449/2693262811"

		3: # interstitial_height
			id_ads = "ca-app-pub-5066256392694449/1004776624"

		_:
			print("ERROR: anuncio inexistente: ", id_ads)
	return id_ads
