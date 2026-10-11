package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STSortType extends XmlString {
    public static final Enum ASCENDING;
    public static final Enum ASCENDING_ALPHA;
    public static final Enum ASCENDING_NATURAL;
    public static final Enum DESCENDING;
    public static final Enum DESCENDING_ALPHA;
    public static final Enum DESCENDING_NATURAL;
    public static final SimpleTypeFactory<STSortType> Factory;
    public static final int INT_ASCENDING = 2;
    public static final int INT_ASCENDING_ALPHA = 4;
    public static final int INT_ASCENDING_NATURAL = 6;
    public static final int INT_DESCENDING = 3;
    public static final int INT_DESCENDING_ALPHA = 5;
    public static final int INT_DESCENDING_NATURAL = 7;
    public static final int INT_NONE = 1;
    public static final Enum NONE;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ASCENDING = 2;
        static final int INT_ASCENDING_ALPHA = 4;
        static final int INT_ASCENDING_NATURAL = 6;
        static final int INT_DESCENDING = 3;
        static final int INT_DESCENDING_ALPHA = 5;
        static final int INT_DESCENDING_NATURAL = 7;
        static final int INT_NONE = 1;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("none", 1), new Enum(Constants.ATTRVAL_ORDER_ASCENDING, 2), new Enum(Constants.ATTRVAL_ORDER_DESCENDING, 3), new Enum("ascendingAlpha", 4), new Enum("descendingAlpha", 5), new Enum("ascendingNatural", 6), new Enum("descendingNatural", 7)});

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
        SimpleTypeFactory<STSortType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stsorttype2ad1type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NONE = Enum.forString("none");
        ASCENDING = Enum.forString(Constants.ATTRVAL_ORDER_ASCENDING);
        DESCENDING = Enum.forString(Constants.ATTRVAL_ORDER_DESCENDING);
        ASCENDING_ALPHA = Enum.forString("ascendingAlpha");
        DESCENDING_ALPHA = Enum.forString("descendingAlpha");
        ASCENDING_NATURAL = Enum.forString("ascendingNatural");
        DESCENDING_NATURAL = Enum.forString("descendingNatural");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
