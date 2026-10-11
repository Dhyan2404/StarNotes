package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STRubyAlign extends XmlString {
    public static final Enum CENTER;
    public static final Enum DISTRIBUTE_LETTER;
    public static final Enum DISTRIBUTE_SPACE;
    public static final SimpleTypeFactory<STRubyAlign> Factory;
    public static final int INT_CENTER = 1;
    public static final int INT_DISTRIBUTE_LETTER = 2;
    public static final int INT_DISTRIBUTE_SPACE = 3;
    public static final int INT_LEFT = 4;
    public static final int INT_RIGHT = 5;
    public static final int INT_RIGHT_VERTICAL = 6;
    public static final Enum LEFT;
    public static final Enum RIGHT;
    public static final Enum RIGHT_VERTICAL;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CENTER = 1;
        static final int INT_DISTRIBUTE_LETTER = 2;
        static final int INT_DISTRIBUTE_SPACE = 3;
        static final int INT_LEFT = 4;
        static final int INT_RIGHT = 5;
        static final int INT_RIGHT_VERTICAL = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("center", 1), new Enum("distributeLetter", 2), new Enum("distributeSpace", 3), new Enum("left", 4), new Enum(gon.f71288n0, 5), new Enum("rightVertical", 6)});

        private Enum(String str, int i) {
            super(str, i);
        }

        public static Enum forInt(int i) {
            return (Enum) table.forInt(i);
        }

        public static Enum forString(String str) {
            return (Enum) table.forString(str);
        }

        private Object readResolve() {
            return forInt(intValue());
        }
    }

    static {
        SimpleTypeFactory<STRubyAlign> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "strubyalignb1f7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CENTER = Enum.forString("center");
        DISTRIBUTE_LETTER = Enum.forString("distributeLetter");
        DISTRIBUTE_SPACE = Enum.forString("distributeSpace");
        LEFT = Enum.forString("left");
        RIGHT = Enum.forString(gon.f71288n0);
        RIGHT_VERTICAL = Enum.forString("rightVertical");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
