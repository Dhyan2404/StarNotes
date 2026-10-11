package net.p110sf.saxon.functions;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.GDateValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TimeValue;
import net.p110sf.saxon.value.Whitespace;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes11.dex */
public class ParseIetfDate extends SystemFunction implements Callable {

    /* renamed from: k */
    public static final String f100281k = "";

    /* renamed from: h */
    public final String[] f100282h = {"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};

    /* renamed from: i */
    public final String[] f100283i = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

    /* renamed from: j */
    public final String[] f100284j = {"UT", "UTC", TimeZones.GMT_ID, "EST", "EDT", "CST", "CDT", "MST", "MDT", "PST", "PDT"};

    /* renamed from: a */
    public static void m63035a(String str, String str2) throws XPathException {
        XPathException xPathException = new XPathException("Invalid IETF date value " + str2 + " (" + str + MotionUtils.f31762d);
        xPathException.setErrorCode("FORG0010");
        throw xPathException;
    }

    public static boolean isValidTime(int i, int i2, int i3, int i4, int i5) {
        return ((i >= 0 && i <= 23 && i2 >= 0 && i2 < 60 && i3 >= 0 && i3 < 60 && i4 >= 0 && i4 < 1000000) || (i == 24 && i2 == 0 && i3 == 0 && i4 == 0)) && i5 >= -840 && i5 <= 840;
    }

    /* renamed from: b */
    public final int m63036b(String str, String str2) throws XPathException {
        if (str2.length() == 4) {
            return Integer.parseInt(str2);
        }
        if (str2.length() == 2) {
            return Integer.parseInt(str2) + 1900;
        }
        m63035a("Year number must be two or four digits", str);
        return 0;
    }

    /* renamed from: c */
    public final byte m63037c(String str) {
        if ("Jan".equalsIgnoreCase(str)) {
            return (byte) 1;
        }
        if ("Feb".equalsIgnoreCase(str)) {
            return (byte) 2;
        }
        if ("Mar".equalsIgnoreCase(str)) {
            return (byte) 3;
        }
        if ("Apr".equalsIgnoreCase(str)) {
            return (byte) 4;
        }
        if ("May".equalsIgnoreCase(str)) {
            return (byte) 5;
        }
        if ("Jun".equalsIgnoreCase(str)) {
            return (byte) 6;
        }
        if ("Jul".equalsIgnoreCase(str)) {
            return (byte) 7;
        }
        if ("Aug".equalsIgnoreCase(str)) {
            return (byte) 8;
        }
        if ("Sep".equalsIgnoreCase(str)) {
            return (byte) 9;
        }
        if ("Oct".equalsIgnoreCase(str)) {
            return (byte) 10;
        }
        if ("Nov".equalsIgnoreCase(str)) {
            return (byte) 11;
        }
        return "Dec".equalsIgnoreCase(str) ? (byte) 12 : (byte) 0;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        return stringValue == null ? EmptySequence.getInstance() : SequenceTool.itemOrEmpty(parse(stringValue.getStringValue(), xPathContext));
    }

    /* renamed from: d */
    public final int m63038d(String str) {
        if (("UT".equalsIgnoreCase(str) | "UTC".equalsIgnoreCase(str)) || TimeZones.GMT_ID.equalsIgnoreCase(str)) {
            return 0;
        }
        if ("EST".equalsIgnoreCase(str)) {
            return -300;
        }
        if ("EDT".equalsIgnoreCase(str)) {
            return -240;
        }
        if ("CST".equalsIgnoreCase(str)) {
            return -360;
        }
        if ("CDT".equalsIgnoreCase(str)) {
            return -300;
        }
        if ("MST".equalsIgnoreCase(str)) {
            return -420;
        }
        if ("MDT".equalsIgnoreCase(str)) {
            return -360;
        }
        if ("PST".equalsIgnoreCase(str)) {
            return -480;
        }
        return "PDT".equalsIgnoreCase(str) ? -420 : 0;
    }

    /* renamed from: e */
    public final boolean m63039e(String str) {
        for (String str2 : this.f100282h) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public final boolean m63040f(String str) {
        for (String str2 : this.f100283i) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public final boolean m63041g(String str) {
        for (String str2 : this.f100284j) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public final int m63042h(List<String> list, int i, String str) throws XPathException {
        boolean z;
        boolean z2 = true;
        if (" ".equals(list.get(i))) {
            i++;
            z = true;
        } else {
            z = false;
        }
        if ("-".equals(list.get(i))) {
            i++;
            z = true;
        }
        if (" ".equals(list.get(i))) {
            i++;
        } else {
            z2 = z;
        }
        if (!z2) {
            m63035a("Date separator missing", str);
        }
        return i;
    }

    /* renamed from: i */
    public final List<String> m63043i(String str) throws XPathException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        ArrayList arrayList = new ArrayList();
        String trim = str.trim();
        if (trim.isEmpty()) {
            m63035a("Input is empty", trim);
            return arrayList;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(trim);
        int i6 = 0;
        sb.append((char) 0);
        String sb2 = sb.toString();
        while (true) {
            char charAt = sb2.charAt(i6);
            if (charAt == 0) {
                arrayList.add("");
                return arrayList;
            }
            if (Whitespace.isWhite(charAt)) {
                while (true) {
                    i = i6 + 1;
                    if (!Whitespace.isWhite(sb2.charAt(i6))) {
                        break;
                    }
                    i6 = i;
                }
                arrayList.add(" ");
                i2 = i - 1;
            } else {
                if (Character.isLetter(charAt)) {
                    int i7 = i6;
                    while (true) {
                        i3 = i7 + 1;
                        if (!Character.isLetter(sb2.charAt(i7))) {
                            break;
                        }
                        i7 = i3;
                    }
                    i4 = i3 - 1;
                    arrayList.add(sb2.substring(i6, i4));
                } else if (Character.isDigit(charAt)) {
                    int i8 = i6;
                    while (true) {
                        i5 = i8 + 1;
                        if (!Character.isDigit(sb2.charAt(i8))) {
                            break;
                        }
                        i8 = i5;
                    }
                    i4 = i5 - 1;
                    arrayList.add(sb2.substring(i6, i4));
                } else {
                    i2 = i6 + 1;
                    arrayList.add(sb2.substring(i6, i2));
                }
                i6 = i4;
            }
            i6 = i2;
        }
    }

    public DateTimeValue parse(String str, XPathContext xPathContext) throws XPathException {
        int i;
        int i2;
        byte b;
        byte b2;
        int i3;
        int i4;
        List<String> m63043i = m63043i(str);
        ArrayList arrayList = new ArrayList();
        String str2 = m63043i.get(0);
        if (str2.matches("[A-Za-z]+") && m63039e(str2)) {
            String str3 = m63043i.get(1);
            if (",".equals(str3)) {
                str3 = m63043i.get(2);
                i4 = 2;
            } else {
                i4 = 1;
            }
            if (!" ".equals(str3)) {
                m63035a("Space missing after day name", str);
            }
            i = i4 + 1;
            str2 = m63043i.get(i);
        } else {
            i = 0;
        }
        if (m63040f(str2)) {
            b = m63037c(str2);
            int m63042h = m63042h(m63043i, i + 1, str);
            String str4 = m63043i.get(m63042h);
            if (!str4.matches("[0-9]+")) {
                m63035a("Day number expected after month name", str);
            }
            if (str4.length() > 2) {
                m63035a("Day number exceeds two digits", str);
            }
            b2 = (byte) Integer.parseInt(str4);
            int i5 = m63042h + 1;
            if (!" ".equals(m63043i.get(i5))) {
                m63035a("Space missing after day number", str);
            }
            int parseTime = parseTime(m63043i, i5 + 1, arrayList, str) + 1;
            if (!" ".equals(m63043i.get(parseTime))) {
                m63035a("Space missing after time string", str);
            }
            i = parseTime + 1;
            String str5 = m63043i.get(i);
            if (str5.matches("[0-9]+")) {
                i2 = m63036b(str, str5);
            } else {
                m63035a("Year number expected after time", str);
                i2 = 0;
            }
        } else if (str2.matches("[0-9]+")) {
            if (str2.length() > 2) {
                m63035a("First number in string expected to be day in two digits", str);
            }
            b2 = (byte) Integer.parseInt(str2);
            int m63042h2 = m63042h(m63043i, i + 1, str);
            String str6 = m63043i.get(m63042h2);
            if (!m63040f(str6)) {
                m63035a("Abbreviated month name expected after day number", str);
            }
            byte m63037c = m63037c(str6);
            int m63042h3 = m63042h(m63043i, m63042h2 + 1, str);
            String str7 = m63043i.get(m63042h3);
            if (str7.matches("[0-9]+")) {
                i3 = m63036b(str, str7);
            } else {
                m63035a("Year number expected after month name", str);
                i3 = 0;
            }
            int i6 = m63042h3 + 1;
            if (!" ".equals(m63043i.get(i6))) {
                m63035a("Space missing after year number", str);
            }
            int parseTime2 = parseTime(m63043i, i6 + 1, arrayList, str);
            b = m63037c;
            i = parseTime2;
            i2 = i3;
        } else {
            m63035a("String expected to begin with month name or day name (or day number)", str);
            i2 = 0;
            b = 0;
            b2 = 0;
        }
        if (!GDateValue.isValidDate(i2, b, b2)) {
            m63035a("Date is not valid", str);
        }
        if (!m63043i.get(i + 1).equals("")) {
            m63035a("Extra content found in string after date", str);
        }
        DateValue dateValue = new DateValue(i2, b, b2);
        TimeValue timeValue = arrayList.get(0);
        if (timeValue.getHour() == 24) {
            dateValue = DateValue.tomorrow(dateValue.getYear(), dateValue.getMonth(), dateValue.getDay());
            timeValue = new TimeValue((byte) 0, (byte) 0, (byte) 0, 0, timeValue.getTimezoneInMinutes(), "");
        }
        return DateTimeValue.makeDateTimeValue(dateValue, timeValue);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0398  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int parseTime(java.util.List<java.lang.String> r23, int r24, java.util.List<net.p110sf.saxon.value.TimeValue> r25, java.lang.String r26) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 1008
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.ParseIetfDate.parseTime(java.util.List, int, java.util.List, java.lang.String):int");
    }
}
