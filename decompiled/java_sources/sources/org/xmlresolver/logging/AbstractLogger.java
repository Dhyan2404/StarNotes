package org.xmlresolver.logging;

import androidx.credentials.provider.utils.PrivilegedApp;
import java.util.Formatter;
import java.util.HashMap;

/* loaded from: classes16.dex */
public abstract class AbstractLogger implements ResolverLogger {
    public static final String CACHE = "cache";
    public static final String CONFIG = "config";
    protected static final int DEBUG = 1;
    public static final String ERROR = "error";
    protected static final int INFO = 2;
    protected static final int NONE = 4;
    public static final String REQUEST = "request";
    public static final String RESPONSE = "response";
    public static final String TRACE = "trace";
    protected static final int WARN = 3;
    public static final String WARNING = "warning";
    protected final HashMap<String, Integer> categories = new HashMap<>();
    protected String catalogLogging = null;

    /* renamed from: a */
    public final void m72022a() {
        String property = System.getProperty("xml.catalog.logging");
        if (property == null && this.catalogLogging == null) {
            return;
        }
        if (property == null) {
            this.categories.clear();
            return;
        }
        if (property.equals(this.catalogLogging)) {
            return;
        }
        this.catalogLogging = property;
        this.categories.clear();
        for (String str : property.split(",\\s*")) {
            int indexOf = str.indexOf(":");
            if (indexOf > 0) {
                setCategory(str.substring(0, indexOf).trim(), str.substring(indexOf + 1).trim());
            }
        }
    }

    @Override // org.xmlresolver.logging.ResolverLogger
    public String getCategory(String str) {
        if (!this.categories.containsKey(str)) {
            return "debug";
        }
        int intValue = this.categories.get(str).intValue();
        return intValue != 2 ? intValue != 3 ? intValue != 4 ? "debug" : "none" : "warn" : PrivilegedApp.f6532i;
    }

    @Override // org.xmlresolver.logging.ResolverLogger
    public void log(String str, String str2, Object... objArr) {
        m72022a();
        int intValue = this.categories.getOrDefault(str, this.categories.getOrDefault("*", 1)).intValue();
        if (intValue == 2) {
            info(logMessage(str, str2, objArr));
        } else if (intValue == 3) {
            warn(logMessage(str, str2, objArr));
        } else if (intValue != 4) {
            debug(logMessage(str, str2, objArr));
        }
    }

    public String logMessage(String str, String str2, Object... objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(": ");
        Formatter formatter = new Formatter(sb);
        if (objArr.length == 0) {
            formatter.format("%s", str2);
        } else {
            formatter.format(str2, objArr);
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0030, code lost:
    
        if (r8.equals("none") == false) goto L4;
     */
    @Override // org.xmlresolver.logging.ResolverLogger
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCategory(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            r8.hashCode()
            int r0 = r8.hashCode()
            r1 = 3
            r2 = 2
            r3 = 1
            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
            r5 = -1
            switch(r0) {
                case 3237038: goto L33;
                case 3387192: goto L2a;
                case 3641990: goto L1f;
                case 95458899: goto L14;
                default: goto L12;
            }
        L12:
            r3 = r5
            goto L3d
        L14:
            java.lang.String r0 = "debug"
            boolean r0 = r8.equals(r0)
            if (r0 != 0) goto L1d
            goto L12
        L1d:
            r3 = r1
            goto L3d
        L1f:
            java.lang.String r0 = "warn"
            boolean r0 = r8.equals(r0)
            if (r0 != 0) goto L28
            goto L12
        L28:
            r3 = r2
            goto L3d
        L2a:
            java.lang.String r0 = "none"
            boolean r0 = r8.equals(r0)
            if (r0 != 0) goto L3d
            goto L12
        L33:
            java.lang.String r0 = "info"
            boolean r0 = r8.equals(r0)
            if (r0 != 0) goto L3c
            goto L12
        L3c:
            r3 = 0
        L3d:
            switch(r3) {
                case 0: goto L7a;
                case 1: goto L6f;
                case 2: goto L65;
                case 3: goto L5f;
                default: goto L40;
            }
        L40:
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r6.categories
            r0.put(r7, r4)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "Incorrect logging level specified: "
            r7.append(r0)
            r7.append(r8)
            java.lang.String r8 = " treated as 'debug'"
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r6.info(r7)
            goto L83
        L5f:
            java.util.HashMap<java.lang.String, java.lang.Integer> r6 = r6.categories
            r6.put(r7, r4)
            goto L83
        L65:
            java.util.HashMap<java.lang.String, java.lang.Integer> r6 = r6.categories
            java.lang.Integer r8 = java.lang.Integer.valueOf(r1)
            r6.put(r7, r8)
            goto L83
        L6f:
            java.util.HashMap<java.lang.String, java.lang.Integer> r6 = r6.categories
            r8 = 4
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r6.put(r7, r8)
            goto L83
        L7a:
            java.util.HashMap<java.lang.String, java.lang.Integer> r6 = r6.categories
            java.lang.Integer r8 = java.lang.Integer.valueOf(r2)
            r6.put(r7, r8)
        L83:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xmlresolver.logging.AbstractLogger.setCategory(java.lang.String, java.lang.String):void");
    }
}
