package com.google.android.play.core.integrity;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.Task;

/* loaded from: classes6.dex */
public interface StandardIntegrityManager {

    /* loaded from: classes6.dex */
    public static abstract class PrepareIntegrityTokenRequest {

        /* loaded from: classes6.dex */
        public static abstract class Builder {
            public abstract PrepareIntegrityTokenRequest build();

            public abstract Builder setCloudProjectNumber(long j);
        }

        public static Builder builder() {
            return new C5520f();
        }

        /* renamed from: a */
        public abstract long mo25656a();
    }

    /* loaded from: classes6.dex */
    public static abstract class StandardIntegrityToken {
        public abstract String token();
    }

    /* loaded from: classes6.dex */
    public interface StandardIntegrityTokenProvider {
        Task<StandardIntegrityToken> request(StandardIntegrityTokenRequest standardIntegrityTokenRequest);
    }

    /* loaded from: classes6.dex */
    public static abstract class StandardIntegrityTokenRequest {

        /* loaded from: classes6.dex */
        public static abstract class Builder {
            public abstract StandardIntegrityTokenRequest build();

            public abstract Builder setRequestHash(@Nullable String str);
        }

        public static Builder builder() {
            return new C5523i();
        }

        @Nullable
        /* renamed from: a */
        public abstract String mo25657a();
    }

    Task<StandardIntegrityTokenProvider> prepareIntegrityToken(PrepareIntegrityTokenRequest prepareIntegrityTokenRequest);
}
