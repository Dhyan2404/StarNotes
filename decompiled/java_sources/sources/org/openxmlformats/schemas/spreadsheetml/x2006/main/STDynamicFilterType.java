package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STDynamicFilterType extends XmlString {
    public static final Enum ABOVE_AVERAGE;
    public static final Enum BELOW_AVERAGE;
    public static final SimpleTypeFactory<STDynamicFilterType> Factory;
    public static final int INT_ABOVE_AVERAGE = 2;
    public static final int INT_BELOW_AVERAGE = 3;
    public static final int INT_LAST_MONTH = 12;
    public static final int INT_LAST_QUARTER = 15;
    public static final int INT_LAST_WEEK = 9;
    public static final int INT_LAST_YEAR = 18;
    public static final int INT_M_1 = 24;
    public static final int INT_M_10 = 33;
    public static final int INT_M_11 = 34;
    public static final int INT_M_12 = 35;
    public static final int INT_M_2 = 25;
    public static final int INT_M_3 = 26;
    public static final int INT_M_4 = 27;
    public static final int INT_M_5 = 28;
    public static final int INT_M_6 = 29;
    public static final int INT_M_7 = 30;
    public static final int INT_M_8 = 31;
    public static final int INT_M_9 = 32;
    public static final int INT_NEXT_MONTH = 10;
    public static final int INT_NEXT_QUARTER = 13;
    public static final int INT_NEXT_WEEK = 7;
    public static final int INT_NEXT_YEAR = 16;
    public static final int INT_NULL = 1;
    public static final int INT_Q_1 = 20;
    public static final int INT_Q_2 = 21;
    public static final int INT_Q_3 = 22;
    public static final int INT_Q_4 = 23;
    public static final int INT_THIS_MONTH = 11;
    public static final int INT_THIS_QUARTER = 14;
    public static final int INT_THIS_WEEK = 8;
    public static final int INT_THIS_YEAR = 17;
    public static final int INT_TODAY = 5;
    public static final int INT_TOMORROW = 4;
    public static final int INT_YEAR_TO_DATE = 19;
    public static final int INT_YESTERDAY = 6;
    public static final Enum LAST_MONTH;
    public static final Enum LAST_QUARTER;
    public static final Enum LAST_WEEK;
    public static final Enum LAST_YEAR;
    public static final Enum M_1;
    public static final Enum M_10;
    public static final Enum M_11;
    public static final Enum M_12;
    public static final Enum M_2;
    public static final Enum M_3;
    public static final Enum M_4;
    public static final Enum M_5;
    public static final Enum M_6;
    public static final Enum M_7;
    public static final Enum M_8;
    public static final Enum M_9;
    public static final Enum NEXT_MONTH;
    public static final Enum NEXT_QUARTER;
    public static final Enum NEXT_WEEK;
    public static final Enum NEXT_YEAR;
    public static final Enum NULL;
    public static final Enum Q_1;
    public static final Enum Q_2;
    public static final Enum Q_3;
    public static final Enum Q_4;
    public static final Enum THIS_MONTH;
    public static final Enum THIS_QUARTER;
    public static final Enum THIS_WEEK;
    public static final Enum THIS_YEAR;
    public static final Enum TODAY;
    public static final Enum TOMORROW;
    public static final Enum YEAR_TO_DATE;
    public static final Enum YESTERDAY;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_ABOVE_AVERAGE = 2;
        static final int INT_BELOW_AVERAGE = 3;
        static final int INT_LAST_MONTH = 12;
        static final int INT_LAST_QUARTER = 15;
        static final int INT_LAST_WEEK = 9;
        static final int INT_LAST_YEAR = 18;
        static final int INT_M_1 = 24;
        static final int INT_M_10 = 33;
        static final int INT_M_11 = 34;
        static final int INT_M_12 = 35;
        static final int INT_M_2 = 25;
        static final int INT_M_3 = 26;
        static final int INT_M_4 = 27;
        static final int INT_M_5 = 28;
        static final int INT_M_6 = 29;
        static final int INT_M_7 = 30;
        static final int INT_M_8 = 31;
        static final int INT_M_9 = 32;
        static final int INT_NEXT_MONTH = 10;
        static final int INT_NEXT_QUARTER = 13;
        static final int INT_NEXT_WEEK = 7;
        static final int INT_NEXT_YEAR = 16;
        static final int INT_NULL = 1;
        static final int INT_Q_1 = 20;
        static final int INT_Q_2 = 21;
        static final int INT_Q_3 = 22;
        static final int INT_Q_4 = 23;
        static final int INT_THIS_MONTH = 11;
        static final int INT_THIS_QUARTER = 14;
        static final int INT_THIS_WEEK = 8;
        static final int INT_THIS_YEAR = 17;
        static final int INT_TODAY = 5;
        static final int INT_TOMORROW = 4;
        static final int INT_YEAR_TO_DATE = 19;
        static final int INT_YESTERDAY = 6;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("null", 1), new Enum("aboveAverage", 2), new Enum("belowAverage", 3), new Enum("tomorrow", 4), new Enum("today", 5), new Enum("yesterday", 6), new Enum("nextWeek", 7), new Enum("thisWeek", 8), new Enum("lastWeek", 9), new Enum("nextMonth", 10), new Enum("thisMonth", 11), new Enum("lastMonth", 12), new Enum("nextQuarter", 13), new Enum("thisQuarter", 14), new Enum("lastQuarter", 15), new Enum("nextYear", 16), new Enum("thisYear", 17), new Enum("lastYear", 18), new Enum("yearToDate", 19), new Enum("Q1", 20), new Enum("Q2", 21), new Enum("Q3", 22), new Enum("Q4", 23), new Enum("M1", 24), new Enum("M2", 25), new Enum("M3", 26), new Enum("M4", 27), new Enum("M5", 28), new Enum("M6", 29), new Enum("M7", 30), new Enum("M8", 31), new Enum("M9", 32), new Enum("M10", 33), new Enum("M11", 34), new Enum("M12", 35)});

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
        SimpleTypeFactory<STDynamicFilterType> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stdynamicfiltertypebbc0type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        NULL = Enum.forString("null");
        ABOVE_AVERAGE = Enum.forString("aboveAverage");
        BELOW_AVERAGE = Enum.forString("belowAverage");
        TOMORROW = Enum.forString("tomorrow");
        TODAY = Enum.forString("today");
        YESTERDAY = Enum.forString("yesterday");
        NEXT_WEEK = Enum.forString("nextWeek");
        THIS_WEEK = Enum.forString("thisWeek");
        LAST_WEEK = Enum.forString("lastWeek");
        NEXT_MONTH = Enum.forString("nextMonth");
        THIS_MONTH = Enum.forString("thisMonth");
        LAST_MONTH = Enum.forString("lastMonth");
        NEXT_QUARTER = Enum.forString("nextQuarter");
        THIS_QUARTER = Enum.forString("thisQuarter");
        LAST_QUARTER = Enum.forString("lastQuarter");
        NEXT_YEAR = Enum.forString("nextYear");
        THIS_YEAR = Enum.forString("thisYear");
        LAST_YEAR = Enum.forString("lastYear");
        YEAR_TO_DATE = Enum.forString("yearToDate");
        Q_1 = Enum.forString("Q1");
        Q_2 = Enum.forString("Q2");
        Q_3 = Enum.forString("Q3");
        Q_4 = Enum.forString("Q4");
        M_1 = Enum.forString("M1");
        M_2 = Enum.forString("M2");
        M_3 = Enum.forString("M3");
        M_4 = Enum.forString("M4");
        M_5 = Enum.forString("M5");
        M_6 = Enum.forString("M6");
        M_7 = Enum.forString("M7");
        M_8 = Enum.forString("M8");
        M_9 = Enum.forString("M9");
        M_10 = Enum.forString("M10");
        M_11 = Enum.forString("M11");
        M_12 = Enum.forString("M12");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
