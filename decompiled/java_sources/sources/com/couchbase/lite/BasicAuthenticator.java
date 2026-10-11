package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.BaseAuthenticator;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class BasicAuthenticator extends BaseAuthenticator implements Authenticator {

    @NonNull
    private final char[] password;

    @NonNull
    private final String username;

    public BasicAuthenticator(@NonNull String str, @NonNull char[] cArr) {
        this.username = (String) Preconditions.assertNotNull(str, C4Replicator.REPLICATOR_AUTH_USER_NAME);
        Preconditions.assertNotNull(cArr, "password");
        char[] cArr2 = new char[cArr.length];
        this.password = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, cArr2.length);
    }

    @Override // com.couchbase.lite.internal.BaseAuthenticator
    public void authenticate(@NonNull Map<String, Object> map) {
        Map map2 = (Map) map.get(C4Replicator.REPLICATOR_OPTION_AUTHENTICATION);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, map2);
        }
        map2.put("type", "Basic");
        map2.put(C4Replicator.REPLICATOR_AUTH_USER_NAME, this.username);
        map2.put("password", this.password);
    }

    public void finalize() throws Throwable {
        try {
            char[] cArr = this.password;
            if (cArr != null) {
                Arrays.fill(cArr, (char) 0);
            }
        } finally {
            super.finalize();
        }
    }

    @NonNull
    @Deprecated
    public String getPassword() {
        return new String(this.password);
    }

    @NonNull
    public char[] getPasswordChars() {
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
}
