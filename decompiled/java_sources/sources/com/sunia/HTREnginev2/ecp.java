package com.sunia.HTREnginev2;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbnx;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbnz;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbok;
import com.google.mlkit.vision.text.pipeline.VkpTextRecognizerOptions;

/* loaded from: classes6.dex */
public final class ecp extends zbnz {

    /* renamed from: a */
    public final Context f68822a;

    /* renamed from: b */
    public final String f68823b;

    /* renamed from: c */
    public final boolean f68824c;

    /* renamed from: d */
    @Nullable
    public final String f68825d;

    /* renamed from: e */
    @Nullable
    public final String f68826e;

    /* renamed from: f */
    @Nullable
    public com.google.mlkit.vision.text.pipeline.zbi f68827f;

    public ecp(Context context, String str, @Nullable String str2, @Nullable String str3, boolean z) {
        this.f68822a = context;
        this.f68823b = str;
        this.f68825d = str2;
        this.f68826e = str3;
        this.f68824c = z;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zboa
    public final zbok zbb(IObjectWrapper iObjectWrapper, zbnx zbnxVar) throws RemoteException {
        com.google.mlkit.vision.text.pipeline.zbi zbiVar = this.f68827f;
        if (zbiVar == null) {
            throw new RemoteException("Process is started without initiation.");
        }
        com.google.mlkit.vision.text.pipeline.zbn zbb = ((com.google.mlkit.vision.text.pipeline.zbi) Preconditions.checkNotNull(zbiVar)).zbb(iObjectWrapper, zbnxVar, true);
        com.google.mlkit.vision.text.pipeline.zbo zbc = zbb.zbc();
        if (zbc.zbd()) {
            return zbb.zbb();
        }
        throw ((RemoteException) zbc.zbb().zba());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zboa
    public final void zbc() throws RemoteException {
        if (this.f68827f == null) {
            System.loadLibrary("mlkit_google_ocr_pipeline");
            String str = this.f68826e;
            String str2 = (str == null || str.isEmpty()) ? "" : this.f68826e;
            String str3 = this.f68823b;
            String str4 = this.f68825d;
            boolean z = this.f68824c;
            VkpTextRecognizerOptions.Builder builder = VkpTextRecognizerOptions.builder(str3, str4, str2);
            builder.setEnableLowLatencyInBackground(z);
            com.google.mlkit.vision.text.pipeline.zbi zba = com.google.mlkit.vision.text.pipeline.zbi.zba(this.f68822a, builder.build());
            this.f68827f = zba;
            com.google.mlkit.vision.text.pipeline.zbo zbc = zba.zbc();
            if (!zbc.zbd()) {
                throw ((RemoteException) zbc.zbb().zba());
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zboa
    public final void zbd() {
        com.google.mlkit.vision.text.pipeline.zbi zbiVar = this.f68827f;
        if (zbiVar != null) {
            zbiVar.zbd();
            this.f68827f = null;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zboa
    public final com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbf[] zbe(IObjectWrapper iObjectWrapper, zbnx zbnxVar) throws RemoteException {
        throw new RemoteException("#recognizeBitmap should not be triggered from text thick client.");
    }
}
