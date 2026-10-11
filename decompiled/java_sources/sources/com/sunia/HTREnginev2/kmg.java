package com.sunia.HTREnginev2;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.Locale;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class kmg {

    /* renamed from: a */
    public static final int f75564a = 4;

    /* renamed from: b */
    public static final int f75565b = 14;

    /* renamed from: c */
    public static final int f75566c = 5;

    /* renamed from: d */
    public static final int f75567d = 25;

    /* renamed from: e */
    public static final int f75568e = 5;

    /* renamed from: g */
    public static final String f75570g = "\n\u000b\f\r\u0085\u2028\u2029";

    /* renamed from: h */
    public static final String f75571h = "\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000";

    /* renamed from: i */
    public static final String f75572i = "\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";

    /* renamed from: j */
    public static final String f75573j = ",*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";

    /* renamed from: k */
    public static final String f75574k = "(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)";

    /* renamed from: m */
    public static final String f75576m = ",\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";

    /* renamed from: n */
    public static final String f75577n = "(?=[,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)";

    /* renamed from: o */
    public static final String f75578o = ":,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";

    /* renamed from: p */
    public static final String f75579p = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)";

    /* renamed from: f */
    public static final C14000a[] f75569f = {new C14000a(99, 99, -1, -1), new C14000a(35, 36, -1, -1), new C14000a(71, 72, -1, -1), new C14000a(96, 96, -1, -1), new C14000a(85, 86, -1, -1), new C14000a(90, 96, -1, -1), new C14000a(80, 81, -1, -1), new C14000a(6, 6, -1, -1), new C14000a(20, 20, -1, -1), new C14000a(19, 19, -1, -1), new C14000a(32, 34, -1, -1), new C14000a(96, 96, -1, -1), new C14000a(30, 31, -1, -1), new C14000a(96, 96, -1, -1), new C14000a(96, 96, -1, -1), new C14000a(50, 52, -1, -1), new C14000a(83, 83, -1, -1), new C14000a(60, 62, -1, -1), new C14000a(46, 47, -1, -1), new C14000a(66, 67, 73, -1), new C14000a(40, 42, -1, -1), new C14000a(70, 71, -1, -1), new C14000a(1, 2, -1, -1), new C14000a(20, 21, -1, -1), new C14000a(3, 4, -1, -1), new C14000a(96, 96, -1, -1), new C14000a(48, 49, -1, -1), new C14000a(55, 56, -1, -1), new C14000a(63, 65, -1, -1), new C14000a(96, 96, -1, -1), new C14000a(38, 39, -1, -1), new C14000a(55, 56, -1, -1), new C14000a(27, 28, -1, -1), new C14000a(58, 58, -1, -1), new C14000a(68, 69, -1, -1), new C14000a(3, 4, -1, -1), new C14000a(7, 8, -1, -1), new C14000a(87, 88, 86, -1), new C14000a(88, 89, 96, -1), new C14000a(10, 14, 0, 6), new C14000a(43, 45, -1, -1), new C14000a(73, 74, -1, -1), new C14000a(97, 97, -1, -1), new C14000a(15, 19, -1, -1), new C14000a(6, 6, 0, 9), new C14000a(96, 96, -1, -1), new C14000a(2, 2, -1, -1), new C14000a(29, 29, -1, -1), new C14000a(57, 57, -1, -1), new C14000a(37, 38, -1, -1), new C14000a(75, 79, 87, 88), new C14000a(84, 84, -1, -1), new C14000a(22, 24, 20, -1), new C14000a(6, 9, -1, -1), new C14000a(5, 5, -1, -1), new C14000a(98, 99, -1, -1), new C14000a(53, 54, -1, -1), new C14000a(24, 26, -1, -1), new C14000a(82, 83, -1, -1)};

    /* renamed from: l */
    public static final Pattern f75575l = Pattern.compile("[^,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]+(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: q */
    public static final Pattern f75580q = Pattern.compile("(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: r */
    public static final Pattern f75581r = Pattern.compile("(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+states[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mariana[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(nd|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+hampshire)|(nj|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+jersey)|(nm|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+island)|(sc|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(sd|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+virginia)|(wy|wyoming))(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: s */
    public static final Pattern f75582s = Pattern.compile("(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: t */
    public static final Pattern f75583t = Pattern.compile("([0-9]+)(st|nd|rd|th)", 2);

    /* renamed from: u */
    public static final Pattern f75584u = Pattern.compile("(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: com.sunia.HTREnginev2.kmg$a */
    /* loaded from: classes3.dex */
    public static class C14000a {

        /* renamed from: a */
        public int f75585a;

        /* renamed from: b */
        public int f75586b;

        /* renamed from: c */
        public int f75587c;

        /* renamed from: d */
        public int f75588d;

        public C14000a(int i, int i2, int i3, int i4) {
            this.f75585a = i;
            this.f75586b = i2;
            this.f75587c = i3;
            this.f75588d = i4;
        }

        /* renamed from: a */
        public boolean m55240a(String str) {
            int parseInt = Integer.parseInt(str.substring(0, 2));
            return (this.f75585a <= parseInt && parseInt <= this.f75586b) || parseInt == this.f75587c || parseInt == this.f75588d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0026, code lost:
    
        return -r13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m55231a(java.lang.String r13, java.util.regex.MatchResult r14) {
        /*
            int r14 = r14.end()
            java.util.regex.Pattern r0 = com.sunia.HTREnginev2.kmg.f75575l
            java.util.regex.Matcher r0 = r0.matcher(r13)
            r1 = -1
            r2 = 1
            r3 = 0
            java.lang.String r4 = ""
            r9 = r1
            r10 = r9
            r5 = r2
            r6 = r5
            r7 = r6
            r8 = r3
        L15:
            int r11 = r13.length()
            if (r14 >= r11) goto Ld5
            boolean r11 = r0.find(r14)
            if (r11 != 0) goto L27
            int r13 = r13.length()
        L25:
            int r13 = -r13
            return r13
        L27:
            int r11 = r0.end()
            int r12 = r0.start()
            int r11 = r11 - r12
            r12 = 25
            if (r11 <= r12) goto L39
            int r13 = r0.end()
            goto L25
        L39:
            int r11 = r0.start()
            if (r14 >= r11) goto L51
            int r11 = r14 + 1
            char r14 = r13.charAt(r14)
            java.lang.String r12 = "\n\u000b\f\r\u0085\u2028\u2029"
            int r14 = r12.indexOf(r14)
            if (r14 == r1) goto L4f
            int r5 = r5 + 1
        L4f:
            r14 = r11
            goto L39
        L51:
            r11 = 5
            if (r5 <= r11) goto L56
            goto Ld5
        L56:
            int r6 = r6 + r2
            r12 = 14
            if (r6 <= r12) goto L5d
            goto Ld5
        L5d:
            java.util.regex.MatchResult r12 = m55238h(r13, r14)
            if (r12 == 0) goto L6d
            if (r7 == 0) goto L69
            if (r5 <= r2) goto L69
            int r13 = -r14
            return r13
        L69:
            if (r9 != r1) goto Lcb
            r9 = r14
            goto Lcb
        L6d:
            java.lang.String r7 = r0.group(r3)
            boolean r7 = m55234d(r7)
            if (r7 == 0) goto L7a
            r8 = r2
        L78:
            r7 = r3
            goto Lcb
        L7a:
            if (r6 != r11) goto L83
            if (r8 != 0) goto L83
            int r14 = r0.end()
            goto Ld5
        L83:
            if (r8 == 0) goto L78
            r7 = 4
            if (r6 <= r7) goto L78
            java.util.regex.MatchResult r14 = m55239i(r13, r14)
            if (r14 == 0) goto L78
            java.lang.String r7 = "et"
            boolean r4 = r4.equals(r7)
            if (r4 == 0) goto La7
            java.lang.String r4 = r14.group(r3)
            java.lang.String r7 = "al"
            boolean r4 = r4.equals(r7)
            if (r4 == 0) goto La7
            int r14 = r14.end()
            goto Ld5
        La7:
            java.util.regex.Pattern r4 = com.sunia.HTREnginev2.kmg.f75575l
            java.util.regex.Matcher r4 = r4.matcher(r13)
            int r7 = r14.end()
            boolean r7 = r4.find(r7)
            if (r7 == 0) goto Lc6
            java.lang.String r7 = r4.group(r3)
            boolean r14 = m55237g(r7, r14)
            if (r14 == 0) goto L78
            int r13 = r4.end()
            return r13
        Lc6:
            int r10 = r14.end()
            goto L78
        Lcb:
            java.lang.String r4 = r0.group(r3)
            int r14 = r0.end()
            goto L15
        Ld5:
            if (r10 <= 0) goto Ld8
            return r10
        Ld8:
            if (r9 <= 0) goto Ldb
            goto Ldc
        Ldb:
            r9 = r14
        Ldc:
            int r13 = -r9
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.kmg.m55231a(java.lang.String, java.util.regex.MatchResult):int");
    }

    /* renamed from: b */
    public static boolean m55232b(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (Character.isDigit(str.charAt(i2))) {
                i++;
            }
        }
        if (i > 5) {
            return false;
        }
        Matcher matcher = f75583t.matcher(str);
        if (!matcher.find()) {
            return true;
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        if (parseInt == 0) {
            return false;
        }
        String lowerCase = matcher.group(2).toLowerCase(Locale.getDefault());
        int i3 = parseInt % 10;
        if (i3 == 1) {
            return lowerCase.equals(parseInt % 100 != 11 ? "st" : "th");
        }
        if (i3 == 2) {
            return lowerCase.equals(parseInt % 100 != 12 ? "nd" : "th");
        }
        if (i3 != 3) {
            return lowerCase.equals("th");
        }
        return lowerCase.equals(parseInt % 100 != 13 ? "rd" : "th");
    }

    /* renamed from: c */
    public static String m55233c(String str) {
        Matcher matcher = f75580q.matcher(str);
        int i = 0;
        while (matcher.find(i)) {
            if (m55232b(matcher.group(0))) {
                int start = matcher.start();
                int m55231a = m55231a(str, matcher);
                if (m55231a > 0) {
                    return str.substring(start, m55231a);
                }
                i = -m55231a;
            } else {
                i = matcher.end();
            }
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: d */
    public static boolean m55234d(String str) {
        return f75582s.matcher(str).matches();
    }

    @VisibleForTesting
    /* renamed from: e */
    public static boolean m55235e(String str) {
        return f75584u.matcher(str).matches();
    }

    @VisibleForTesting
    /* renamed from: f */
    public static boolean m55236f(String str, String str2) {
        return m55237g(str, m55239i(str2, 0));
    }

    /* renamed from: g */
    public static boolean m55237g(String str, MatchResult matchResult) {
        if (matchResult == null) {
            return false;
        }
        int groupCount = matchResult.groupCount();
        while (true) {
            if (groupCount <= 0) {
                break;
            }
            int i = groupCount - 1;
            if (matchResult.group(groupCount) != null) {
                groupCount = i;
                break;
            }
            groupCount = i;
        }
        return f75584u.matcher(str).matches() && f75569f[groupCount].m55240a(str);
    }

    @VisibleForTesting
    /* renamed from: h */
    public static MatchResult m55238h(String str, int i) {
        if (i > 0 && f75578o.indexOf(str.charAt(i - 1)) == -1) {
            return null;
        }
        Matcher region = f75580q.matcher(str).region(i, str.length());
        if (region.lookingAt()) {
            MatchResult matchResult = region.toMatchResult();
            if (m55232b(matchResult.group(0))) {
                return matchResult;
            }
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: i */
    public static MatchResult m55239i(String str, int i) {
        if (i > 0 && f75573j.indexOf(str.charAt(i - 1)) == -1) {
            return null;
        }
        Matcher region = f75581r.matcher(str).region(i, str.length());
        if (region.lookingAt()) {
            return region.toMatchResult();
        }
        return null;
    }
}
