package org.apache.http.conn.ssl;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.data.Operators;
import com.sunia.HTREnginev2.c5n;
import java.io.IOException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public abstract class AbstractVerifier implements X509HostnameVerifier {

    /* renamed from: b */
    public static final String[] f110307b;

    /* renamed from: a */
    public final Log f110308a = LogFactory.getLog(getClass());

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", PrivilegedApp.f6532i, "lg", "ne", "net", Operators.OR, "org"};
        f110307b = strArr;
        Arrays.sort(strArr);
    }

    /* renamed from: a */
    public static boolean m68332a(String str, String str2, boolean z) {
        boolean endsWith;
        if (str == null) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        String lowerCase2 = str2.toLowerCase(locale);
        String[] split = lowerCase2.split("\\.");
        if (!(split.length >= 3 && split[0].endsWith("*") && (!z || m68333b(split)))) {
            return lowerCase.equals(lowerCase2);
        }
        String str3 = split[0];
        if (str3.length() > 1) {
            String substring = str3.substring(0, str3.length() - 1);
            endsWith = lowerCase.startsWith(substring) && lowerCase.substring(substring.length()).endsWith(lowerCase2.substring(str3.length()));
        } else {
            endsWith = lowerCase.endsWith(lowerCase2.substring(1));
        }
        if (endsWith) {
            return !z || countDots(lowerCase) == countDots(lowerCase2);
        }
        return false;
    }

    public static boolean acceptableCountryWildcard(String str) {
        return m68333b(str.split("\\."));
    }

    /* renamed from: b */
    public static boolean m68333b(String[] strArr) {
        return (strArr.length == 3 && strArr[2].length() == 2 && Arrays.binarySearch(f110307b, strArr[1]) >= 0) ? false : true;
    }

    public static int countDots(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == '.') {
                i++;
            }
        }
        return i;
    }

    public static String[] getCNs(X509Certificate x509Certificate) {
        try {
            String m68335b = DefaultHostnameVerifier.m68335b(x509Certificate.getSubjectX500Principal().toString());
            if (m68335b != null) {
                return new String[]{m68335b};
            }
            return null;
        } catch (SSLException unused) {
            return null;
        }
    }

    public static String[] getDNSSubjectAlts(X509Certificate x509Certificate) {
        List<c5n> m68336c = DefaultHostnameVerifier.m68336c(x509Certificate);
        if (m68336c == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (c5n c5nVar : m68336c) {
            if (c5nVar.m53388c() == 2) {
                arrayList.add(c5nVar.m53389d());
            }
        }
        if (arrayList.isEmpty()) {
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        return null;
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, SSLSocket sSLSocket) throws IOException {
        Args.notNull(str, "Host");
        SSLSession session = sSLSocket.getSession();
        if (session == null) {
            sSLSocket.getInputStream().available();
            session = sSLSocket.getSession();
            if (session == null) {
                sSLSocket.startHandshake();
                session = sSLSocket.getSession();
            }
        }
        verify(str, (X509Certificate) session.getPeerCertificates()[0]);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e) {
            if (this.f110308a.isDebugEnabled()) {
                this.f110308a.debug(e.getMessage(), e);
            }
            return false;
        }
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, X509Certificate x509Certificate) throws SSLException {
        List<c5n> m68336c = DefaultHostnameVerifier.m68336c(x509Certificate);
        ArrayList arrayList = new ArrayList();
        if (!InetAddressUtils.isIPv4Address(str) && !InetAddressUtils.isIPv6Address(str)) {
            for (c5n c5nVar : m68336c) {
                if (c5nVar.m53388c() == 2) {
                    arrayList.add(c5nVar.m53389d());
                }
            }
        } else {
            for (c5n c5nVar2 : m68336c) {
                if (c5nVar2.m53388c() == 7) {
                    arrayList.add(c5nVar2.m53389d());
                }
            }
        }
        String m68335b = DefaultHostnameVerifier.m68335b(x509Certificate.getSubjectX500Principal().getName("RFC2253"));
        verify(str, m68335b != null ? new String[]{m68335b} : null, arrayList.isEmpty() ? null : (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final void verify(String str, String[] strArr, String[] strArr2, boolean z) throws SSLException {
        List<String> list = null;
        String str2 = (strArr == null || strArr.length <= 0) ? null : strArr[0];
        if (strArr2 != null && strArr2.length > 0) {
            list = Arrays.asList(strArr2);
        }
        String m68349p = InetAddressUtils.isIPv6Address(str) ? DefaultHostnameVerifier.m68349p(str.toLowerCase(Locale.ROOT)) : str;
        if (list != null) {
            for (String str3 : list) {
                if (InetAddressUtils.isIPv6Address(str3)) {
                    str3 = DefaultHostnameVerifier.m68349p(str3);
                }
                if (m68332a(m68349p, str3, z)) {
                    return;
                }
            }
            throw new SSLException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + list);
        }
        if (str2 != null) {
            if (m68332a(m68349p, InetAddressUtils.isIPv6Address(str2) ? DefaultHostnameVerifier.m68349p(str2) : str2, z)) {
                return;
            }
            throw new SSLException("Certificate for <" + str + "> doesn't match common name of the certificate subject: " + str2);
        }
        throw new SSLException("Certificate subject for <" + str + "> doesn't contain a common name and does not have alternative names");
    }
}
