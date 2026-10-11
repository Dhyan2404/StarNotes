package com.sun.org.apache.xml.internal.serializer.utils;

import java.util.ListResourceBundle;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* loaded from: classes10.dex */
public final class Messages {
    private final Locale m_locale = Locale.getDefault();
    private ListResourceBundle m_resourceBundle;
    private String m_resourceBundleName;

    public Messages(String str) {
        this.m_resourceBundleName = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x007c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String createMsg(java.util.ListResourceBundle r8, java.lang.String r9, java.lang.Object[] r10) {
        /*
            r7 = this;
            java.lang.String r0 = ""
            r1 = 0
            if (r9 == 0) goto La
            java.lang.String r8 = r8.getString(r9)
            goto Lc
        La:
            r9 = r0
            r8 = r1
        Lc:
            r2 = 2
            r3 = 1
            r4 = 0
            if (r8 != 0) goto L1f
            java.lang.String r8 = "BAD_MSGKEY"
            java.lang.Object[] r10 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L7a
            r10[r4] = r9     // Catch: java.lang.Exception -> L7a
            java.lang.String r7 = r7.m_resourceBundleName     // Catch: java.lang.Exception -> L7a
            r10[r3] = r7     // Catch: java.lang.Exception -> L7a
            java.text.MessageFormat.format(r8, r10)     // Catch: java.lang.Exception -> L7a
            goto L7a
        L1f:
            if (r10 == 0) goto L78
            int r1 = r10.length     // Catch: java.lang.Exception -> L33
            r5 = r4
        L23:
            if (r5 >= r1) goto L2e
            r6 = r10[r5]     // Catch: java.lang.Exception -> L33
            if (r6 != 0) goto L2b
            r10[r5] = r0     // Catch: java.lang.Exception -> L33
        L2b:
            int r5 = r5 + 1
            goto L23
        L2e:
            java.lang.String r1 = java.text.MessageFormat.format(r8, r10)     // Catch: java.lang.Exception -> L33
            goto L79
        L33:
            java.lang.String r10 = "BAD_MSGFORMAT"
            java.lang.Object[] r0 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L56
            r0[r4] = r9     // Catch: java.lang.Exception -> L56
            java.lang.String r1 = r7.m_resourceBundleName     // Catch: java.lang.Exception -> L56
            r0[r3] = r1     // Catch: java.lang.Exception -> L56
            java.lang.String r10 = java.text.MessageFormat.format(r10, r0)     // Catch: java.lang.Exception -> L56
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L56
            r0.<init>()     // Catch: java.lang.Exception -> L56
            r0.append(r10)     // Catch: java.lang.Exception -> L56
            java.lang.String r10 = " "
            r0.append(r10)     // Catch: java.lang.Exception -> L56
            r0.append(r8)     // Catch: java.lang.Exception -> L56
            java.lang.String r7 = r0.toString()     // Catch: java.lang.Exception -> L56
            goto L76
        L56:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r10 = "The format of message '"
            r8.append(r10)
            r8.append(r9)
            java.lang.String r9 = "' in message class '"
            r8.append(r9)
            java.lang.String r7 = r7.m_resourceBundleName
            r8.append(r7)
            java.lang.String r7 = "' failed."
            r8.append(r7)
            java.lang.String r7 = r8.toString()
        L76:
            r1 = r7
            goto L7a
        L78:
            r1 = r8
        L79:
            r3 = r4
        L7a:
            if (r3 != 0) goto L7d
            return r1
        L7d:
            java.lang.RuntimeException r7 = new java.lang.RuntimeException
            r7.<init>(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serializer.utils.Messages.createMsg(java.util.ListResourceBundle, java.lang.String, java.lang.Object[]):java.lang.String");
    }

    private Locale getLocale() {
        return this.m_locale;
    }

    private ListResourceBundle getResourceBundle() {
        return this.m_resourceBundle;
    }

    private static String getResourceSuffix(Locale locale) {
        String str = "_" + locale.getLanguage();
        String country = locale.getCountry();
        if (!country.equals("TW")) {
            return str;
        }
        return str + "_" + country;
    }

    private ListResourceBundle loadResourceBundle(String str) throws MissingResourceException {
        ListResourceBundle listResourceBundle;
        this.m_resourceBundleName = str;
        try {
            try {
                listResourceBundle = (ListResourceBundle) ResourceBundle.getBundle(this.m_resourceBundleName, getLocale());
            } catch (MissingResourceException unused) {
                listResourceBundle = (ListResourceBundle) ResourceBundle.getBundle(this.m_resourceBundleName, new Locale("en", "US"));
            }
            this.m_resourceBundle = listResourceBundle;
            return listResourceBundle;
        } catch (MissingResourceException unused2) {
            throw new MissingResourceException("Could not load any resource bundles." + this.m_resourceBundleName, this.m_resourceBundleName, "");
        }
    }

    public final String createMessage(String str, Object[] objArr) {
        if (this.m_resourceBundle == null) {
            this.m_resourceBundle = loadResourceBundle(this.m_resourceBundleName);
        }
        ListResourceBundle listResourceBundle = this.m_resourceBundle;
        if (listResourceBundle != null) {
            return createMsg(listResourceBundle, str, objArr);
        }
        return "Could not load the resource bundles: " + this.m_resourceBundleName;
    }
}
