package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes14.dex */
public interface STVectorBaseType extends XmlString {
    public static final Enum BOOL;
    public static final Enum BSTR;
    public static final Enum CLSID;

    /* renamed from: CY */
    public static final Enum f115756CY;
    public static final Enum DATE;
    public static final Enum ERROR;
    public static final Enum FILETIME;
    public static final SimpleTypeFactory<STVectorBaseType> Factory;
    public static final int INT_BOOL = 17;
    public static final int INT_BSTR = 14;
    public static final int INT_CLSID = 20;
    public static final int INT_CY = 18;
    public static final int INT_DATE = 15;
    public static final int INT_ERROR = 19;
    public static final int INT_FILETIME = 16;
    public static final int INT_I_1 = 2;
    public static final int INT_I_2 = 3;
    public static final int INT_I_4 = 4;
    public static final int INT_I_8 = 5;
    public static final int INT_LPSTR = 12;
    public static final int INT_LPWSTR = 13;
    public static final int INT_R_4 = 10;
    public static final int INT_R_8 = 11;
    public static final int INT_UI_1 = 6;
    public static final int INT_UI_2 = 7;
    public static final int INT_UI_4 = 8;
    public static final int INT_UI_8 = 9;
    public static final int INT_VARIANT = 1;
    public static final Enum I_1;
    public static final Enum I_2;
    public static final Enum I_4;
    public static final Enum I_8;
    public static final Enum LPSTR;
    public static final Enum LPWSTR;
    public static final Enum R_4;
    public static final Enum R_8;
    public static final Enum UI_1;
    public static final Enum UI_2;
    public static final Enum UI_4;
    public static final Enum UI_8;
    public static final Enum VARIANT;
    public static final SchemaType type;

    /* loaded from: classes14.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_BOOL = 17;
        static final int INT_BSTR = 14;
        static final int INT_CLSID = 20;
        static final int INT_CY = 18;
        static final int INT_DATE = 15;
        static final int INT_ERROR = 19;
        static final int INT_FILETIME = 16;
        static final int INT_I_1 = 2;
        static final int INT_I_2 = 3;
        static final int INT_I_4 = 4;
        static final int INT_I_8 = 5;
        static final int INT_LPSTR = 12;
        static final int INT_LPWSTR = 13;
        static final int INT_R_4 = 10;
        static final int INT_R_8 = 11;
        static final int INT_UI_1 = 6;
        static final int INT_UI_2 = 7;
        static final int INT_UI_4 = 8;
        static final int INT_UI_8 = 9;
        static final int INT_VARIANT = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("variant", 1), new Enum("i1", 2), new Enum("i2", 3), new Enum("i4", 4), new Enum("i8", 5), new Enum("ui1", 6), new Enum("ui2", 7), new Enum("ui4", 8), new Enum("ui8", 9), new Enum("r4", 10), new Enum("r8", 11), new Enum("lpstr", 12), new Enum("lpwstr", 13), new Enum("bstr", 14), new Enum("date", 15), new Enum("filetime", 16), new Enum("bool", 17), new Enum("cy", 18), new Enum("error", 19), new Enum("clsid", 20)});

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
        SimpleTypeFactory<STVectorBaseType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stvectorbasetype36e7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        VARIANT = Enum.forString("variant");
        I_1 = Enum.forString("i1");
        I_2 = Enum.forString("i2");
        I_4 = Enum.forString("i4");
        I_8 = Enum.forString("i8");
        UI_1 = Enum.forString("ui1");
        UI_2 = Enum.forString("ui2");
        UI_4 = Enum.forString("ui4");
        UI_8 = Enum.forString("ui8");
        R_4 = Enum.forString("r4");
        R_8 = Enum.forString("r8");
        LPSTR = Enum.forString("lpstr");
        LPWSTR = Enum.forString("lpwstr");
        BSTR = Enum.forString("bstr");
        DATE = Enum.forString("date");
        FILETIME = Enum.forString("filetime");
        BOOL = Enum.forString("bool");
        f115756CY = Enum.forString("cy");
        ERROR = Enum.forString("error");
        CLSID = Enum.forString("clsid");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
