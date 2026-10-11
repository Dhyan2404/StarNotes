package javax.xml.datatype;

import javax.xml.XMLConstants;
import javax.xml.namespace.QName;

/* loaded from: classes5.dex */
public final class DatatypeConstants {
    public static final int APRIL = 4;
    public static final int AUGUST = 8;
    public static final Field DAYS;
    public static final int DECEMBER = 12;
    public static final int EQUAL = 0;
    public static final int FEBRUARY = 2;
    public static final int FIELD_UNDEFINED = Integer.MIN_VALUE;
    public static final int GREATER = 1;
    public static final Field HOURS;
    public static final int INDETERMINATE = 2;
    public static final int JANUARY = 1;
    public static final int JULY = 7;
    public static final int JUNE = 6;
    public static final int LESSER = -1;
    public static final int MARCH = 3;
    public static final int MAX_TIMEZONE_OFFSET = -840;
    public static final int MAY = 5;
    public static final Field MINUTES;
    public static final int MIN_TIMEZONE_OFFSET = 840;
    public static final Field MONTHS;
    public static final int NOVEMBER = 11;
    public static final int OCTOBER = 10;
    public static final Field SECONDS;
    public static final int SEPTEMBER = 9;
    public static final Field YEARS;
    public static final QName DATETIME = new QName("http://www.w3.org/2001/XMLSchema", "dateTime");
    public static final QName TIME = new QName("http://www.w3.org/2001/XMLSchema", "time");
    public static final QName DATE = new QName("http://www.w3.org/2001/XMLSchema", "date");
    public static final QName GYEARMONTH = new QName("http://www.w3.org/2001/XMLSchema", "gYearMonth");
    public static final QName GMONTHDAY = new QName("http://www.w3.org/2001/XMLSchema", "gMonthDay");
    public static final QName GYEAR = new QName("http://www.w3.org/2001/XMLSchema", "gYear");
    public static final QName GMONTH = new QName("http://www.w3.org/2001/XMLSchema", "gMonth");
    public static final QName GDAY = new QName("http://www.w3.org/2001/XMLSchema", "gDay");
    public static final QName DURATION = new QName("http://www.w3.org/2001/XMLSchema", "duration");
    public static final QName DURATION_DAYTIME = new QName(XMLConstants.W3C_XPATH_DATATYPE_NS_URI, "dayTimeDuration");
    public static final QName DURATION_YEARMONTH = new QName(XMLConstants.W3C_XPATH_DATATYPE_NS_URI, "yearMonthDuration");

    /* loaded from: classes5.dex */
    public static final class Field {

        /* renamed from: a */
        public final String f98016a;

        /* renamed from: b */
        public final int f98017b;

        public Field(String str, int i) {
            this.f98016a = str;
            this.f98017b = i;
        }

        public int getId() {
            return this.f98017b;
        }

        public String toString() {
            return this.f98016a;
        }

        public /* synthetic */ Field(String str, int i, C17888a c17888a) {
            this(str, i);
        }
    }

    static {
        C17888a c17888a = null;
        YEARS = new Field("YEARS", 0, c17888a);
        MONTHS = new Field("MONTHS", 1, c17888a);
        DAYS = new Field("DAYS", 2, c17888a);
        HOURS = new Field("HOURS", 3, c17888a);
        MINUTES = new Field("MINUTES", 4, c17888a);
        SECONDS = new Field("SECONDS", 5, c17888a);
    }

    private DatatypeConstants() {
    }
}
