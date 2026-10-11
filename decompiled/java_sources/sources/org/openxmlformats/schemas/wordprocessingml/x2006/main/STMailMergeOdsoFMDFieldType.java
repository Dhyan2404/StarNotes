package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes16.dex */
public interface STMailMergeOdsoFMDFieldType extends XmlString {
    public static final Enum DB_COLUMN;
    public static final SimpleTypeFactory<STMailMergeOdsoFMDFieldType> Factory;
    public static final int INT_DB_COLUMN = 2;
    public static final int INT_NULL = 1;
    public static final Enum NULL;
    public static final SchemaType type;

    /* loaded from: classes16.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DB_COLUMN = 2;
        static final int INT_NULL = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("null", 1), new Enum("dbColumn", 2)});

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
        SimpleTypeFactory<STMailMergeOdsoFMDFieldType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stmailmergeodsofmdfieldtypede39type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NULL = Enum.forString("null");
        DB_COLUMN = Enum.forString("dbColumn");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
