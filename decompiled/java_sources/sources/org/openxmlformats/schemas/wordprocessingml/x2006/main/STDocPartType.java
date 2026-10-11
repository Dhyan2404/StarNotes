package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STDocPartType extends XmlString {
    public static final Enum AUTO_EXP;
    public static final Enum BB_PLC_HDR;
    public static final Enum FORM_FLD;
    public static final SimpleTypeFactory<STDocPartType> Factory;
    public static final int INT_AUTO_EXP = 3;
    public static final int INT_BB_PLC_HDR = 7;
    public static final int INT_FORM_FLD = 6;
    public static final int INT_NONE = 1;
    public static final int INT_NORMAL = 2;
    public static final int INT_SPELLER = 5;
    public static final int INT_TOOLBAR = 4;
    public static final Enum NONE;
    public static final Enum NORMAL;
    public static final Enum SPELLER;
    public static final Enum TOOLBAR;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_AUTO_EXP = 3;
        static final int INT_BB_PLC_HDR = 7;
        static final int INT_FORM_FLD = 6;
        static final int INT_NONE = 1;
        static final int INT_NORMAL = 2;
        static final int INT_SPELLER = 5;
        static final int INT_TOOLBAR = 4;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum("normal", 2), new Enum("autoExp", 3), new Enum("toolbar", 4), new Enum("speller", 5), new Enum("formFld", 6), new Enum("bbPlcHdr", 7)});

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
        SimpleTypeFactory<STDocPartType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdocparttype191dtype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        NORMAL = Enum.forString("normal");
        AUTO_EXP = Enum.forString("autoExp");
        TOOLBAR = Enum.forString("toolbar");
        SPELLER = Enum.forString("speller");
        FORM_FLD = Enum.forString("formFld");
        BB_PLC_HDR = Enum.forString("bbPlcHdr");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
