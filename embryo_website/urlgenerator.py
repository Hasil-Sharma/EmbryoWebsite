import urllib
import gdshortener
import base64
def make_upload_url(host,team_name,email,company_id):
	parameters = base64.b64encode('?name='+urllib.quote_plus(team_name)+'&email='+urllib.quote_plus(email))
	link = 'http://'+host + '/' + 'company_upload' + '/' + str(company_id) + '/' + '?params=' +parameters
	return link
