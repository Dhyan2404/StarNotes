package org.apache.commons.lang3.time;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes12.dex */
public class FastTimeZone {

    /* renamed from: a */
    public static final Pattern f107685a = Pattern.compile("^(?:(?i)GMT)?([+-])?(\\d\\d?)?(:?(\\d\\d?))?$");

    /* renamed from: b */
    public static final TimeZone f107686b = new GmtTimeZone(false, 0, 0);

    /* renamed from: a */
    public static int m67415a(String str) {
        if (str != null) {
            return Integer.parseInt(str);
        }
        return 0;
    }

    /* renamed from: b */
    public static boolean m67416b(String str) {
        return str != null && str.charAt(0) == '-';
    }

    public static TimeZone getGmtTimeZone() {
        return f107686b;
    }

    public static TimeZone getTimeZone(String str) {
        TimeZone gmtTimeZone = getGmtTimeZone(str);
        return gmtTimeZone != null ? gmtTimeZone : TimeZone.getTimeZone(str);
    }

    public static TimeZone getGmtTimeZone(String str) {
        if (!Constants.HASIDCALL_INDEX_SIG.equals(str) && !"UTC".equals(str)) {
            Matcher matcher = f107685a.matcher(str);
            if (!matcher.matches()) {
                return null;
            }
            int m67415a = m67415a(matcher.group(2));
            int m67415a2 = m67415a(matcher.group(4));
            if (m67415a == 0 && m67415a2 == 0) {
                return f107686b;
            }
            return new GmtTimeZone(m67416b(matcher.group(1)), m67415a, m67415a2);
        }
        return f107686b;
    }
}
