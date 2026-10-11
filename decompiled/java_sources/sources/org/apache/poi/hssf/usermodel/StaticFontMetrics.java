package org.apache.poi.hssf.usermodel;

import java.awt.Font;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/* loaded from: classes12.dex */
final class StaticFontMetrics {
    private static final Logger LOGGER = LogManager.getLogger((Class<?>) StaticFontMetrics.class);
    private static final Map<String, FontDetails> fontDetailsMap = new HashMap();
    private static Properties fontMetricsProps;

    private StaticFontMetrics() {
    }

    public static synchronized FontDetails getFontDetails(Font font) {
        FontDetails fontDetails;
        synchronized (StaticFontMetrics.class) {
            if (fontMetricsProps == null) {
                try {
                    fontMetricsProps = loadMetrics();
                } catch (IOException e) {
                    throw new IllegalStateException("Could not load font metrics", e);
                }
            }
            String name = font.getName();
            String str = "";
            if (font.isPlain()) {
                str = "plain";
            }
            if (font.isBold()) {
                str = str + "bold";
            }
            if (font.isItalic()) {
                str = str + "italic";
            }
            String buildFontHeightProperty = FontDetails.buildFontHeightProperty(name);
            String buildFontHeightProperty2 = FontDetails.buildFontHeightProperty(name + "." + str);
            if (fontMetricsProps.get(buildFontHeightProperty) == null && fontMetricsProps.get(buildFontHeightProperty2) != null) {
                name = name + "." + str;
            }
            Map<String, FontDetails> map = fontDetailsMap;
            fontDetails = map.get(name);
            if (fontDetails == null) {
                fontDetails = FontDetails.create(name, fontMetricsProps);
                map.put(name, fontDetails);
            }
        }
        return fontDetails;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b A[Catch: all -> 0x0057, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0057, blocks: (B:19:0x004b, B:23:0x0059, B:24:0x0060), top: B:17:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0059 A[Catch: all -> 0x0057, TRY_ENTER, TryCatch #3 {all -> 0x0057, blocks: (B:19:0x004b, B:23:0x0059, B:24:0x0060), top: B:17:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.Properties loadMetrics() throws java.io.IOException {
        /*
            r0 = 0
            java.lang.String r1 = "font.metrics.filename"
            java.lang.String r1 = java.lang.System.getProperty(r1)     // Catch: java.lang.SecurityException -> L26
            if (r1 == 0) goto L39
            java.io.File r2 = new java.io.File     // Catch: java.lang.SecurityException -> L26
            r2.<init>(r1)     // Catch: java.lang.SecurityException -> L26
            boolean r1 = r2.exists()     // Catch: java.lang.SecurityException -> L24
            if (r1 != 0) goto L38
            org.apache.logging.log4j.Logger r1 = org.apache.poi.hssf.usermodel.StaticFontMetrics.LOGGER     // Catch: java.lang.SecurityException -> L24
            org.apache.logging.log4j.LogBuilder r1 = r1.atWarn()     // Catch: java.lang.SecurityException -> L24
            java.lang.String r3 = "font_metrics.properties not found at path {}"
            java.lang.String r4 = r2.getAbsolutePath()     // Catch: java.lang.SecurityException -> L24
            r1.log(r3, r4)     // Catch: java.lang.SecurityException -> L24
            goto L39
        L24:
            r0 = move-exception
            goto L29
        L26:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L29:
            org.apache.logging.log4j.Logger r1 = org.apache.poi.hssf.usermodel.StaticFontMetrics.LOGGER
            org.apache.logging.log4j.LogBuilder r1 = r1.atWarn()
            org.apache.logging.log4j.LogBuilder r0 = r1.withThrowable(r0)
            java.lang.String r1 = "Can't access font.metrics.filename system property"
            r0.log(r1)
        L38:
            r0 = r2
        L39:
            if (r0 == 0) goto L41
            java.io.FileInputStream r1 = new java.io.FileInputStream
            r1.<init>(r0)
            goto L49
        L41:
            java.lang.Class<org.apache.poi.hssf.usermodel.FontDetails> r0 = org.apache.poi.hssf.usermodel.FontDetails.class
            java.lang.String r1 = "/font_metrics.properties"
            java.io.InputStream r1 = r0.getResourceAsStream(r1)
        L49:
            if (r1 == 0) goto L59
            java.util.Properties r0 = new java.util.Properties     // Catch: java.lang.Throwable -> L57
            r0.<init>()     // Catch: java.lang.Throwable -> L57
            r0.load(r1)     // Catch: java.lang.Throwable -> L57
            r1.close()
            return r0
        L57:
            r0 = move-exception
            goto L61
        L59:
            java.lang.String r0 = "font_metrics.properties not found in classpath"
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L57
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L57
            throw r2     // Catch: java.lang.Throwable -> L57
        L61:
            throw r0     // Catch: java.lang.Throwable -> L62
        L62:
            r2 = move-exception
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.lang.Throwable -> L69
            goto L6d
        L69:
            r1 = move-exception
            r0.addSuppressed(r1)
        L6d:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hssf.usermodel.StaticFontMetrics.loadMetrics():java.util.Properties");
    }
}
