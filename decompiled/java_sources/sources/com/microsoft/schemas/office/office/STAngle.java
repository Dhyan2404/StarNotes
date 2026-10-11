package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes7.dex */
public interface STAngle extends XmlString {
    public static final Enum ANY;
    public static final Enum AUTO;
    public static final SimpleTypeFactory<STAngle> Factory;
    public static final int INT_ANY = 1;
    public static final int INT_AUTO = 6;
    public static final int INT_X_30 = 2;
    public static final int INT_X_45 = 3;
    public static final int INT_X_60 = 4;
    public static final int INT_X_90 = 5;
    public static final Enum X_30;
    public static final Enum X_45;
    public static final Enum X_60;
    public static final Enum X_90;
    public static final SchemaType type;

    /* loaded from: classes7.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ANY = 1;
        static final int INT_AUTO = 6;
        static final int INT_X_30 = 2;
        static final int INT_X_45 = 3;
        static final int INT_X_60 = 4;
        static final int INT_X_90 = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("any", 1), new Enum("30", 2), new Enum("45", 3), new Enum("60", 4), new Enum("90", 5), new Enum("auto", 6)});

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
        SimpleTypeFactory<STAngle> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stangle3a7ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        ANY = Enum.forString("any");
        X_30 = Enum.forString("30");
        X_45 = Enum.forString("45");
        X_60 = Enum.forString("60");
        X_90 = Enum.forString("90");
        AUTO = Enum.forString("auto");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
