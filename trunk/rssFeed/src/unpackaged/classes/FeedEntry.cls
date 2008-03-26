/* 
 * simple class to hold the basic elements of an RSS Feed
 */
public class FeedEntry {
 public String content;
 public string id;
 public string author; 
 public string summary;
 public string title;
 public string origLink; 
 public string created; 
 
 public string getDate() { 
 	try { 
	 	Pattern p = Pattern.compile('[TZ]'); // cleanup the feed provided datetime
	 	Matcher m = p.matcher(created);
	 	Datetime t = Datetime.valueof( m.replaceAll(' ') );	
	 	return '(' + t.format('MMMM d') + ')';  // format it
 	} catch ( exception ex) {	 		
	 	// also parse this type of date string 
	 	// Wed, 30 Jan 2008 12:00:00 GMT
	 	return created;
 	}
 	
 } 
 public string getSummary() { return summary; } 
 public string getTitle() { return title; } 
 public string getHref() { return origLink; }	
 public string getAuthor() { return author; }	
}