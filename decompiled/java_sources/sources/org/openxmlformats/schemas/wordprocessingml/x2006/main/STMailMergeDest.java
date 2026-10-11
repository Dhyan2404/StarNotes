package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STMailMergeDest extends XmlString {
    public static final Enum EMAIL;
    public static final Enum FAX;
    public static final SimpleTypeFactory<STMailMergeDest> Factory;
    public static final int INT_EMAIL = 3;
    public static final int INT_FAX = 4;
    public static final int INT_NEW_DOCUMENT = 1;
    public static final int INT_PRINTER = 2;
    public static final Enum NEW_DOCUMENT;
    public static final Enum PRINTER;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_EMAIL = 3;
        static final int INT_FAX = 4;
        static final int INT_NEW_DOCUMENT = 1;
        static final int INT_PRINTER = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("newDocument", 1), new Enum("printer", 2), new Enum("email", 3), new Enum("fax", 4)});

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
        SimpleTypeFactory<STMailMergeDest> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmailmergedesta0bftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NEW_DOCUMENT = Enum.forString("newDocument");
        PRINTER = Enum.forString("printer");
        EMAIL = Enum.forString("email");
        FAX = Enum.forString("fax");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
