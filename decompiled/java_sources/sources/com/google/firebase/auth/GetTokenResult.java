package com.google.firebase.auth;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Map;

/* loaded from: classes6.dex */
public class GetTokenResult {

    /* renamed from: a */
    @Nullable
    public String f35624a;

    /* renamed from: b */
    public Map<String, Object> f35625b;

    @KeepForSdk
    public GetTokenResult(@Nullable String str, @NonNull Map<String, Object> map) {
        this.f35624a = str;
        this.f35625b = map;
    }

    /* renamed from: a */
    public final long m27964a(String str) {
        Integer num = (Integer) this.f35625b.get(str);
        if (num == null) {
            return 0L;
        }
        return num.longValue();
    }

    public long getAuthTimestamp() {
        return m27964a("auth_time");
    }

    @NonNull
    public Map<String, Object> getClaims() {
        return this.f35625b;
    }

    public long getExpirationTimestamp() {
        return m27964a("exp");
    }

    public long getIssuedAtTimestamp() {
        return m27964a("iat");
    }

    @Nullable
    public String getSignInProvider() {
        Map map = (Map) this.f35625b.get(FirebaseAuthProvider.PROVIDER_ID);
        if (map != null) {
            return (String) map.get("sign_in_provider");
        }
        return null;
    }

    @Nullable
    @KeepForSdk
    public String getSignInSecondFactor() {
        Map map = (Map) this.f35625b.get(FirebaseAuthProvider.PROVIDER_ID);
        if (map != null) {
            return (String) map.get("sign_in_second_factor");
        }
        return null;
    }

    @Nullable
    public String getToken() {
        return this.f35624a;
    }
}
