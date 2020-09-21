package {

    import IField;

    public class FootballField implements IField {

        public function FootballField():void {
            trace("FootballField() constructor");
        }

        public function drawField():void { // インターフェースを継承したサブクラスで実際の内容を定義
            trace("Drawing the Football Field");
        }

    }

}
