package {

    import IField;
    import FootballField;

    public class FootballGame extends AbstractGame {

        public function FootballGame():void {
            trace("FootballGame() constructor");
        }

        public override function createField():IField {
            return new FootballField();
        }

        public override function createTeam(name:String):void {
            trace("Create Football Team Named: " + name);
        }

        public override function startGame():void {
            trace("Start Football Game");
        }

    }

}
