package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STExternalConnectionType extends XmlString {
    public static final Enum DMY;
    public static final Enum DYM;
    public static final Enum EMD;
    public static final SimpleTypeFactory<STExternalConnectionType> Factory;
    public static final Enum GENERAL;
    public static final int INT_DMY = 4;
    public static final int INT_DYM = 7;
    public static final int INT_EMD = 10;
    public static final int INT_GENERAL = 1;
    public static final int INT_MDY = 3;
    public static final int INT_MYD = 6;
    public static final int INT_SKIP = 9;
    public static final int INT_TEXT = 2;
    public static final int INT_YDM = 8;
    public static final int INT_YMD = 5;
    public static final Enum MDY;
    public static final Enum MYD;
    public static final Enum SKIP;
    public static final Enum TEXT;
    public static final Enum YDM;
    public static final Enum YMD;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DMY = 4;
        static final int INT_DYM = 7;
        static final int INT_EMD = 10;
        static final int INT_GENERAL = 1;
        static final int INT_MDY = 3;
        static final int INT_MYD = 6;
        static final int INT_SKIP = 9;
        static final int INT_TEXT = 2;
        static final int INT_YDM = 8;
        static final int INT_YMD = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("general", 1), new Enum("text", 2), new Enum("MDY", 3), new Enum("DMY", 4), new Enum("YMD", 5), new Enum("MYD", 6), new Enum("DYM", 7), new Enum("YDM", 8), new Enum("skip", 9), new Enum("EMD", 10)});

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
        SimpleTypeFactory<STExternalConnectionType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stexternalconnectiontypee83ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        GENERAL = Enum.forString("general");
        TEXT = Enum.forString("text");
        MDY = Enum.forString("MDY");
        DMY = Enum.forString("DMY");
        YMD = Enum.forString("YMD");
        MYD = Enum.forString("MYD");
        DYM = Enum.forString("DYM");
        YDM = Enum.forString("YDM");
        SKIP = Enum.forString("skip");
        EMD = Enum.forString("EMD");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
