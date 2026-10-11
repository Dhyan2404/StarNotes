package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STAlgorithmType extends XmlToken {
    public static final Enum COMPOSITE;
    public static final Enum CONN;
    public static final Enum CYCLE;
    public static final SimpleTypeFactory<STAlgorithmType> Factory;
    public static final Enum HIER_CHILD;
    public static final Enum HIER_ROOT;
    public static final int INT_COMPOSITE = 1;
    public static final int INT_CONN = 2;
    public static final int INT_CYCLE = 3;
    public static final int INT_HIER_CHILD = 4;
    public static final int INT_HIER_ROOT = 5;
    public static final int INT_LIN = 7;
    public static final int INT_PYRA = 6;
    public static final int INT_SNAKE = 10;
    public static final int INT_SP = 8;
    public static final int INT_TX = 9;
    public static final Enum LIN;
    public static final Enum PYRA;
    public static final Enum SNAKE;

    /* renamed from: SP */
    public static final Enum f115675SP;

    /* renamed from: TX */
    public static final Enum f115676TX;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_COMPOSITE = 1;
        static final int INT_CONN = 2;
        static final int INT_CYCLE = 3;
        static final int INT_HIER_CHILD = 4;
        static final int INT_HIER_ROOT = 5;
        static final int INT_LIN = 7;
        static final int INT_PYRA = 6;
        static final int INT_SNAKE = 10;
        static final int INT_SP = 8;
        static final int INT_TX = 9;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("composite", 1), new Enum("conn", 2), new Enum("cycle", 3), new Enum("hierChild", 4), new Enum("hierRoot", 5), new Enum("pyra", 6), new Enum("lin", 7), new Enum("sp", 8), new Enum("tx", 9), new Enum("snake", 10)});

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
        SimpleTypeFactory<STAlgorithmType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stalgorithmtype8c82type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        COMPOSITE = Enum.forString("composite");
        CONN = Enum.forString("conn");
        CYCLE = Enum.forString("cycle");
        HIER_CHILD = Enum.forString("hierChild");
        HIER_ROOT = Enum.forString("hierRoot");
        PYRA = Enum.forString("pyra");
        LIN = Enum.forString("lin");
        f115675SP = Enum.forString("sp");
        f115676TX = Enum.forString("tx");
        SNAKE = Enum.forString("snake");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
