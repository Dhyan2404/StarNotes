package org.apache.http.impl.client;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class BasicCredentialsProvider implements CredentialsProvider {

    /* renamed from: a */
    public final ConcurrentHashMap<AuthScope, Credentials> f110567a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static Credentials m68478a(Map<AuthScope, Credentials> map, AuthScope authScope) {
        Credentials credentials = map.get(authScope);
        if (credentials != null) {
            return credentials;
        }
        int i = -1;
        AuthScope authScope2 = null;
        for (AuthScope authScope3 : map.keySet()) {
            int match = authScope.match(authScope3);
            if (match > i) {
                authScope2 = authScope3;
                i = match;
            }
        }
        return authScope2 != null ? map.get(authScope2) : credentials;
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void clear() {
        this.f110567a.clear();
    }

    @Override // org.apache.http.client.CredentialsProvider
    public Credentials getCredentials(AuthScope authScope) {
        Args.notNull(authScope, "Authentication scope");
        return m68478a(this.f110567a, authScope);
    }

    @Override // org.apache.http.client.CredentialsProvider
    public void setCredentials(AuthScope authScope, Credentials credentials) {
        Args.notNull(authScope, "Authentication scope");
        this.f110567a.put(authScope, credentials);
    }

    public String toString() {
        return this.f110567a.toString();
    }
}
