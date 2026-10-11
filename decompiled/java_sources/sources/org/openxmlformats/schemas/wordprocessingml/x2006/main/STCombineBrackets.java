package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sun.org.apache.xpath.internal.compiler.Keywords;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STCombineBrackets extends XmlString {
    public static final Enum ANGLE;
    public static final Enum CURLY;
    public static final SimpleTypeFactory<STCombineBrackets> Factory;
    public static final int INT_ANGLE = 4;
    public static final int INT_CURLY = 5;
    public static final int INT_NONE = 1;
    public static final int INT_ROUND = 2;
    public static final int INT_SQUARE = 3;
    public static final Enum NONE;
    public static final Enum ROUND;
    public static final Enum SQUARE;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ANGLE = 4;
        static final int INT_CURLY = 5;
        static final int INT_NONE = 1;
        static final int INT_ROUND = 2;
        static final int INT_SQUARE = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum(Keywords.FUNC_ROUND_STRING, 2), new Enum("square", 3), new Enum("angle", 4), new Enum("curly", 5)});

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
        SimpleTypeFactory<STCombineBrackets> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stcombinebrackets70b8type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        ROUND = Enum.forString(Keywords.FUNC_ROUND_STRING);
        SQUARE = Enum.forString("square");
        ANGLE = Enum.forString("angle");
        CURLY = Enum.forString("curly");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
