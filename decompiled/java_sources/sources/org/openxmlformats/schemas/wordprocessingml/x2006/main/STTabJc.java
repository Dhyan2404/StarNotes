package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STTabJc extends XmlString {
    public static final Enum BAR;
    public static final Enum CENTER;
    public static final Enum CLEAR;
    public static final Enum DECIMAL;
    public static final Enum END;
    public static final SimpleTypeFactory<STTabJc> Factory;
    public static final int INT_BAR = 6;
    public static final int INT_CENTER = 3;
    public static final int INT_CLEAR = 1;
    public static final int INT_DECIMAL = 5;
    public static final int INT_END = 4;
    public static final int INT_LEFT = 8;
    public static final int INT_NUM = 7;
    public static final int INT_RIGHT = 9;
    public static final int INT_START = 2;
    public static final Enum LEFT;
    public static final Enum NUM;
    public static final Enum RIGHT;
    public static final Enum START;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BAR = 6;
        static final int INT_CENTER = 3;
        static final int INT_CLEAR = 1;
        static final int INT_DECIMAL = 5;
        static final int INT_END = 4;
        static final int INT_LEFT = 8;
        static final int INT_NUM = 7;
        static final int INT_RIGHT = 9;
        static final int INT_START = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(Constants.CLEAR_ATTRIBUTES, 1), new Enum(gon.f71290o0, 2), new Enum("center", 3), new Enum("end", 4), new Enum("decimal", 5), new Enum("bar", 6), new Enum("num", 7), new Enum("left", 8), new Enum(gon.f71288n0, 9)});

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
        SimpleTypeFactory<STTabJc> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttabjc10f4type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CLEAR = Enum.forString(Constants.CLEAR_ATTRIBUTES);
        START = Enum.forString(gon.f71290o0);
        CENTER = Enum.forString("center");
        END = Enum.forString("end");
        DECIMAL = Enum.forString("decimal");
        BAR = Enum.forString("bar");
        NUM = Enum.forString("num");
        LEFT = Enum.forString("left");
        RIGHT = Enum.forString(gon.f71288n0);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
