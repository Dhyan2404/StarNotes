package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STTableType extends XmlString {
    public static final SimpleTypeFactory<STTableType> Factory;
    public static final int INT_QUERY_TABLE = 3;
    public static final int INT_WORKSHEET = 1;
    public static final int INT_XML = 2;
    public static final Enum QUERY_TABLE;
    public static final Enum WORKSHEET;
    public static final Enum XML;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_QUERY_TABLE = 3;
        static final int INT_WORKSHEET = 1;
        static final int INT_XML = 2;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("worksheet", 1), new Enum("xml", 2), new Enum("queryTable", 3)});

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
        SimpleTypeFactory<STTableType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "sttabletype4fb7type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        WORKSHEET = Enum.forString("worksheet");
        XML = Enum.forString("xml");
        QUERY_TABLE = Enum.forString("queryTable");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
