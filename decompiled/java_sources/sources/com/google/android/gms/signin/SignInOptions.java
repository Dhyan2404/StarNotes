package com.google.android.gms.signin;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes5.dex */
public final class SignInOptions implements Api.ApiOptions.Optional {

    @NonNull
    public static final SignInOptions zaa = new SignInOptions(false, false, null, false, null, null, false, null, null, null);

    /* renamed from: e */
    public final boolean f30051e = false;

    /* renamed from: f */
    public final boolean f30052f = false;

    /* renamed from: g */
    @Nullable
    public final String f30053g = null;

    /* renamed from: h */
    public final boolean f30054h = false;

    /* renamed from: k */
    public final boolean f30057k = false;

    /* renamed from: i */
    @Nullable
    public final String f30055i = null;

    /* renamed from: j */
    @Nullable
    public final String f30056j = null;

    /* renamed from: l */
    @Nullable
    public final Long f30058l = null;

    /* renamed from: m */
    @Nullable
    public final Long f30059m = null;

    public /* synthetic */ SignInOptions(boolean z, boolean z2, String str, boolean z3, String str2, String str3, boolean z4, Long l, Long l2, zaf zafVar) {
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SignInOptions)) {
            return false;
        }
        boolean z = ((SignInOptions) obj).f30051e;
        return Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null);
    }

    public final int hashCode() {
        Boolean bool = Boolean.FALSE;
        return Objects.hashCode(bool, bool, null, bool, bool, null, null, null, null);
    }
}
