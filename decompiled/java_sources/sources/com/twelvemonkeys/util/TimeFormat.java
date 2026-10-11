package com.twelvemonkeys.util;

import com.sunia.HTREnginev2.cin;
import com.sunia.HTREnginev2.pcn;
import com.sunia.HTREnginev2.xnj;
import com.sunia.HTREnginev2.z8m;
import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;
import java.util.StringTokenizer;
import java.util.Vector;

/* loaded from: classes10.dex */
public class TimeFormat extends Format {
    private static final TimeFormat DEFAULT_FORMAT = new TimeFormat("m:ss");
    static final String ESCAPE = "\\";
    static final String MINUTE = "m";
    static final String SECOND = "s";
    static final String TIME = "S";
    protected String formatString;
    protected cin[] formatter;

    public TimeFormat(String str) {
        this.formatString = str;
        Vector vector = new Vector();
        StringTokenizer stringTokenizer = new StringTokenizer(str, "\\msS", true);
        String str2 = null;
        int i = 0;
        while (stringTokenizer.hasMoreElements()) {
            String nextToken = stringTokenizer.nextToken();
            if (str2 != null && str2.equals("\\")) {
                StringBuilder sb = new StringBuilder();
                sb.append(nextToken == null ? "" : nextToken);
                sb.append(stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : "");
                i = 0;
                nextToken = sb.toString();
                str2 = null;
            }
            if (str2 == null || str2.equals(nextToken)) {
                i++;
            } else {
                if (str2.equals("m")) {
                    vector.add(new xnj(i));
                } else if (str2.equals("s")) {
                    vector.add(new z8m(i));
                } else if (str2.equals("S")) {
                    vector.add(new z8m(-1));
                } else {
                    vector.add(new pcn(str2));
                }
                i = 1;
            }
            str2 = nextToken;
        }
        if (str2 != null) {
            if (str2.equals("m")) {
                vector.add(new xnj(i));
            } else if (str2.equals("s")) {
                vector.add(new z8m(i));
            } else if (str2.equals("S")) {
                vector.add(new z8m(-1));
            } else {
                vector.add(new pcn(str2));
            }
        }
        this.formatter = (cin[]) vector.toArray(new cin[vector.size()]);
    }

    public static TimeFormat getInstance() {
        return DEFAULT_FORMAT;
    }

    public static void main(String[] strArr) {
        TimeFormat timeFormat;
        TimeFormat timeFormat2;
        Time time;
        if (strArr.length >= 3) {
            System.out.println("Creating out TimeFormat: \"" + strArr[2] + "\"");
            timeFormat = new TimeFormat(strArr[2]);
        } else {
            timeFormat = null;
        }
        if (strArr.length >= 2) {
            System.out.println("Creating in TimeFormat: \"" + strArr[1] + "\"");
            timeFormat2 = new TimeFormat(strArr[1]);
        } else {
            System.out.println("Using default format for in");
            timeFormat2 = DEFAULT_FORMAT;
        }
        if (timeFormat == null) {
            timeFormat = timeFormat2;
        }
        if (strArr.length >= 1) {
            System.out.println("Parsing: \"" + strArr[0] + "\" with format \"" + timeFormat2.formatString + "\"");
            time = timeFormat2.parse(strArr[0]);
        } else {
            time = new Time();
        }
        System.out.println("Time is \"" + timeFormat.format(time) + "\" according to format \"" + timeFormat.formatString + "\"");
    }

