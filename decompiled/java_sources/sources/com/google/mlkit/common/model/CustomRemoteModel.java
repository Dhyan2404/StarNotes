package com.google.mlkit.common.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.mlkit.common.sdkinternal.ModelType;

/* loaded from: classes6.dex */
public final class CustomRemoteModel extends RemoteModel {

    /* renamed from: f */
    public final RemoteModelSource f36524f;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @NonNull
        public final RemoteModelSource f36525a;

        public Builder(@NonNull RemoteModelSource remoteModelSource) {
            Preconditions.checkNotNull(remoteModelSource);
            this.f36525a = remoteModelSource;
        }

        @NonNull
        public CustomRemoteModel build() {
            return new CustomRemoteModel(this.f36525a, null);
        }
    }

    public /* synthetic */ CustomRemoteModel(RemoteModelSource remoteModelSource, zza zzaVar) {
        super(TextUtils.isEmpty(remoteModelSource.zza()) ? "no_model_name" : remoteModelSource.zza(), null, ModelType.CUSTOM);
        this.f36524f = remoteModelSource;
    }

    @NonNull
    @KeepForSdk
    public RemoteModelSource getRemoteModelSource() {
        return this.f36524f;
    }
}
