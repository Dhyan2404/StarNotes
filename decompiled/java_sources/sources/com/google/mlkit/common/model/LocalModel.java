package com.google.mlkit.common.model;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzq;
import com.google.android.gms.internal.mlkit_common.zzr;

/* loaded from: classes6.dex */
public class LocalModel {

    /* renamed from: a */
    @Nullable
    public final String f36530a;

    /* renamed from: b */
    @Nullable
    public final String f36531b;

    /* renamed from: c */
    @Nullable
    public final Uri f36532c;

    /* renamed from: d */
    public final boolean f36533d;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        @Nullable
        public String f36534a = null;

        /* renamed from: b */
        @Nullable
        public String f36535b = null;

        /* renamed from: c */
        @Nullable
        public Uri f36536c = null;

        /* renamed from: d */
        public boolean f36537d = false;

        @NonNull
        public LocalModel build() {
            String str = this.f36534a;
            boolean z = true;
            if ((str == null || this.f36535b != null || this.f36536c != null) && ((str != null || this.f36535b == null || this.f36536c != null) && (str != null || this.f36535b != null || this.f36536c == null))) {
                z = false;
            }
            Preconditions.checkArgument(z, "Set one of filePath, assetFilePath and URI.");
            return new LocalModel(this.f36534a, this.f36535b, this.f36536c, this.f36537d, null);
        }

        @NonNull
        public Builder setAbsoluteFilePath(@NonNull String str) {
            Preconditions.checkNotEmpty(str, "Model Source file path can not be empty");
            boolean z = false;
            if (this.f36535b == null && this.f36536c == null && !this.f36537d) {
                z = true;
            }
            Preconditions.checkArgument(z, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f36534a = str;
            return this;
        }

        @NonNull
        public Builder setAbsoluteManifestFilePath(@NonNull String str) {
            Preconditions.checkNotEmpty(str, "Manifest file path can not be empty");
            boolean z = false;
            if (this.f36535b == null && this.f36536c == null && (this.f36534a == null || this.f36537d)) {
                z = true;
            }
            Preconditions.checkArgument(z, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f36534a = str;
            this.f36537d = true;
            return this;
        }

        @NonNull
        public Builder setAssetFilePath(@NonNull String str) {
            Preconditions.checkNotEmpty(str, "Model Source file path can not be empty");
            boolean z = false;
            if (this.f36534a == null && this.f36536c == null && !this.f36537d) {
                z = true;
            }
            Preconditions.checkArgument(z, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f36535b = str;
            return this;
        }

        @NonNull
        public Builder setAssetManifestFilePath(@NonNull String str) {
            Preconditions.checkNotEmpty(str, "Manifest file path can not be empty");
            boolean z = false;
            if (this.f36534a == null && this.f36536c == null && (this.f36535b == null || this.f36537d)) {
                z = true;
            }
            Preconditions.checkArgument(z, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f36535b = str;
            this.f36537d = true;
            return this;
        }

        @NonNull
        public Builder setUri(@NonNull Uri uri) {
            boolean z = false;
            if (this.f36534a == null && this.f36535b == null) {
                z = true;
            }
            Preconditions.checkArgument(z, "A local model source is from absolute file path, asset file path or URI, you can only set one of them.");
            this.f36536c = uri;
            return this;
        }
    }

    public /* synthetic */ LocalModel(String str, String str2, Uri uri, boolean z, zzc zzcVar) {
        this.f36530a = str;
        this.f36531b = str2;
        this.f36532c = uri;
        this.f36533d = z;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocalModel)) {
            return false;
        }
        LocalModel localModel = (LocalModel) obj;
        return Objects.equal(this.f36530a, localModel.f36530a) && Objects.equal(this.f36531b, localModel.f36531b) && Objects.equal(this.f36532c, localModel.f36532c) && this.f36533d == localModel.f36533d;
    }

    @Nullable
    @KeepForSdk
    public String getAbsoluteFilePath() {
        return this.f36530a;
    }

    @Nullable
    @KeepForSdk
    public String getAssetFilePath() {
        return this.f36531b;
    }

    @Nullable
    @KeepForSdk
    public Uri getUri() {
        return this.f36532c;
    }

    public int hashCode() {
        return Objects.hashCode(this.f36530a, this.f36531b, this.f36532c, Boolean.valueOf(this.f36533d));
    }

    @KeepForSdk
    public boolean isManifestFile() {
        return this.f36533d;
    }

    @NonNull
    public String toString() {
        zzq zza = zzr.zza(this);
        zza.zza("absoluteFilePath", this.f36530a);
        zza.zza("assetFilePath", this.f36531b);
        zza.zza("uri", this.f36532c);
        zza.zzb("isManifestFile", this.f36533d);
        return zza.toString();
    }
}
