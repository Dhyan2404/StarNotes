package org.openxmlformats.schemas.drawingml.x2006.main;

import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STLineEndType extends XmlToken {
    public static final Enum ARROW;
    public static final Enum DIAMOND;
    public static final SimpleTypeFactory<STLineEndType> Factory;
    public static final int INT_ARROW = 6;
    public static final int INT_DIAMOND = 4;
    public static final int INT_NONE = 1;
    public static final int INT_OVAL = 5;
    public static final int INT_STEALTH = 3;
    public static final int INT_TRIANGLE = 2;
    public static final Enum NONE;
    public static final Enum OVAL;
    public static final Enum STEALTH;
    public static final Enum TRIANGLE;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ARROW = 6;
        static final int INT_DIAMOND = 4;
        static final int INT_NONE = 1;
        static final int INT_OVAL = 5;
        static final int INT_STEALTH = 3;
        static final int INT_TRIANGLE = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("triangle", 2), new Enum("stealth", 3), new Enum("diamond", 4), new Enum(UniversalShapeTypeConst.OVAL, 5), new Enum("arrow", 6)});

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
        SimpleTypeFactory<STLineEndType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stlineendtype8902type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        TRIANGLE = Enum.forString("triangle");
        STEALTH = Enum.forString("stealth");
        DIAMOND = Enum.forString("diamond");
        OVAL = Enum.forString(UniversalShapeTypeConst.OVAL);
        ARROW = Enum.forString("arrow");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
