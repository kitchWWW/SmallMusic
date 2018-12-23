import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;
import java.util.Collections;
import java.lang.Math;

public class MovementOne {

	public static ArrayList<Note> generate(ArrayList<Integer> intervals){

		ArrayList<Note> mvmtOne = new ArrayList<>();
		ArrayList<Integer> notes = new ArrayList<>();
		notes.add(67);
		notes.add(69);
		notes.add(71);
		notes.add(73);
		notes.add(74);
		notes.add(76);
		notes.add(78);
		notes.add(79);
		notes.add(81);
		notes.add(83);
		ArrayList<ArrayList<Integer>> upmotifs = new ArrayList<>();
		ArrayList<ArrayList<Integer>> downmotifs = new ArrayList<>();

		for(int i = 1; i < notes.size(); i ++){
			ArrayList<Integer> decendMotif = new ArrayList<>();
			decendMotif.add(notes.get(i));
			decendMotif.add(notes.get(i-1));
			downmotifs.add(decendMotif);
			ArrayList<Integer> acendMotif = new ArrayList<>();
			acendMotif.add(notes.get(i-1));
			acendMotif.add(notes.get(i));
			upmotifs.add(acendMotif);
		}
		Boolean goodToGo = false;
		ArrayList<ArrayList<Integer>> motifs = new ArrayList<>();
		while(!goodToGo){
			motifs = buildOutOfMotifs(upmotifs,downmotifs);
			goodToGo = true;
			for(int i = 0; i < motifs.size()-1; i ++){
				if(checkIfBad(motifs.get(i).get(0),motifs.get(i+1).get(0))||
					checkIfBad(motifs.get(i).get(1),motifs.get(i+1).get(0))||
					checkIfBad(motifs.get(i).get(0),motifs.get(i+1).get(1))||
					checkIfBad(motifs.get(i).get(1),motifs.get(i+1).get(1))
					){
					goodToGo = false;
				}
			}
			if(motifs.get(motifs.size()-1).get(1)!=78){
				goodToGo = false;
			}
			if(motifs.get(0).get(0)!=73){
				goodToGo = false;
			}
		}
		System.out.println(motifs);
		mvmtOne.add(new Note("\\key d \\major"));
		for(int i = 0; i < motifs.size(); i++){
			mvmtOne.add(new Note(motifs.get(i).get(0),4,""));
			mvmtOne.add(new Note(motifs.get(i).get(1),4,""));
		}
		mvmtOne.add(2,new Note("^\\markup{ \\column{ \\small \"2, 6\" \n"+
			"\\magnify #2 \"*\" }   }"));

		mvmtOne.add(8+(int)Math.round(Math.random()*8),new Note("^\\markup{ \\column{ \\small \"1, 5, 7\" \n"+
			"\\magnify #2 \"*\" }   }"));
		mvmtOne.add(21,new Note("\n\\break\n"));
		mvmtOne.add(39,new Note("\n\\set Score.repeatCommands = #'((volta \"1-4, 6\"))\n"));
		mvmtOne.add(new Note(" \\set Score.repeatCommands = #'((volta #f)) \n"+
			"\\revert Score.BarLine.stencil\n"+
			"\\bar \":|.\""));
		return mvmtOne;
	}

	public static ArrayList<Note> generateHold(Integer length){
		ArrayList<Note> stringOfNotes = new ArrayList<>();
		stringOfNotes.add(new Note("\\revert Score.BarLine.stencil \n"+
			"\\bar\":|.\"\n"+
			" \\set Score.repeatCommands = #'((volta \"5\")) \n"+
			"fis''4 \\override Score.BarLine.stencil = ##f \n"+
			"g''4 g'' g'' g'' \n \\set Score.repeatCommands = #'((volta #f)) \n g'' "));
		for(int i =0; i < length; i ++){
			stringOfNotes.add(new Note(79,4,""));
		}
		stringOfNotes.add(1+(int)Math.round(Math.random()*length),new Note("^\\markup{\\magnify #2 \"*\" }"));
		stringOfNotes.add(new Note(" g'' g'' g'' \n"+
			" \\revert Score.BarLine.stencil\n" +
			"\\bar \":|.\" \n"+
			"\\set Score.repeatCommands = #'((volta \"7\")) \n"+
			"fis''4 \\override Score.BarLine.stencil = ##f \n"+
			"g'' s4 s4^\\markup{\\magnify #2 \"*\" } s4 s4^\\markup{\\magnify #2 \"*\" } \n "+
			"\\set Score.repeatCommands = #'((volta #f)) \n" +
			"\\revert Score.BarLine.stencil\n"+
			"\\bar \"|.\""));
		return stringOfNotes;
	}


	public static ArrayList<ArrayList<Integer>> buildOutOfMotifs(ArrayList<ArrayList<Integer>> upmotifs, ArrayList<ArrayList<Integer>> downmotifs){
		Collections.shuffle(upmotifs);
		Collections.shuffle(downmotifs);
		ArrayList<ArrayList<Integer>> motifs = new ArrayList<>();
		for(int i = 0; i < downmotifs.size(); i ++){
			motifs.add(upmotifs.get(i));
			motifs.add(downmotifs.get(i));
		}
		Collections.shuffle(motifs);
		return motifs;

	}
	public static boolean checkIfBad(Integer a, Integer b){
		if(Math.abs(a-b) < 3){
			return true;
		}
		return false;
	}

}