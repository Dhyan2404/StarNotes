package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.BaseAuthenticator;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.utils.Preconditions;
import com.couchbase.lite.internal.utils.StringUtils;
import java.util.Map;

/* loaded from: classes4.dex */
public final class SessionAuthenticator extends BaseAuthenticator implements Authenticator {
    private static final String DEFAULT_SYNC_GATEWAY_SESSION_ID_NAME = "SyncGatewaySession";

    @NonNull
    private final String cookieName;

    @NonNull
    private final String sessionID;

    public SessionAuthenticator(@NonNull String str) {
        this(str, "SyncGatewaySession");
    }

    @Override // com.couchbase.lite.internal.BaseAuthenticator
    public void authenticate(@NonNull Map<String, Object> map) {
        StringBuilder sb = new StringBuilder(this.cookieName);
        sb.append('=');
        sb.append(this.sessionID);
        String str = (String) map.get(C4Replicator.REPLICATOR_OPTION_COOKIES);
        if (!StringUtils.isEmpty(str)) {
            sb.append("; ");
            sb.append(str);
        }
        map.put(C4Replicator.REPLICATOR_OPTION_COOKIES, sb.toString());
    }

    @NonNull
    public String getCookieName() {
        return this.cookieName;
    }

    @NonNull
    public String getSessionID() {
        return this.sessionID;
    }

    public SessionAuthenticator(@NonNull String str, @Nullable String str2) {
        this.sessionID = (String) Preconditions.assertNotNull(str, "sessionID");
        this.cookieName = str2 == null ? "SyncGatewaySession" : str2;
    }
}
