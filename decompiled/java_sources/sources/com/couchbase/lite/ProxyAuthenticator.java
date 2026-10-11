package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.BaseAuthenticator;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.utils.Preconditions;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class ProxyAuthenticator extends BaseAuthenticator {

    @NonNull
    private final char[] password;

    @NonNull
    private final String username;

    public ProxyAuthenticator(@NonNull String str, @NonNull char[] cArr) {
        this.username = Preconditions.assertNotEmpty(str, "user name");
        int length = cArr == null ? 0 : cArr.length;
        if (length <= 0) {
            throw new IllegalArgumentException("empty password");
        }
        char[] cArr2 = new char[length];
        System.arraycopy(cArr, 0, cArr2, 0, length);
        this.password = cArr2;
    }

    @Override // com.couchbase.lite.internal.BaseAuthenticator
    public void authenticate(@NonNull Map<String, Object> map) {
        Map map2 = (Map) map.get(C4Replicator.REPLICATOR_OPTION_AUTHENTICATION);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, map2);
        }
        map2.put(C4Replicator.REPLICATOR_OPTION_PROXY_USER, this.username);
        map2.put(C4Replicator.REPLICATOR_OPTION_PROXY_PASS, this.password);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProxyAuthenticator)) {
            return false;
        }
        ProxyAuthenticator proxyAuthenticator = (ProxyAuthenticator) obj;
        return this.username.equals(proxyAuthenticator.username) && MessageDigest.isEqual(new String(this.password).getBytes(StandardCharsets.UTF_8), new String(proxyAuthenticator.password).getBytes(StandardCharsets.UTF_8));
    }

    public void finalize() throws Throwable {
        try {
            Arrays.fill(this.password, (char) 0);
        } finally {
            super.finalize();
        }
    }

    @NonNull
    public char[] getPassword() {
        char[] cArr = this.password;
        int length = cArr.length;
        char[] cArr2 = new char[length];
        System.arraycopy(cArr, 0, cArr2, 0, length);
        return cArr2;
    }

    @NonNull
    public String getUsername() {
        return this.username;
    }

    public int hashCode() {
        return this.username.hashCode();
    }
}
