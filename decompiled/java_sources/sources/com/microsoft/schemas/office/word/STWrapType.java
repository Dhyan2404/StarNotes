package com.microsoft.schemas.office.word;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STWrapType extends XmlString {
    public static final SimpleTypeFactory<STWrapType> Factory;
    public static final int INT_NONE = 3;
    public static final int INT_SQUARE = 2;
    public static final int INT_THROUGH = 5;
    public static final int INT_TIGHT = 4;
    public static final int INT_TOP_AND_BOTTOM = 1;
    public static final Enum NONE;
    public static final Enum SQUARE;
    public static final Enum THROUGH;
    public static final Enum TIGHT;
    public static final Enum TOP_AND_BOTTOM;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_NONE = 3;
        static final int INT_SQUARE = 2;
        static final int INT_THROUGH = 5;
        static final int INT_TIGHT = 4;
        static final int INT_TOP_AND_BOTTOM = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("topAndBottom", 1), new Enum("square", 2), new Enum("none", 3), new Enum("tight", 4), new Enum("through", 5)});

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
        SimpleTypeFactory<STWrapType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stwraptype9ca5type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        TOP_AND_BOTTOM = Enum.forString("topAndBottom");
        SQUARE = Enum.forString("square");
        NONE = Enum.forString("none");
        TIGHT = Enum.forString("tight");
        THROUGH = Enum.forString("through");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
