package com.google.mlkit.common.sdkinternal;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes6.dex */
public class ModelInfo {

    /* renamed from: a */
    public final String f36563a;

    /* renamed from: b */
    public final Uri f36564b;

    /* renamed from: c */
    public final String f36565c;

    /* renamed from: d */
    public final ModelType f36566d;

    @KeepForSdk
    public ModelInfo(@NonNull String str, @NonNull Uri uri, @NonNull String str2, @NonNull ModelType modelType) {
        this.f36563a = str;
        this.f36564b = uri;
        this.f36565c = str2;
        this.f36566d = modelType;
    }

    @NonNull
    @KeepForSdk
    public String getModelHash() {
        return this.f36565c;
    }

    @NonNull
    @KeepForSdk
    public String getModelNameForPersist() {
        return this.f36563a;
    }

    @NonNull
    @KeepForSdk
    public ModelType getModelType() {
        return this.f36566d;
    }

    @NonNull
    @KeepForSdk
    public Uri getModelUri() {
        return this.f36564b;
    }
}
