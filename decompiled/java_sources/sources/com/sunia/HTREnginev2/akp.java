package com.sunia.HTREnginev2;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.mlkit_vision_text_common.zzp;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.common.internal.CommonConvertUtils;
import com.google.mlkit.vision.common.internal.ImageConvertUtils;
import com.google.mlkit.vision.text.Text;

/* loaded from: classes6.dex */
public final class akp implements app {

    /* renamed from: a */
    public final Context f64787a;

    /* renamed from: b */
    public final zzp f64788b = new zzp(null);

    /* renamed from: c */
    public boolean f64789c;

    /* renamed from: d */
    @Nullable
    public com.google.android.gms.internal.mlkit_vision_text_common.zzh f64790d;

    public akp(Context context) {
        this.f64787a = context;
    }

    @Override // com.sunia.HTREnginev2.app
    /* renamed from: a */
    public final Text mo53028a(InputImage inputImage) throws MlKitException {
        Bitmap convertToUpRightBitmap;
        int i;
        if (this.f64790d == null) {
            zzb();
        }
        if (this.f64790d == null) {
            throw new MlKitException("Waiting for the text recognition module to be downloaded. Please wait.", 14);
        }
        if (inputImage.getFormat() == -1) {
            convertToUpRightBitmap = inputImage.getBitmapInternal();
            i = CommonConvertUtils.convertToMVRotation(inputImage.getRotationDegrees());
        } else {
            convertToUpRightBitmap = ImageConvertUtils.getInstance().convertToUpRightBitmap(inputImage);
            i = 0;
        }
        try {
            return inp.m54734a(((com.google.android.gms.internal.mlkit_vision_text_common.zzh) Preconditions.checkNotNull(this.f64790d)).zze(ObjectWrapper.wrap(convertToUpRightBitmap), new com.google.android.gms.internal.mlkit_vision_text_common.zzd(inputImage.getWidth(), inputImage.getHeight(), 0, 0L, i)), inputImage.getCoordinatesMatrix());
        } catch (RemoteException e) {
            throw new MlKitException("Failed to run legacy text recognizer.", 13, e);
        }
    }

    @Override // com.sunia.HTREnginev2.app
    public final void zzb() throws MlKitException {
        if (this.f64790d != null) {
            return;
        }
        try {
            com.google.android.gms.internal.mlkit_vision_text_common.zzh zzd = com.google.android.gms.internal.mlkit_vision_text_common.zzj.zza(DynamiteModule.load(this.f64787a, DynamiteModule.PREFER_REMOTE, OptionalModuleUtils.DEPRECATED_DYNAMITE_MODULE_ID).instantiate("com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator")).zzd(ObjectWrapper.wrap(this.f64787a), this.f64788b);
            this.f64790d = zzd;
            if (zzd != null || this.f64789c) {
                return;
            }
            Log.d("LegacyTextDelegate", "Request OCR optional module download.");
            OptionalModuleUtils.requestDownload(this.f64787a, OptionalModuleUtils.OCR);
            this.f64789c = true;
        } catch (RemoteException e) {
            throw new MlKitException("Failed to create legacy text recognizer.", 13, e);
        } catch (DynamiteModule.LoadingException e2) {
            throw new MlKitException("Failed to load deprecated vision dynamite module.", 13, e2);
        }
    }

    @Override // com.sunia.HTREnginev2.app
    public final void zzc() {
        com.google.android.gms.internal.mlkit_vision_text_common.zzh zzhVar = this.f64790d;
        if (zzhVar != null) {
            try {
                zzhVar.zzd();
            } catch (RemoteException e) {
                Log.e("LegacyTextDelegate", "Failed to release legacy text recognizer.", e);
            }
            this.f64790d = null;
        }
    }
}
