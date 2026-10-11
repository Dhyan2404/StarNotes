package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STFunctionType extends XmlToken {
    public static final Enum CNT;
    public static final Enum DEPTH;
    public static final SimpleTypeFactory<STFunctionType> Factory;
    public static final int INT_CNT = 1;
    public static final int INT_DEPTH = 7;
    public static final int INT_MAX_DEPTH = 8;
    public static final int INT_POS = 2;
    public static final int INT_POS_EVEN = 4;
    public static final int INT_POS_ODD = 5;
    public static final int INT_REV_POS = 3;
    public static final int INT_VAR = 6;
    public static final Enum MAX_DEPTH;
    public static final Enum POS;
    public static final Enum POS_EVEN;
    public static final Enum POS_ODD;
    public static final Enum REV_POS;
    public static final Enum VAR;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CNT = 1;
        static final int INT_DEPTH = 7;
        static final int INT_MAX_DEPTH = 8;
        static final int INT_POS = 2;
        static final int INT_POS_EVEN = 4;
        static final int INT_POS_ODD = 5;
        static final int INT_REV_POS = 3;
        static final int INT_VAR = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("cnt", 1), new Enum("pos", 2), new Enum("revPos", 3), new Enum("posEven", 4), new Enum("posOdd", 5), new Enum("var", 6), new Enum("depth", 7), new Enum("maxDepth", 8)});

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
        SimpleTypeFactory<STFunctionType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfunctiontype0c2ftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CNT = Enum.forString("cnt");
        POS = Enum.forString("pos");
        REV_POS = Enum.forString("revPos");
        POS_EVEN = Enum.forString("posEven");
        POS_ODD = Enum.forString("posOdd");
        VAR = Enum.forString("var");
        DEPTH = Enum.forString("depth");
        MAX_DEPTH = Enum.forString("maxDepth");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
