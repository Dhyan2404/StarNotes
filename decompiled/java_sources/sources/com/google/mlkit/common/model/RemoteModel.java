package com.google.mlkit.common.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzq;
import com.google.android.gms.internal.mlkit_common.zzr;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.model.BaseModel;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes6.dex */
public abstract class RemoteModel {

    /* renamed from: e */
    public static final Map f36538e = new EnumMap(BaseModel.class);

    @NonNull
    @VisibleForTesting
    public static final Map zza = new EnumMap(BaseModel.class);

    /* renamed from: a */
    @Nullable
    public final String f36539a;

    /* renamed from: b */
    @Nullable
    public final BaseModel f36540b;

    /* renamed from: c */
    public final ModelType f36541c;

    /* renamed from: d */
    public String f36542d;

    @KeepForSdk
    public RemoteModel(@Nullable String str, @Nullable BaseModel baseModel, @NonNull ModelType modelType) {
        Preconditions.checkArgument(TextUtils.isEmpty(str) == (baseModel != null), "One of cloud model name and base model cannot be empty");
        this.f36539a = str;
        this.f36540b = baseModel;
        this.f36541c = modelType;
    }

    @KeepForSdk
    public boolean baseModelHashMatches(@NonNull String str) {
        BaseModel baseModel = this.f36540b;
        if (baseModel == null) {
            return false;
        }
        return str.equals(f36538e.get(baseModel));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RemoteModel)) {
            return false;
        }
        RemoteModel remoteModel = (RemoteModel) obj;
        return Objects.equal(this.f36539a, remoteModel.f36539a) && Objects.equal(this.f36540b, remoteModel.f36540b) && Objects.equal(this.f36541c, remoteModel.f36541c);
    }

    @NonNull
    @KeepForSdk
    public String getModelHash() {
        return this.f36542d;
    }

    @Nullable
    @KeepForSdk
    public String getModelName() {
        return this.f36539a;
    }

    @NonNull
    @KeepForSdk
    public String getModelNameForBackend() {
        String str = this.f36539a;
        if (str != null) {
            return str;
        }
        return (String) zza.get(this.f36540b);
    }

    @NonNull
    @KeepForSdk
    public ModelType getModelType() {
        return this.f36541c;
    }

    @NonNull
    @KeepForSdk
    public String getUniqueModelNameForPersist() {
        String str = this.f36539a;
        if (str != null) {
            return str;
        }
        return "COM.GOOGLE.BASE_".concat(String.valueOf((String) zza.get(this.f36540b)));
    }

    public int hashCode() {
        return Objects.hashCode(this.f36539a, this.f36540b, this.f36541c);
    }

    @KeepForSdk
    public boolean isBaseModel() {
        return this.f36540b != null;
    }

    @KeepForSdk
    public void setModelHash(@NonNull String str) {
        this.f36542d = str;
    }

    @NonNull
    public String toString() {
        zzq zzb = zzr.zzb("RemoteModel");
        zzb.zza("modelName", this.f36539a);
        zzb.zza("baseModel", this.f36540b);
        zzb.zza("modelType", this.f36541c);
        return zzb.toString();
    }
}
