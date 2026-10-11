package org.apache.http.conn.ssl;

import com.sunia.HTREnginev2.c5n;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import javax.naming.InvalidNameException;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.ldap.LdapName;
import javax.naming.ldap.Rdn;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.util.DnsUtils;
import org.apache.http.conn.util.DomainType;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.conn.util.PublicSuffixMatcher;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public final class DefaultHostnameVerifier implements HostnameVerifier {

    /* renamed from: a */
    public final Log f110309a;

    /* renamed from: b */
    public final PublicSuffixMatcher f110310b;

    /* loaded from: classes12.dex */
    public enum HostNameType {
        IPv4(7),
        IPv6(7),
        DNS(2);

        final int subjectType;

        HostNameType(int i) {
            this.subjectType = i;
        }
    }

    /* renamed from: org.apache.http.conn.ssl.DefaultHostnameVerifier$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19344a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f110311a;

        static {
            int[] iArr = new int[HostNameType.values().length];
            f110311a = iArr;
            try {
                iArr[HostNameType.IPv4.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f110311a[HostNameType.IPv6.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public DefaultHostnameVerifier(PublicSuffixMatcher publicSuffixMatcher) {
        this.f110309a = LogFactory.getLog(DefaultHostnameVerifier.class);
        this.f110310b = publicSuffixMatcher;
    }

    /* renamed from: a */
    public static HostNameType m68334a(String str) {
        if (InetAddressUtils.isIPv4Address(str)) {
            return HostNameType.IPv4;
        }
        if (str.startsWith(IteratorUtils.f104923a) && str.endsWith(IteratorUtils.f104924b)) {
            str = str.substring(1, str.length() - 1);
        }
        return InetAddressUtils.isIPv6Address(str) ? HostNameType.IPv6 : HostNameType.DNS;
    }

    /* renamed from: b */
    public static String m68335b(String str) throws SSLException {
        if (str == null) {
            return null;
        }
        try {
            List rdns = new LdapName(str).getRdns();
            for (int size = rdns.size() - 1; size >= 0; size--) {
                Attribute attribute = ((Rdn) rdns.get(size)).toAttributes().get("cn");
                if (attribute != null) {
                    try {
                        Object obj = attribute.get();
                        if (obj != null) {
                            return obj.toString();
                        }
                        continue;
                    } catch (NoSuchElementException | NamingException unused) {
                        continue;
                    }
                }
            }
            return null;
        } catch (InvalidNameException unused2) {
            throw new SSLException(str + " is not a valid X500 distinguished name");
        }
    }

    /* renamed from: c */
    public static List<c5n> m68336c(X509Certificate x509Certificate) {
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                Integer num = list.size() >= 2 ? (Integer) list.get(0) : null;
                if (num != null && (num.intValue() == 2 || num.intValue() == 7)) {
                    Object obj = list.get(1);
                    if (obj instanceof String) {
                        arrayList.add(new c5n((String) obj, num.intValue()));
                    } else {
                        boolean z = obj instanceof byte[];
                    }
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    /* renamed from: d */
    public static void m68337d(String str, String str2, PublicSuffixMatcher publicSuffixMatcher) throws SSLException {
        if (m68347n(DnsUtils.normalize(str), DnsUtils.normalize(str2), publicSuffixMatcher)) {
            return;
        }
        throw new SSLPeerUnverifiedException("Certificate for <" + str + "> doesn't match common name of the certificate subject: " + str2);
    }

    /* renamed from: e */
    public static void m68338e(String str, List<c5n> list, PublicSuffixMatcher publicSuffixMatcher) throws SSLException {
        String normalize = DnsUtils.normalize(str);
        for (int i = 0; i < list.size(); i++) {
            c5n c5nVar = list.get(i);
            if (c5nVar.m53388c() == 2 && m68347n(normalize, DnsUtils.normalize(c5nVar.m53389d()), publicSuffixMatcher)) {
                return;
            }
        }
        throw new SSLPeerUnverifiedException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + list);
    }

    /* renamed from: f */
    public static boolean m68339f(String str, String str2) {
        if (str2 != null && str.endsWith(str2)) {
            return str.length() == str2.length() || str.charAt((str.length() - str2.length()) - 1) == '.';
        }
        return false;
    }

    /* renamed from: g */
    public static void m68340g(String str, List<c5n> list) throws SSLException {
        for (int i = 0; i < list.size(); i++) {
            c5n c5nVar = list.get(i);
            if (c5nVar.m53388c() == 7 && str.equals(c5nVar.m53389d())) {
                return;
            }
        }
        throw new SSLPeerUnverifiedException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + list);
    }

    /* renamed from: h */
    public static void m68341h(String str, List<c5n> list) throws SSLException {
        String m68349p = m68349p(str);
        for (int i = 0; i < list.size(); i++) {
            c5n c5nVar = list.get(i);
            if (c5nVar.m53388c() == 7 && m68349p.equals(m68349p(c5nVar.m53389d()))) {
                return;
            }
        }
        throw new SSLPeerUnverifiedException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + list);
    }

    /* renamed from: i */
    public static boolean m68342i(String str, String str2) {
        return m68345l(str, str2, null, null, false);
    }

    /* renamed from: j */
    public static boolean m68343j(String str, String str2, PublicSuffixMatcher publicSuffixMatcher) {
        return m68345l(str, str2, publicSuffixMatcher, null, false);
    }

    /* renamed from: k */
    public static boolean m68344k(String str, String str2, PublicSuffixMatcher publicSuffixMatcher, DomainType domainType) {
        return m68345l(str, str2, publicSuffixMatcher, domainType, false);
    }

    /* renamed from: l */
    public static boolean m68345l(String str, String str2, PublicSuffixMatcher publicSuffixMatcher, DomainType domainType, boolean z) {
        if (publicSuffixMatcher != null && str.contains(".") && !m68339f(str, publicSuffixMatcher.getDomainRoot(str2, domainType))) {
            return false;
        }
        int indexOf = str2.indexOf(42);
        if (indexOf == -1) {
            return str.equalsIgnoreCase(str2);
        }
        String substring = str2.substring(0, indexOf);
        String substring2 = str2.substring(indexOf + 1);
        if (!substring.isEmpty() && !str.startsWith(substring)) {
            return false;
        }
        if (substring2.isEmpty() || str.endsWith(substring2)) {
            return (z && str.substring(substring.length(), str.length() - substring2.length()).contains(".")) ? false : true;
        }
        return false;
    }

    /* renamed from: m */
    public static boolean m68346m(String str, String str2) {
        return m68345l(str, str2, null, null, true);
    }

    /* renamed from: n */
    public static boolean m68347n(String str, String str2, PublicSuffixMatcher publicSuffixMatcher) {
        return m68345l(str, str2, publicSuffixMatcher, null, true);
    }

    /* renamed from: o */
    public static boolean m68348o(String str, String str2, PublicSuffixMatcher publicSuffixMatcher, DomainType domainType) {
        return m68345l(str, str2, publicSuffixMatcher, domainType, true);
    }

    /* renamed from: p */
    public static String m68349p(String str) {
        if (str == null) {
            return str;
        }
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (UnknownHostException unused) {
            return str;
        }
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e) {
            if (this.f110309a.isDebugEnabled()) {
                this.f110309a.debug(e.getMessage(), e);
            }
            return false;
        }
    }

    public DefaultHostnameVerifier() {
        this(null);
    }

    public void verify(String str, X509Certificate x509Certificate) throws SSLException {
        HostNameType m68334a = m68334a(str);
        List<c5n> m68336c = m68336c(x509Certificate);
        if (m68336c != null && !m68336c.isEmpty()) {
            int i = C19344a.f110311a[m68334a.ordinal()];
            if (i == 1) {
                m68340g(str, m68336c);
                return;
            } else if (i != 2) {
                m68338e(str, m68336c, this.f110310b);
                return;
            } else {
                m68341h(str, m68336c);
                return;
            }
        }
        String m68335b = m68335b(x509Certificate.getSubjectX500Principal().getName("RFC2253"));
        if (m68335b != null) {
            m68337d(str, m68335b, this.f110310b);
            return;
        }
        throw new SSLException("Certificate subject for <" + str + "> doesn't contain a common name and does not have alternative names");
    }
}
