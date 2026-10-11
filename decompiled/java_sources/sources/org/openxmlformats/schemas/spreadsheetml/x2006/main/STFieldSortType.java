package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STFieldSortType extends XmlString {
    public static final Enum ASCENDING;
    public static final Enum DESCENDING;
    public static final SimpleTypeFactory<STFieldSortType> Factory;
    public static final int INT_ASCENDING = 2;
    public static final int INT_DESCENDING = 3;
    public static final int INT_MANUAL = 1;
    public static final Enum MANUAL;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ASCENDING = 2;
        static final int INT_DESCENDING = 3;
        static final int INT_MANUAL = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("manual", 1), new Enum(Constants.ATTRVAL_ORDER_ASCENDING, 2), new Enum(Constants.ATTRVAL_ORDER_DESCENDING, 3)});

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
        SimpleTypeFactory<STFieldSortType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stfieldsorttypee6a1type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        MANUAL = Enum.forString("manual");
        ASCENDING = Enum.forString(Constants.ATTRVAL_ORDER_ASCENDING);
        DESCENDING = Enum.forString(Constants.ATTRVAL_ORDER_DESCENDING);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
