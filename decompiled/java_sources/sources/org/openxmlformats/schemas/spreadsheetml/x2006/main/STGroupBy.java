package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.SimpleTypeFactory;

/* loaded from: classes15.dex */
public interface STGroupBy extends XmlString {
    public static final Enum DAYS;
    public static final SimpleTypeFactory<STGroupBy> Factory;
    public static final Enum HOURS;
    public static final int INT_DAYS = 5;
    public static final int INT_HOURS = 4;
    public static final int INT_MINUTES = 3;
    public static final int INT_MONTHS = 6;
    public static final int INT_QUARTERS = 7;
    public static final int INT_RANGE = 1;
    public static final int INT_SECONDS = 2;
    public static final int INT_YEARS = 8;
    public static final Enum MINUTES;
    public static final Enum MONTHS;
    public static final Enum QUARTERS;
    public static final Enum RANGE;
    public static final Enum SECONDS;
    public static final Enum YEARS;
    public static final SchemaType type;

    /* loaded from: classes15.dex */
    public static final class Enum extends StringEnumAbstractBase {
        static final int INT_DAYS = 5;
        static final int INT_HOURS = 4;
        static final int INT_MINUTES = 3;
        static final int INT_MONTHS = 6;
        static final int INT_QUARTERS = 7;
        static final int INT_RANGE = 1;
        static final int INT_SECONDS = 2;
        static final int INT_YEARS = 8;
        private static final long serialVersionUID = 1;
        public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum(SessionDescription.f26441q, 1), new Enum("seconds", 2), new Enum("minutes", 3), new Enum("hours", 4), new Enum("days", 5), new Enum("months", 6), new Enum("quarters", 7), new Enum("years", 8)});

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
        SimpleTypeFactory<STGroupBy> simpleTypeFactory = new SimpleTypeFactory<>(TypeSystemHolder.typeSystem, "stgroupbya405type");
        Factory = simpleTypeFactory;
        type = simpleTypeFactory.getType();
        RANGE = Enum.forString(SessionDescription.f26441q);
        SECONDS = Enum.forString("seconds");
        MINUTES = Enum.forString("minutes");
        HOURS = Enum.forString("hours");
        DAYS = Enum.forString("days");
        MONTHS = Enum.forString("months");
        QUARTERS = Enum.forString("quarters");
        YEARS = Enum.forString("years");
    }

    StringEnumAbstractBase getEnumValue();

    void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
}
