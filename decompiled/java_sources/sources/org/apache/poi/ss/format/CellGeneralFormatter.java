package org.apache.poi.ss.format;

import java.util.Locale;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class CellGeneralFormatter extends CellFormatter {
    public CellGeneralFormatter() {
        this(LocaleUtil.getUserLocale());
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    @Override // org.apache.poi.ss.format.CellFormatter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void formatValue(java.lang.StringBuffer r10, java.lang.Object r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof java.lang.Number
            if (r0 == 0) goto L89
            r0 = r11
            java.lang.Number r0 = (java.lang.Number) r0
            double r0 = r0.doubleValue()
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r3 = 48
            if (r2 != 0) goto L17
            r10.append(r3)
            return
        L17:
            double r4 = java.lang.Math.abs(r0)
            double r4 = java.lang.Math.log10(r4)
            r6 = 4621819117588971520(0x4024000000000000, double:10.0)
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            r6 = 1
            if (r2 > 0) goto L3a
            r7 = -4602115869219225600(0xc022000000000000, double:-9.0)
            int r2 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r2 >= 0) goto L2d
            goto L3a
        L2d:
            long r4 = (long) r0
            double r4 = (double) r4
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 == 0) goto L36
            java.lang.String r0 = "%1.9f"
            goto L3c
        L36:
            java.lang.String r0 = "%1.0f"
            r1 = 0
            goto L3d
        L3a:
            java.lang.String r0 = "%1.5E"
        L3c:
            r1 = r6
        L3d:
            java.util.Formatter r2 = new java.util.Formatter
            java.util.Locale r4 = r9.locale
            r2.<init>(r10, r4)
            java.util.Locale r9 = r9.locale     // Catch: java.lang.Throwable -> L7d
            java.lang.Object[] r11 = new java.lang.Object[]{r11}     // Catch: java.lang.Throwable -> L7d
            r2.format(r9, r0, r11)     // Catch: java.lang.Throwable -> L7d
            r2.close()
            if (r1 == 0) goto L9e
            java.lang.String r9 = "E"
            boolean r11 = r0.endsWith(r9)
            if (r11 == 0) goto L5f
            int r9 = r10.lastIndexOf(r9)
            goto L63
        L5f:
            int r9 = r10.length()
        L63:
            int r9 = r9 - r6
        L64:
            char r11 = r10.charAt(r9)
            if (r11 != r3) goto L71
            int r11 = r9 + (-1)
            r10.deleteCharAt(r9)
            r9 = r11
            goto L64
        L71:
            char r11 = r10.charAt(r9)
            r0 = 46
            if (r11 != r0) goto L9e
            r10.deleteCharAt(r9)
            goto L9e
        L7d:
            r9 = move-exception
            throw r9     // Catch: java.lang.Throwable -> L7f
        L7f:
            r10 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L84
            goto L88
        L84:
            r11 = move-exception
            r9.addSuppressed(r11)
        L88:
            throw r10
        L89:
            boolean r9 = r11 instanceof java.lang.Boolean
            if (r9 == 0) goto L9b
            java.lang.String r9 = r11.toString()
            java.util.Locale r11 = java.util.Locale.ROOT
            java.lang.String r9 = r9.toUpperCase(r11)
            r10.append(r9)
            goto L9e
        L9b:
            r10.append(r11)
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.format.CellGeneralFormatter.formatValue(java.lang.StringBuffer, java.lang.Object):void");
    }

    @Override // org.apache.poi.ss.format.CellFormatter
    public void simpleValue(StringBuffer stringBuffer, Object obj) {
        formatValue(stringBuffer, obj);
    }

    public CellGeneralFormatter(Locale locale) {
        super(locale, "General");
    }
}
