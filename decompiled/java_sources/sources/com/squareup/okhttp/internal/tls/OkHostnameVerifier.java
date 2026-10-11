package com.squareup.okhttp.internal.tls;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.b6f;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* loaded from: classes9.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    /* renamed from: a */
    public static final Pattern f64028a = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: b */
    public static final int f64029b = 2;

    /* renamed from: c */
    public static final int f64030c = 7;

    /* renamed from: a */
    public static List<String> m52887a(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    public static List<String> allSubjectAltNames(X509Certificate x509Certificate) {
        List<String> m52887a = m52887a(x509Certificate, 7);
        List<String> m52887a2 = m52887a(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(m52887a.size() + m52887a2.size());
        arrayList.addAll(m52887a);
        arrayList.addAll(m52887a2);
        return arrayList;
    }

    /* renamed from: b */
    public static boolean m52888b(String str) {
        return f64028a.matcher(str).matches();
    }

    /* renamed from: c */
    public final boolean m52889c(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(".") && !str.endsWith(Constants.ATTRVAL_PARENT) && str2 != null && str2.length() != 0 && !str2.startsWith(".") && !str2.endsWith(Constants.ATTRVAL_PARENT)) {
            if (!str.endsWith(".")) {
                str = str + '.';
            }
            if (!str2.endsWith(".")) {
                str2 = str2 + '.';
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains("*")) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String substring = lowerCase.substring(1);
            if (!str.endsWith(substring)) {
                return false;
            }
            int length = str.length() - substring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }

    /* renamed from: d */
    public final boolean m52890d(String str, X509Certificate x509Certificate) {
        String m53188b;
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> m52887a = m52887a(x509Certificate, 2);
        int size = m52887a.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            if (m52889c(lowerCase, m52887a.get(i))) {
                return true;
            }
            i++;
            z = true;
        }
        if (z || (m53188b = new b6f(x509Certificate.getSubjectX500Principal()).m53188b("cn")) == null) {
            return false;
        }
        return m52889c(lowerCase, m53188b);
    }

    /* renamed from: e */
    public final boolean m52891e(String str, X509Certificate x509Certificate) {
        List<String> m52887a = m52887a(x509Certificate, 7);
        int size = m52887a.size();
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(m52887a.get(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }

    public boolean verify(String str, X509Certificate x509Certificate) {
        if (m52888b(str)) {
            return m52891e(str, x509Certificate);
        }
        return m52890d(str, x509Certificate);
    }
}
