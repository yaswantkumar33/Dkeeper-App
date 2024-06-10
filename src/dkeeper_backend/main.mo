import Text "mo:base/Text";
import List "mo:base/List";
import Debug "mo:base/Debug";
actor Dkeeper {

  // creatinf the type pf the values
  public type Note = {
    title : Text;
    content : Text;
  };
  var notes : List.List<Note> = List.nil<Note>();

  // function to get the values and process it
  public func createnote(titleText : Text, contentText : Text) {
    let newNote : Note = {
      title = titleText;
      content = contentText;
    };

    notes := List.push(newNote, notes);
    Debug.print(debug_show (notes));
  };
  public query func readnote() : async [Note] {
    // notes := List.nil<Note>();
    return List.toArray(notes);

  };

};
