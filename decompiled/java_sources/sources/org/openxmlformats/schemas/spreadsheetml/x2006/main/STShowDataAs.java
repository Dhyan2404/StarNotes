package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.templates.Constants;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STShowDataAs extends XmlString {
    public static final Enum DIFFERENCE;
    public static final SimpleTypeFactory<STShowDataAs> Factory;
    public static final Enum INDEX;
    public static final int INT_DIFFERENCE = 2;
    public static final int INT_INDEX = 9;
    public static final int INT_NORMAL = 1;
    public static final int INT_PERCENT = 3;
    public static final int INT_PERCENT_DIFF = 4;
    public static final int INT_PERCENT_OF_COL = 7;
    public static final int INT_PERCENT_OF_ROW = 6;
    public static final int INT_PERCENT_OF_TOTAL = 8;
    public static final int INT_RUN_TOTAL = 5;
    public static final Enum NORMAL;
    public static final Enum PERCENT;
    public static final Enum PERCENT_DIFF;
    public static final Enum PERCENT_OF_COL;
    public static final Enum PERCENT_OF_ROW;
    public static final Enum PERCENT_OF_TOTAL;
    public static final Enum RUN_TOTAL;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DIFFERENCE = 2;
        static final int INT_INDEX = 9;
        static final int INT_NORMAL = 1;
        static final int INT_PERCENT = 3;
        static final int INT_PERCENT_DIFF = 4;
        static final int INT_PERCENT_OF_COL = 7;
        static final int INT_PERCENT_OF_ROW = 6;
        static final int INT_PERCENT_OF_TOTAL = 8;
        static final int INT_RUN_TOTAL = 5;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("normal", 1), new Enum("difference", 2), new Enum(Constants.ATTRNAME_PERCENT, 3), new Enum("percentDiff", 4), new Enum("runTotal", 5), new Enum("percentOfRow", 6), new Enum("percentOfCol", 7), new Enum("percentOfTotal", 8), new Enum(FirebaseAnalytics.Param.INDEX, 9)});

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
        SimpleTypeFactory<STShowDataAs> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stshowdataas0732type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NORMAL = Enum.forString("normal");
        DIFFERENCE = Enum.forString("difference");
        PERCENT = Enum.forString(Constants.ATTRNAME_PERCENT);
        PERCENT_DIFF = Enum.forString("percentDiff");
        RUN_TOTAL = Enum.forString("runTotal");
        PERCENT_OF_ROW = Enum.forString("percentOfRow");
        PERCENT_OF_COL = Enum.forString("percentOfCol");
        PERCENT_OF_TOTAL = Enum.forString("percentOfTotal");
        INDEX = Enum.forString(FirebaseAnalytics.Param.INDEX);
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
