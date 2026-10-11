package com.google.android.play.core.integrity;

import android.net.Network;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes6.dex */
public abstract class IntegrityTokenRequest {

    /* loaded from: classes6.dex */
    public static abstract class Builder {
        public abstract IntegrityTokenRequest build();

        public abstract Builder setCloudProjectNumber(long j);

        public abstract Builder setNonce(String str);
    }

    public static Builder builder() {
        return new C5516c();
    }

    @Nullable
    @RequiresApi(api = 23)
    /* renamed from: a */
    public abstract Network mo25655a();

    @Nullable
    public abstract Long cloudProjectNumber();

    public abstract String nonce();
}
