package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STRType extends XmlString {
    public static final Enum ALIGN;
    public static final Enum ARC;
    public static final Enum CALLOUT;
    public static final Enum CONNECTOR;
    public static final SimpleTypeFactory<STRType> Factory;
    public static final int INT_ALIGN = 4;
    public static final int INT_ARC = 1;
    public static final int INT_CALLOUT = 2;
    public static final int INT_CONNECTOR = 3;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ALIGN = 4;
        static final int INT_ARC = 1;
        static final int INT_CALLOUT = 2;
        static final int INT_CONNECTOR = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("arc", 1), new Enum("callout", 2), new Enum("connector", 3), new Enum("align", 4)});

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
        SimpleTypeFactory<STRType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "strtype0f75type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ARC = Enum.forString("arc");
        CALLOUT = Enum.forString("callout");
        CONNECTOR = Enum.forString("connector");
        ALIGN = Enum.forString("align");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
