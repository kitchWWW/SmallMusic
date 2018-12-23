import java.util.ArrayList;
import java.util.Arrays;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class runner {

	public static void main(String[] args) {
		String timeStamp = args[0];
		int key = Integer.parseInt(args[1]);
		String clef = args[2];
		String name = args[3];

		int highBound = 77; //treble
		if(clef.equals("treble_8")){
			highBound = highBound-12;
		}
		if(clef.equals("treble^8")){
			highBound = highBound+12;
		}
		if(clef.equals("bass")){
			highBound = 57;
		}
		if(clef.equals("alto")){
			highBound = 67;
		}
		if(clef.equals("tenor")){
			highBound = 64;
		}
		while(key < highBound){
			key = key + 12;
		}
		while(key > highBound){
			key = key-12;
		}
		
		System.out.println(""+key);



		ArrayList<Integer> intervals = new ArrayList<>();
		intervals.add(0);
		intervals.add(1);
		intervals.add(4);

		ArrayList<Insturment> insturments = new ArrayList<>();
		insturments.add(new Insturment("Ukulele","Acoustic Guitar (nylon)","\""+clef+"\"",false,false));
		insturments.add(new Insturment("Ukulele","Acoustic Guitar (nylon)","\""+clef+"\"",false,false));
		System.out.println("here?");
		ArrayList<Note> oneTemp = MovementOne.generate(intervals,key);
		System.out.println("there?");
		ArrayList<Note> holdTemp = MovementOne.generateHold(6,key);

		//System.out.println(oneTemp);

		String oneFinal = Note.toString(oneTemp);
		String holdFinal = Note.toString(holdTemp);
		//System.out.println(oneFinal);

		ArrayList<String> finalPart = new ArrayList<>();
		finalPart.add(oneFinal);
		finalPart.add(holdFinal);
		//System.out.println(finalPart);

		buildParts(timeStamp,"SmallMusic", finalPart,insturments,key);
		//System.out.println("Done?");
	}

	private static void buildParts(String timeStamp, String title,
		ArrayList<String> parts, ArrayList<Insturment> insturments, int key){
		try {
			ArrayList<String> longParts = new ArrayList<>();
			for(int index = 0; index < insturments.size(); index++){
				String newPart = "";
				File partFile = new File("templates/part.ly");
		        Scanner ps = new Scanner(partFile);
				while (ps.hasNextLine()) {
		            String i = ps.nextLine();

		            if(i.startsWith("%part")){
		            	newPart+= parts.get(index) +"\n";

		            }else if(i.startsWith("%name")){
		            	newPart+= insturments.get(index).name +"\n";

		            }else if(i.startsWith("%clef")){
		            	newPart+= "\\clef " + insturments.get(index).staff +"\n";
		            
		            }else if(i.startsWith("%key")){
		            	newPart+= "\\key "+ Note.keyNames[key%12] +"\\major" +"\n";
		            
		            }else if(i.contains("%midi")){
		            	i = i.substring(0,i.indexOf("%midi"));
		            	newPart+= i+""+insturments.get(index).midi +"\"\n";

		            }else{
		            	newPart+=i + "\n";
		            }
		        }
		        longParts.add(newPart);
			}
			
			String res = "";
			File file = new File("templates/score.ly");
	        Scanner sc = new Scanner(file);

	        while (sc.hasNextLine()) {
	            String i = sc.nextLine();
	            if(i.startsWith("%part")){
	            	i = i.substring(5);
	            	int index = Integer.parseInt(i);
	            	if(index < longParts.size()){
	            		res+= longParts.get(index) +"\n";
	            	}
	            }else if(i.startsWith("%timeStamp")){
	            	res+= timeStamp +"\n";
	            }
	            else{
	            	res+=i + "\n";
	            }
	        }
        	sc.close();
			PrintWriter writer = new PrintWriter("out/"+timeStamp+"/"+title+".ly", "UTF-8");
			writer.println(res);
			writer.close();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("I guess we give up now...");
		}
	}

}
