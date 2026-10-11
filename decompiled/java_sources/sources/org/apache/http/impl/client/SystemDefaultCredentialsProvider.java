package org.apache.http.impl.client;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class SystemDefaultCredentialsProvider implements CredentialsProvider {

    /* renamed from: b */
    public static final Map<String, String> f110686b;

    /* renamed from: a */
    public final BasicCredentialsProvider f110687a = new BasicCredentialsProvider();

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f110686b = concurrentHashMap;
        Locale locale = Locale.ROOT;
        concurrentHashMap.put("Basic".toUpperCase(locale), "Basic");
        concurrentHashMap.put("Digest".toUpperCase(locale), "Digest");
        concurrentHashMap.put("NTLM".toUpperCase(locale), "NTLM");
        concurrentHashMap.put("Negotiate".toUpperCase(locale), "SPNEGO");
        concurrentHashMap.put("Kerberos".toUpperCase(locale), "Kerberos");
    }

    /* renamed from: a */
    public static PasswordAuthentication m68500a(String str, AuthScope authScope) {
        String property = System.getProperty(str + ".proxyHost");
        if (property == null) {
            return null;
        }
        String property2 = System.getProperty(str + ".proxyPort");
        if (property2 == null) {
            return null;
        }
        try {
            if (authScope.match(new AuthScope(property, Integer.parseInt(property2))) >= 0) {
                String property3 = System.getProperty(str + ".proxyUser");
                if (property3 == null) {
                    return null;
                }
                String property4 = System.getProperty(str + ".proxyPassword");
                return new PasswordAuthentication(property3, property4 != null ? property4.toCharArray() : new char[0]);
            }
        } catch (NumberFormatException unused) {
        }
        return null;
    }

    /* renamed from: b */
    public static PasswordAuthentication m68501b(String str, AuthScope authScope, Authenticator.RequestorType requestorType) {
        return Authenticator.requestPasswordAuthentication(authScope.getHost(), null, authScope.getPort(), str, null, m68502c(authScope.getScheme()), null, requestorType);
    }

    /* renamed from: c */
    public static String m68502c(String str) {
        if (str == null) {
            return null;
        }
        String str2 = f110686b.get(str);
        return str2 != null ? str2 : str;
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void clear() {
        this.f110687a.clear();
    }

    @Override // org.apache.http.client.CredentialsProvider
    public Credentials getCredentials(AuthScope authScope) {
        Args.notNull(authScope, "Auth scope");
        Credentials credentials = this.f110687a.getCredentials(authScope);
        if (credentials != null) {
            return credentials;
        }
        if (authScope.getHost() != null) {
            HttpHost origin = authScope.getOrigin();
            String schemeName = origin != null ? origin.getSchemeName() : authScope.getPort() == 443 ? "https" : "http";
            PasswordAuthentication m68501b = m68501b(schemeName, authScope, Authenticator.RequestorType.SERVER);
            if (m68501b == null) {
                m68501b = m68501b(schemeName, authScope, Authenticator.RequestorType.PROXY);
            }
            if (m68501b == null && (m68501b = m68500a("http", authScope)) == null) {
                m68501b = m68500a("https", authScope);
            }
            if (m68501b != null) {
                String property = System.getProperty("http.auth.ntlm.domain");
                return property != null ? new NTCredentials(m68501b.getUserName(), new String(m68501b.getPassword()), null, property) : "NTLM".equalsIgnoreCase(authScope.getScheme()) ? new NTCredentials(m68501b.getUserName(), new String(m68501b.getPassword()), null, null) : new UsernamePasswordCredentials(m68501b.getUserName(), new String(m68501b.getPassword()));
            }
        }
        return null;
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void setCredentials(AuthScope authScope, Credentials credentials) {
        this.f110687a.setCredentials(authScope, credentials);
    }
}
