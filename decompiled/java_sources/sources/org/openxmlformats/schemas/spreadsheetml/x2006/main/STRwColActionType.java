package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STRwColActionType extends XmlString {
    public static final Enum DELETE_COL;
    public static final Enum DELETE_ROW;
    public static final SimpleTypeFactory<STRwColActionType> Factory;
    public static final Enum INSERT_COL;
    public static final Enum INSERT_ROW;
    public static final int INT_DELETE_COL = 4;
    public static final int INT_DELETE_ROW = 2;
    public static final int INT_INSERT_COL = 3;
    public static final int INT_INSERT_ROW = 1;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DELETE_COL = 4;
        static final int INT_DELETE_ROW = 2;
        static final int INT_INSERT_COL = 3;
        static final int INT_INSERT_ROW = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("insertRow", 1), new Enum("deleteRow", 2), new Enum("insertCol", 3), new Enum("deleteCol", 4)});

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
        SimpleTypeFactory<STRwColActionType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "strwcolactiontypeff9atype");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        INSERT_ROW = Enum.forString("insertRow");
        DELETE_ROW = Enum.forString("deleteRow");
        INSERT_COL = Enum.forString("insertCol");
        DELETE_COL = Enum.forString("deleteCol");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
