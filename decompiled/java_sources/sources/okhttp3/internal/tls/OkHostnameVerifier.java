package okhttp3.internal.tls;

import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bJ\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\f\u0010\u0010\u001a\u00020\u0002*\u00020\u0002H\u0002J\f\u0010\u0011\u001a\u00020\u0006*\u00020\u0002H\u0002J\u001c\u0010\u0013\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0002J\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u0014\u0010\u0018\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00148\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, m61528d2 = {"Lokhttp3/internal/tls/OkHostnameVerifier;", "Ljavax/net/ssl/HostnameVerifier;", "", Http2ExchangeCodec.f103778h, "Ljavax/net/ssl/SSLSession;", "session", "", "verify", "Ljava/security/cert/X509Certificate;", "certificate", "", "allSubjectAltNames", "ipAddress", C6997f.f39671c, "hostname", "e", "a", "c", "pattern", "d", "", "type", "b", "I", "ALT_DNS_NAME", "ALT_IPA_NAME", Constants.CONSTRUCTOR_NAME, "()V", "okhttp"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nOkHostnameVerifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHostnameVerifier.kt\nokhttp3/internal/tls/OkHostnameVerifier\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,208:1\n1747#2,3:209\n1747#2,3:212\n*S KotlinDebug\n*F\n+ 1 OkHostnameVerifier.kt\nokhttp3/internal/tls/OkHostnameVerifier\n*L\n63#1:209,3\n71#1:212,3\n*E\n"})
/* loaded from: classes11.dex */
public final class OkHostnameVerifier implements HostnameVerifier {

    @NotNull
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int ALT_DNS_NAME = 2;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int ALT_IPA_NAME = 7;

    /* renamed from: a */
    public final String m64975a(String str) {
        if (!m64977c(str)) {
            return str;
        }
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @NotNull
    public final List<String> allSubjectAltNames(@NotNull X509Certificate certificate) {
        List<String> plus;
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        plus = CollectionsKt___CollectionsKt.plus((Collection) m64976b(certificate, 7), (Iterable) m64976b(certificate, 2));
        return plus;
    }

    /* renamed from: b */
    public final List<String> m64976b(X509Certificate certificate, int type) {
        List<String> emptyList;
        Object obj;
        List<String> emptyList2;
        try {
            Collection<List<?>> subjectAlternativeNames = certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                emptyList2 = CollectionsKt__CollectionsKt.emptyList();
                return emptyList2;
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && Intrinsics.areEqual(list.get(0), Integer.valueOf(type)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    /* renamed from: c */
    public final boolean m64977c(String str) {
        return str.length() == ((int) Utf8.size$default(str, 0, 0, 3, null));
    }

    /* renamed from: d */
    public final boolean m64978d(String hostname, String pattern) {
        boolean startsWith$default;
        boolean endsWith$default;
        boolean startsWith$default2;
        boolean endsWith$default2;
        boolean endsWith$default3;
        boolean endsWith$default4;
        String str;
        boolean contains$default;
        boolean startsWith$default3;
        int indexOf$default;
        boolean endsWith$default5;
        int lastIndexOf$default;
        String str2 = hostname;
        if (!(str2 == null || hostname.length() == 0)) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str2, ".", false, 2, null);
            if (!startsWith$default) {
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str2, com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_PARENT, false, 2, null);
                if (!endsWith$default) {
                    if (!(pattern == null || pattern.length() == 0)) {
                        startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(pattern, ".", false, 2, null);
                        if (!startsWith$default2) {
                            endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(pattern, com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_PARENT, false, 2, null);
                            if (!endsWith$default2) {
                                endsWith$default3 = StringsKt__StringsJVMKt.endsWith$default(str2, ".", false, 2, null);
                                if (!endsWith$default3) {
                                    str2 = str2 + '.';
                                }
                                String str3 = str2;
                                endsWith$default4 = StringsKt__StringsJVMKt.endsWith$default(pattern, ".", false, 2, null);
                                if (endsWith$default4) {
                                    str = pattern;
                                } else {
                                    str = pattern + '.';
                                }
                                String m64975a = m64975a(str);
                                contains$default = StringsKt__StringsKt.contains$default((CharSequence) m64975a, (CharSequence) "*", false, 2, (Object) null);
                                if (!contains$default) {
                                    return Intrinsics.areEqual(str3, m64975a);
                                }
                                startsWith$default3 = StringsKt__StringsJVMKt.startsWith$default(m64975a, "*.", false, 2, null);
                                if (startsWith$default3) {
                                    indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) m64975a, '*', 1, false, 4, (Object) null);
                                    if (indexOf$default != -1 || str3.length() < m64975a.length() || Intrinsics.areEqual("*.", m64975a)) {
                                        return false;
                                    }
                                    String substring = m64975a.substring(1);
                                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                                    endsWith$default5 = StringsKt__StringsJVMKt.endsWith$default(str3, substring, false, 2, null);
                                    if (!endsWith$default5) {
                                        return false;
                                    }
                                    int length = str3.length() - substring.length();
                                    if (length > 0) {
                                        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str3, '.', length - 1, false, 4, (Object) null);
                                        if (lastIndexOf$default != -1) {
                                            return false;
                                        }
                                    }
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: e */
    public final boolean m64979e(String hostname, X509Certificate certificate) {
        String m64975a = m64975a(hostname);
        List<String> m64976b = m64976b(certificate, 2);
        if ((m64976b instanceof Collection) && m64976b.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = m64976b.iterator();
        while (it2.hasNext()) {
            if (INSTANCE.m64978d(m64975a, (String) it2.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public final boolean m64980f(String ipAddress, X509Certificate certificate) {
        String canonicalHost = HostnamesKt.toCanonicalHost(ipAddress);
        List<String> m64976b = m64976b(certificate, 7);
        if ((m64976b instanceof Collection) && m64976b.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = m64976b.iterator();
        while (it2.hasNext()) {
            if (Intrinsics.areEqual(canonicalHost, HostnamesKt.toCanonicalHost((String) it2.next()))) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(@NotNull String host, @NotNull SSLSession session) {
        Certificate certificate;
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(session, "session");
        if (m64977c(host)) {
            try {
                certificate = session.getPeerCertificates()[0];
                Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            } catch (SSLException unused) {
                return false;
            }
        }
        return verify(host, (X509Certificate) certificate);
    }

    public final boolean verify(@NotNull String host, @NotNull X509Certificate certificate) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        return Util.canParseAsIpAddress(host) ? m64980f(host, certificate) : m64979e(host, certificate);
    }
}
