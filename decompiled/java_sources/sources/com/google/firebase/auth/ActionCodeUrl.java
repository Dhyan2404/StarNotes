package com.google.firebase.auth;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes6.dex */
public class ActionCodeUrl {

    /* renamed from: g */
    public static final com.google.android.gms.internal.p124firebaseauthapi.zzau<String, Integer> f35590g;

    /* renamed from: a */
    public final String f35591a;

    /* renamed from: b */
    public final String f35592b;

    /* renamed from: c */
    public final String f35593c;

    /* renamed from: d */
    @Nullable
    public final String f35594d;

    /* renamed from: e */
    @Nullable
    public final String f35595e;

    /* renamed from: f */
    @Nullable
    public final String f35596f;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("recoverEmail", 2);
        hashMap.put("resetPassword", 0);
        hashMap.put("signIn", 4);
        hashMap.put("verifyEmail", 1);
        hashMap.put("verifyBeforeChangeEmail", 5);
        hashMap.put("revertSecondFactorAddition", 6);
        f35590g = com.google.android.gms.internal.p124firebaseauthapi.zzau.zza(hashMap);
    }

    public ActionCodeUrl(String str) {
        String m27939a = m27939a(str, "apiKey");
        String m27939a2 = m27939a(str, "oobCode");
        String m27939a3 = m27939a(str, Constants.ATTRNAME_MODE);
        if (m27939a == null || m27939a2 == null || m27939a3 == null) {
            throw new IllegalArgumentException(String.format("%s, %s and %s are required in a valid action code URL", "apiKey", "oobCode", Constants.ATTRNAME_MODE));
        }
        this.f35591a = Preconditions.checkNotEmpty(m27939a);
        this.f35592b = Preconditions.checkNotEmpty(m27939a2);
        this.f35593c = Preconditions.checkNotEmpty(m27939a3);
        this.f35594d = m27939a(str, "continueUrl");
        this.f35595e = m27939a(str, "languageCode");
        this.f35596f = m27939a(str, "tenantId");
    }

    @Nullable
    /* renamed from: a */
    public static String m27939a(String str, String str2) {
        Uri parse = Uri.parse(str);
        try {
            Set<String> queryParameterNames = parse.getQueryParameterNames();
            if (queryParameterNames.contains(str2)) {
                return parse.getQueryParameter(str2);
            }
            if (queryParameterNames.contains("link")) {
                return Uri.parse(Preconditions.checkNotEmpty(parse.getQueryParameter("link"))).getQueryParameter(str2);
            }
            return null;
        } catch (NullPointerException | UnsupportedOperationException unused) {
            return null;
        }
    }

    @Nullable
    public static ActionCodeUrl parseLink(@Nullable String str) {
        Preconditions.checkNotEmpty(str);
        try {
            return new ActionCodeUrl(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NonNull
    public String getApiKey() {
        return this.f35591a;
    }

    @Nullable
    public String getCode() {
        return this.f35592b;
    }

    @Nullable
    public String getContinueUrl() {
        return this.f35594d;
    }

    @Nullable
    public String getLanguageCode() {
        return this.f35595e;
    }

    public int getOperation() {
        com.google.android.gms.internal.p124firebaseauthapi.zzau<String, Integer> zzauVar = f35590g;
        if (zzauVar.containsKey(this.f35593c)) {
            return zzauVar.get(this.f35593c).intValue();
        }
        return 3;
    }

    @Nullable
    public final String zza() {
        return this.f35596f;
    }
}
