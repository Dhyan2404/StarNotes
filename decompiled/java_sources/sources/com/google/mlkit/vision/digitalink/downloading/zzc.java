package com.google.mlkit.vision.digitalink.downloading;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzr;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzyg;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzzz;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes6.dex */
public final class zzc {

    /* renamed from: a */
    @NonNull
    public final zzyg f36775a;

    /* renamed from: b */
    @NonNull
    public final Uri f36776b;

    /* renamed from: c */
    @NonNull
    public final Uri f36777c;

    /* renamed from: d */
    @NonNull
    public final Uri f36778d;

    public zzc(@NonNull zzyg zzygVar, @NonNull zzr zzrVar) {
        this.f36775a = zzygVar;
        if (zzrVar.zza() >= 2 && zzrVar.zza() <= 3) {
            this.f36776b = Uri.parse(zzrVar.zze(0).zzd());
            this.f36777c = Uri.parse(zzrVar.zze(1).zzd());
            this.f36778d = zzrVar.zza() >= 3 ? Uri.parse(zzrVar.zze(2).zzd()) : Uri.EMPTY;
        } else {
            throw new IllegalArgumentException("Passed clientFileGroup does not have expected number of files. actual: " + zzrVar.zzl().size() + ", expected: 2-3.");
        }
    }

    public final String toString() {
        return "DownloadedFileGroup{" + this.f36776b.toString() + ", " + this.f36777c.toString() + ", " + this.f36778d.toString() + "}";
    }

    @Nullable
    public final FileInputStream zza() throws IOException {
        if (this.f36778d.equals(Uri.EMPTY)) {
            return null;
        }
        return ((AssetFileDescriptor) Preconditions.checkNotNull((AssetFileDescriptor) (this.f36778d.equals(Uri.EMPTY) ? null : Preconditions.checkNotNull(this.f36775a.zzc(this.f36778d, (zzyf) Preconditions.checkNotNull(zzzz.zza())))))).createInputStream();
    }

    @NonNull
    public final Object zzb(zzyf zzyfVar) throws IOException {
        return Preconditions.checkNotNull(this.f36775a.zzc(this.f36777c, zzyfVar));
    }

    @NonNull
    public final Object zzc(zzyf zzyfVar) throws IOException {
        return Preconditions.checkNotNull(this.f36775a.zzc(this.f36776b, zzyfVar));
    }
}
