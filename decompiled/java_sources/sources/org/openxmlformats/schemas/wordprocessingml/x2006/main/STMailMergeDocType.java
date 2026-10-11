package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STMailMergeDocType extends XmlString {
    public static final Enum CATALOG;
    public static final Enum EMAIL;
    public static final Enum ENVELOPES;
    public static final Enum FAX;
    public static final Enum FORM_LETTERS;
    public static final SimpleTypeFactory<STMailMergeDocType> Factory;
    public static final int INT_CATALOG = 1;
    public static final int INT_EMAIL = 5;
    public static final int INT_ENVELOPES = 2;
    public static final int INT_FAX = 6;
    public static final int INT_FORM_LETTERS = 4;
    public static final int INT_MAILING_LABELS = 3;
    public static final Enum MAILING_LABELS;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_CATALOG = 1;
        static final int INT_EMAIL = 5;
        static final int INT_ENVELOPES = 2;
        static final int INT_FAX = 6;
        static final int INT_FORM_LETTERS = 4;
        static final int INT_MAILING_LABELS = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("catalog", 1), new Enum("envelopes", 2), new Enum("mailingLabels", 3), new Enum("formLetters", 4), new Enum("email", 5), new Enum("fax", 6)});

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
        SimpleTypeFactory<STMailMergeDocType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmailmergedoctype4be7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        CATALOG = Enum.forString("catalog");
        ENVELOPES = Enum.forString("envelopes");
        MAILING_LABELS = Enum.forString("mailingLabels");
        FORM_LETTERS = Enum.forString("formLetters");
        EMAIL = Enum.forString("email");
        FAX = Enum.forString("fax");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
