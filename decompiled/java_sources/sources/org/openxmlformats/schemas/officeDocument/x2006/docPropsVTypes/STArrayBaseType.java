package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STArrayBaseType extends XmlString {
    public static final Enum BOOL;
    public static final Enum BSTR;

    /* renamed from: CY */
    public static final Enum f115755CY;
    public static final Enum DATE;
    public static final Enum DECIMAL;
    public static final Enum ERROR;
    public static final SimpleTypeFactory<STArrayBaseType> Factory;
    public static final Enum INT;
    public static final int INT_BOOL = 15;
    public static final int INT_BSTR = 13;
    public static final int INT_CY = 16;
    public static final int INT_DATE = 14;
    public static final int INT_DECIMAL = 12;
    public static final int INT_ERROR = 17;
    public static final int INT_INT = 5;
    public static final int INT_I_1 = 2;
    public static final int INT_I_2 = 3;
    public static final int INT_I_4 = 4;
    public static final int INT_R_4 = 10;
    public static final int INT_R_8 = 11;
    public static final int INT_UINT = 9;
    public static final int INT_UI_1 = 6;
    public static final int INT_UI_2 = 7;
    public static final int INT_UI_4 = 8;
    public static final int INT_VARIANT = 1;
    public static final Enum I_1;
    public static final Enum I_2;
    public static final Enum I_4;
    public static final Enum R_4;
    public static final Enum R_8;
    public static final Enum UINT;
    public static final Enum UI_1;
    public static final Enum UI_2;
    public static final Enum UI_4;
    public static final Enum VARIANT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOOL = 15;
        static final int INT_BSTR = 13;
        static final int INT_CY = 16;
        static final int INT_DATE = 14;
        static final int INT_DECIMAL = 12;
        static final int INT_ERROR = 17;
        static final int INT_INT = 5;
        static final int INT_I_1 = 2;
        static final int INT_I_2 = 3;
        static final int INT_I_4 = 4;
        static final int INT_R_4 = 10;
        static final int INT_R_8 = 11;
        static final int INT_UINT = 9;
        static final int INT_UI_1 = 6;
        static final int INT_UI_2 = 7;
        static final int INT_UI_4 = 8;
        static final int INT_VARIANT = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("variant", 1), new Enum("i1", 2), new Enum("i2", 3), new Enum("i4", 4), new Enum("int", 5), new Enum("ui1", 6), new Enum("ui2", 7), new Enum("ui4", 8), new Enum("uint", 9), new Enum("r4", 10), new Enum("r8", 11), new Enum("decimal", 12), new Enum("bstr", 13), new Enum("date", 14), new Enum("bool", 15), new Enum("cy", 16), new Enum("error", 17)});

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
        SimpleTypeFactory<STArrayBaseType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "starraybasetypee2dbtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        VARIANT = Enum.forString("variant");
        I_1 = Enum.forString("i1");
        I_2 = Enum.forString("i2");
        I_4 = Enum.forString("i4");
        INT = Enum.forString("int");
        UI_1 = Enum.forString("ui1");
        UI_2 = Enum.forString("ui2");
        UI_4 = Enum.forString("ui4");
        UINT = Enum.forString("uint");
        R_4 = Enum.forString("r4");
        R_8 = Enum.forString("r8");
        DECIMAL = Enum.forString("decimal");
        BSTR = Enum.forString("bstr");
        DATE = Enum.forString("date");
        BOOL = Enum.forString("bool");
        f115755CY = Enum.forString("cy");
        ERROR = Enum.forString("error");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
