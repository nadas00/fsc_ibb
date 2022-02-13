import 'package:fsc_ibb/model/show/cast_model.dart';
import 'package:fsc_ibb/model/show/show_detail_model.dart';

class ShowModel {
  int id;
  String title;
  String view;
  double score;
  String language;
  ShowDetailModel detailModel;
  String coverUrl;

  ShowModel({
    this.id,
    this.title,
    this.view,
    this.score,
    this.language,
    this.detailModel,
    this.coverUrl,
  });

  factory ShowModel.sample1() {
    return ShowModel(
      id: 1,
      coverUrl: "https://www.themoviedb.org/t/p/w440_and_h660_face/ik8PugpL41s137RAWEGTAWu0dPo.jpg",
      title: "Maleficent",
      view: "50M+",
      score: 4.9,
      language: "Eng",
      detailModel: ShowDetailModel(
        storyLine:
            "A beautiful, pure-hearted young woman, Maleficent has an idyllic life growing up in a peaceable forest kingdom, until one day when an invading army threatens the harmony of the land. Maleficent rises to be the land's fiercest protector, but she ultimately suffers a ruthless betrayal – an act that begins to turn her heart into stone. Bent on revenge, Maleficent faces an epic battle with the invading King's successor and, as a result, places a curse upon his newborn infant Aurora. As the child grows, Maleficent realizes that Aurora holds the key to peace in the kingdom – and to Maleficent's true happiness as well.",
        category: "Fantasy, Adventure, Action, Family, Romance",
        duration: "1h 37m",
        starCast: [
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/9kkfIiufGORw4bELN79DuTaKqAy.jpg",
            name: "Angelina Jolie",
            jobTitle: "Maleficent",
          ),
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/e8CUyxQSE99y5IOfzSLtHC0B0Ch.jpg",
            name: "Elle Fanning",
            jobTitle: "Maleficent",
          ),
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/em89OJJvBRX7kNJJPASmNKQujsC.jpg",
            name: "Sharlto Copley",
            jobTitle: "Stefan",
          ),
        ],
        recomended: [],
      ),
    );
  }
  factory ShowModel.sample2() {
    return ShowModel(
      id: 2,
      coverUrl: "https://www.themoviedb.org/t/p/w440_and_h660_face/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",
      title: "Avatar",
      view: "50M+",
      score: 4.5,
      language: "Eng",
      detailModel: ShowDetailModel(
        storyLine: "In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.",
        category: "Action, Adventure, Fantasy, Science Fiction",
        duration: "2h 42m",
        starCast: [
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/vM1WIfYQ1HUBtlVPwB9Hp9fLcn8.jpg",
            name: "Sam Worthington",
            jobTitle: "Jake Sully",
          ),
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/iOVbUH20il632nj2v01NCtYYeSg.jpg",
            name: "Zoe Saldana",
            jobTitle: "Neytiri",
          ),
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/flfhep27iBxseZIlxOMHt6zJFX1.jpg",
            name: "Sigourney Weaver",
            jobTitle: "Dr. Grace Augustine",
          ),
        ],
        recomended: [],
      ),
    );
  }
  factory ShowModel.sample3() {
    return ShowModel(
      id: 3,
      coverUrl: "https://www.themoviedb.org/t/p/w440_and_h660_face/jGWpG4YhpQwVmjyHEGkxEkeRf0S.jpg",
      title: "Pirates of the Caribbean: At World's End",
      view: "50M+",
      score: 4.5,
      language: "Eng",
      detailModel: ShowDetailModel(
        storyLine:
            "Wenches Scarlett and Giselle fix each other up for their wedding, in which they would each marry their groom. Upon realizing that both their grooms were the same man, Jack Sparrow, the two wenches found themselves in an auction led by the Auctioneer. This short film serves as a prequel to The Curse of the Black Pearl, and explains just why Jack Sparrow's boat the Jolly Mon was seen sinking at the beginning of the whole story; why the wenches were so upset with him; and how Cotton lost his tongue.",
        category: "Adventure, Action, Fantasy",
        duration: "2h 49m",
        starCast: [
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/ilPBHd3r3ahlipNQtjr4E3G04jJ.jpg",
            name: "Johnny Depp",
            jobTitle: "Captain Jack Sparrow",
          ),
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/pulwUR0lZ8IWwXUCRXCnyWfYvNL.jpg",
            name: "Orlando Bloom",
            jobTitle: "Will Turner",
          ),
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/bRC1B2VwV0wK3ElciFAK6QZf2wD.jpg",
            name: "Keira Knightley",
            jobTitle: "Elizabeth Swann",
          ),
        ],
        recomended: [],
      ),
    );
  }
  factory ShowModel.sample4() {
    return ShowModel(
      id: 4,
      coverUrl: "https://www.themoviedb.org/t/p/w440_and_h660_face/qAs3goIZmLmXSxjDq1EzcMTgZfw.jpg",
      title: "Star Wars ",
      view: "50m+",
      score: 5.0,
      language: "Eng",
      detailModel: ShowDetailModel(
        storyLine: "Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.",
        category: "Adventure, Action, Science Fiction",
        duration: "2h 1m",
        starCast: [
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/zMQ93JTLW8KxusKhOlHFZhih3YQ.jpg",
            name: "Mark Hamill",
            jobTitle: "Luke Skywalker",
          ),
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/5M7oN3sznp99hWYQ9sX0xheswWX.jpg",
            name: "Harrison Ford",
            jobTitle: "Han Solo",
          ),
          CastModel(
            url: "https://www.themoviedb.org/t/p/w276_and_h350_face/rfJtncHewKVnHjqpIZvjn24ESeC.jpg",
            name: "Carrie Fisher",
            jobTitle: "Princess Leia Organa",
          ),
        ],
        recomended: [],
      ),
    );
  }
}
