package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STMailMergeSourceType extends XmlString {
    public static final Enum ADDRESS_BOOK;
    public static final Enum DATABASE;
    public static final Enum DOCUMENT_1;
    public static final Enum DOCUMENT_2;
    public static final Enum EMAIL;
    public static final SimpleTypeFactory<STMailMergeSourceType> Factory;
    public static final int INT_ADDRESS_BOOK = 2;
    public static final int INT_DATABASE = 1;
    public static final int INT_DOCUMENT_1 = 3;
    public static final int INT_DOCUMENT_2 = 4;
    public static final int INT_EMAIL = 6;
    public static final int INT_LEGACY = 8;
    public static final int INT_MASTER = 9;
    public static final int INT_NATIVE = 7;
    public static final int INT_TEXT = 5;
    public static final Enum LEGACY;
    public static final Enum MASTER;
    public static final Enum NATIVE;
    public static final Enum TEXT;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ADDRESS_BOOK = 2;
        static final int INT_DATABASE = 1;
        static final int INT_DOCUMENT_1 = 3;
        static final int INT_DOCUMENT_2 = 4;
        static final int INT_EMAIL = 6;
        static final int INT_LEGACY = 8;
        static final int INT_MASTER = 9;
        static final int INT_NATIVE = 7;
        static final int INT_TEXT = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("database", 1), new Enum("addressBook", 2), new Enum("document1", 3), new Enum("document2", 4), new Enum("text", 5), new Enum("email", 6), new Enum("native", 7), new Enum("legacy", 8), new Enum("master", 9)});

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
        SimpleTypeFactory<STMailMergeSourceType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmailmergesourcetype534ctype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        DATABASE = Enum.forString("database");
        ADDRESS_BOOK = Enum.forString("addressBook");
        DOCUMENT_1 = Enum.forString("document1");
        DOCUMENT_2 = Enum.forString("document2");
        TEXT = Enum.forString("text");
        EMAIL = Enum.forString("email");
        NATIVE = Enum.forString("native");
        LEGACY = Enum.forString("legacy");
        MASTER = Enum.forString("master");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