    @Override // java.text.Format
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Time) {
            stringBuffer.append(format(obj));
            return stringBuffer;
        }
        throw new IllegalArgumentException("Must be instance of " + Time.class);
    }

    public String getFormatString() {
        return this.formatString;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.twelvemonkeys.util.Time parse(java.lang.String r12) {
        /*
            r11 = this;
            com.twelvemonkeys.util.Time r0 = new com.twelvemonkeys.util.Time
            r0.<init>()
            r1 = 0
            r2 = r1
            r3 = r2
            r4 = r3
            r5 = r4
            r6 = r5
        Lb:
            com.sunia.HTREnginev2.cin[] r7 = r11.formatter
            int r7 = r7.length
            if (r2 >= r7) goto Lac
            int r3 = r3 + r4
            int r7 = r12.length()
            if (r3 >= r7) goto Lac
            com.sunia.HTREnginev2.cin[] r7 = r11.formatter
            r8 = r7[r2]
            boolean r9 = r8 instanceof com.sunia.HTREnginev2.xnj
            if (r9 == 0) goto L4e
            int r4 = r2 + 1
            int r9 = r7.length
            if (r4 >= r9) goto L39
            r9 = r7[r4]
            boolean r10 = r9 instanceof com.sunia.HTREnginev2.pcn
            if (r10 == 0) goto L39
            com.sunia.HTREnginev2.pcn r9 = (com.sunia.HTREnginev2.pcn) r9
            java.lang.String r4 = r9.f80672b
            int r4 = r12.indexOf(r4, r3)
            if (r4 >= 0) goto L43
            int r4 = r12.length()
            goto L43
        L39:
            int r7 = r7.length
            if (r4 < r7) goto L41
            int r4 = r12.length()
            goto L43
        L41:
            int r4 = r8.f66874a
        L43:
            if (r4 <= r3) goto La8
            java.lang.String r6 = r12.substring(r3, r4)
            int r6 = java.lang.Integer.parseInt(r6)
            goto La8
        L4e:
            boolean r9 = r8 instanceof com.sunia.HTREnginev2.z8m
            if (r9 == 0) goto La2
            int r4 = r8.f66874a
            r8 = -1
            if (r4 != r8) goto L7e
            int r4 = r2 + 1
            int r8 = r7.length
            if (r4 >= r8) goto L6b
            r8 = r7[r4]
            boolean r9 = r8 instanceof com.sunia.HTREnginev2.pcn
            if (r9 == 0) goto L6b
            com.sunia.HTREnginev2.pcn r8 = (com.sunia.HTREnginev2.pcn) r8
            java.lang.String r11 = r8.f80672b
            int r11 = r12.indexOf(r11, r3)
            goto L72
        L6b:
            int r7 = r7.length
            if (r4 < r7) goto L7c
            int r11 = r12.length()
        L72:
            java.lang.String r11 = r12.substring(r3, r11)
            int r5 = java.lang.Integer.parseInt(r11)
            r1 = 1
            goto Lac
        L7c:
            r4 = r1
            goto La8
        L7e:
            int r5 = r2 + 1
            int r8 = r7.length
            if (r5 >= r8) goto L92
            r8 = r7[r5]
            boolean r9 = r8 instanceof com.sunia.HTREnginev2.pcn
            if (r9 == 0) goto L92
            com.sunia.HTREnginev2.pcn r8 = (com.sunia.HTREnginev2.pcn) r8
            java.lang.String r4 = r8.f80672b
            int r4 = r12.indexOf(r4, r3)
            goto L99
        L92:
            int r7 = r7.length
            if (r5 < r7) goto L99
            int r4 = r12.length()
        L99:
            java.lang.String r5 = r12.substring(r3, r4)
            int r5 = java.lang.Integer.parseInt(r5)
            goto La8
        La2:
            boolean r7 = r8 instanceof com.sunia.HTREnginev2.pcn
            if (r7 == 0) goto La8
            int r4 = r8.f66874a
        La8:
            int r2 = r2 + 1
            goto Lb
        Lac:
            if (r1 != 0) goto Lb1
            r0.setMinutes(r6)
        Lb1:
            r0.setSeconds(r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twelvemonkeys.util.TimeFormat.parse(java.lang.String):com.twelvemonkeys.util.Time");
    }

    @Override // java.text.Format
    public Object parseObject(String str, ParsePosition parsePosition) {
        Time parse = parse(str);
        parsePosition.setIndex(str.length());
        return parse;
    }

    public String format(Time time) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            cin[] cinVarArr = this.formatter;
            if (i < cinVarArr.length) {
                sb.append(cinVarArr[i].mo53461a(time));
                i++;
            } else {
                return sb.toString();
            }
        }
    }
}
