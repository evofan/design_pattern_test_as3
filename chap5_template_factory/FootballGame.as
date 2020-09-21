package {

    public class FootballGame extends AbstractGame {

        public function FootballGame():void {
            trace("FootballGame()");
        }

        public override function createField():void {
            trace("Create Football Field");
        }

        public override function createTeam(name:String):void {
            trace("Create Football Team Named: " + name);
        }

        public override function startGame():void {
            trace("Start Football Game");
        }

    }

}
