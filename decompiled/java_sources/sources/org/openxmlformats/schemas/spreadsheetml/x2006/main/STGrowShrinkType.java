package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STGrowShrinkType extends XmlString {
    public static final SimpleTypeFactory<STGrowShrinkType> Factory;
    public static final Enum INSERT_CLEAR;
    public static final Enum INSERT_DELETE;
    public static final int INT_INSERT_CLEAR = 2;
    public static final int INT_INSERT_DELETE = 1;
    public static final int INT_OVERWRITE_CLEAR = 3;
    public static final Enum OVERWRITE_CLEAR;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_INSERT_CLEAR = 2;
        static final int INT_INSERT_DELETE = 1;
        static final int INT_OVERWRITE_CLEAR = 3;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("insertDelete", 1), new Enum("insertClear", 2), new Enum("overwriteClear", 3)});

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
        SimpleTypeFactory<STGrowShrinkType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stgrowshrinktype5ceftype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        INSERT_DELETE = Enum.forString("insertDelete");
        INSERT_CLEAR = Enum.forString("insertClear");
        OVERWRITE_CLEAR = Enum.forString("overwriteClear");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
