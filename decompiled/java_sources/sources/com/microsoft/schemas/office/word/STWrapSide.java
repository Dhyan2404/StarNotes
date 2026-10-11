package com.microsoft.schemas.office.word;

import com.sunia.HTREnginev2.gon;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STWrapSide extends XmlString {
    public static final Enum BOTH;
    public static final SimpleTypeFactory<STWrapSide> Factory;
    public static final int INT_BOTH = 1;
    public static final int INT_LARGEST = 4;
    public static final int INT_LEFT = 2;
    public static final int INT_RIGHT = 3;
    public static final Enum LARGEST;
    public static final Enum LEFT;
    public static final Enum RIGHT;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOTH = 1;
        static final int INT_LARGEST = 4;
        static final int INT_LEFT = 2;
        static final int INT_RIGHT = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("both", 1), new Enum("left", 2), new Enum(gon.f71288n0, 3), new Enum("largest", 4)});

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
        SimpleTypeFactory<STWrapSide> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stwrapside6d02type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        BOTH = Enum.forString("both");
        LEFT = Enum.forString("left");
        RIGHT = Enum.forString(gon.f71288n0);
        LARGEST = Enum.forString("largest");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
