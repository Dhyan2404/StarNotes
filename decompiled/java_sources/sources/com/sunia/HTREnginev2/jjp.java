package com.sunia.HTREnginev2;

import android.content.Context;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.mlkit_vision_text_common.zzou;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuc;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuq;
import com.google.android.gms.internal.mlkit_vision_text_common.zzut;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuv;
import com.google.android.gms.internal.mlkit_vision_text_common.zzux;
import com.google.android.gms.internal.mlkit_vision_text_common.zzuy;
import com.google.android.gms.internal.mlkit_vision_text_common.zzvh;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.common.internal.CommonConvertUtils;
import com.google.mlkit.vision.common.internal.ImageUtils;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognizerOptionsInterface;
import com.google.mlkit.vision.text.internal.LoggingUtils;
import com.google.mlkit.vision.text.internal.TextOptionalModuleUtils;

/* loaded from: classes6.dex */
public final class jjp implements app {

    /* renamed from: a */
    public final Context f74384a;

    /* renamed from: b */
    public final TextRecognizerOptionsInterface f74385b;

    /* renamed from: c */
    public boolean f74386c;

    /* renamed from: d */
    public boolean f74387d;

    /* renamed from: e */
    public final zzuc f74388e;

    /* renamed from: f */
    @Nullable
    public zzuv f74389f;

    public jjp(Context context, TextRecognizerOptionsInterface textRecognizerOptionsInterface, zzuc zzucVar) {
        this.f74384a = context;
        this.f74385b = textRecognizerOptionsInterface;
        this.f74388e = zzucVar;
    }

    /* renamed from: b */
    public static zzvh m54949b(TextRecognizerOptionsInterface textRecognizerOptionsInterface, @Nullable String str) {
        int i = 1;
        boolean z = (textRecognizerOptionsInterface instanceof com.google.mlkit.vision.text.internal.zzc) && ((com.google.mlkit.vision.text.internal.zzc) textRecognizerOptionsInterface).zza();
        String configLabel = textRecognizerOptionsInterface.getConfigLabel();
        String loggingLibraryNameForOptionalModule = textRecognizerOptionsInterface.getLoggingLibraryNameForOptionalModule();
        switch (textRecognizerOptionsInterface.getLoggingLanguageOption()) {
            case 1:
                i = 2;
                break;
            case 2:
                i = 3;
                break;
            case 3:
                i = 4;
                break;
            case 4:
                i = 5;
                break;
            case 5:
                i = 6;
                break;
            case 6:
                i = 7;
                break;
            case 7:
                i = 8;
                break;
            case 8:
                i = 9;
                break;
        }
        return new zzvh(configLabel, loggingLibraryNameForOptionalModule, str, true, i - 1, textRecognizerOptionsInterface.getLanguageHint(), z);
    }

    @Override // com.sunia.HTREnginev2.app
    @WorkerThread
    /* renamed from: a */
    public final Text mo53028a(InputImage inputImage) throws MlKitException {
        if (this.f74389f == null) {
            zzb();
        }
        zzuv zzuvVar = (zzuv) Preconditions.checkNotNull(this.f74389f);
        if (!this.f74386c) {
            try {
                zzuvVar.zze();
                this.f74386c = true;
            } catch (RemoteException e) {
                throw new MlKitException("Failed to init text recognizer ".concat(String.valueOf(this.f74385b.getLoggingLibraryName())), 13, e);
            }
        }
        try {
            return new Text(zzuvVar.zzd(ImageUtils.getInstance().getImageDataWrapper(inputImage), new zzuq(inputImage.getFormat(), inputImage.getWidth(), inputImage.getHeight(), CommonConvertUtils.convertToMVRotation(inputImage.getRotationDegrees()), SystemClock.elapsedRealtime())), inputImage.getCoordinatesMatrix());
        } catch (RemoteException e2) {
            throw new MlKitException("Failed to run text recognizer ".concat(String.valueOf(this.f74385b.getLoggingLibraryName())), 13, e2);
        }
    }

    @Override // com.sunia.HTREnginev2.app
    @WorkerThread
    public final void zzb() throws MlKitException {
        zzuv zzd;
        if (this.f74389f != null) {
            return;
        }
        try {
            TextRecognizerOptionsInterface textRecognizerOptionsInterface = this.f74385b;
            boolean z = textRecognizerOptionsInterface instanceof com.google.mlkit.vision.text.internal.zzb;
            String zza = z ? ((com.google.mlkit.vision.text.internal.zzb) textRecognizerOptionsInterface).zza() : null;
            if (this.f74385b.getIsThickClient()) {
                Log.d("DecoupledTextDelegate", "Start loading thick OCR module.");
                zzd = zzux.zza(DynamiteModule.load(this.f74384a, DynamiteModule.PREFER_LOCAL, this.f74385b.getModuleId()).instantiate("com.google.mlkit.vision.text.bundled.common.BundledTextRecognizerCreator")).zze(ObjectWrapper.wrap(this.f74384a), m54949b(this.f74385b, zza));
            } else if (z) {
                Log.d("DecoupledTextDelegate", "Start loading custom OCR module.");
                zzd = zzut.zza(DynamiteModule.load(this.f74384a, DynamiteModule.PREFER_REMOTE, this.f74385b.getModuleId()).instantiate("com.google.android.gms.vision.text.mlkit.CommonTextRecognizerCreator")).zzd(ObjectWrapper.wrap(this.f74384a), null, m54949b(this.f74385b, zza));
            } else {
                Log.d("DecoupledTextDelegate", "Start loading thin OCR module.");
                zzuy zza2 = zzux.zza(DynamiteModule.load(this.f74384a, DynamiteModule.PREFER_REMOTE, this.f74385b.getModuleId()).instantiate("com.google.android.gms.vision.text.mlkit.TextRecognizerCreator"));
                zzd = this.f74385b.getLoggingLanguageOption() == 1 ? zza2.zzd(ObjectWrapper.wrap(this.f74384a)) : zza2.zze(ObjectWrapper.wrap(this.f74384a), m54949b(this.f74385b, zza));
            }
            this.f74389f = zzd;
            LoggingUtils.m28586b(this.f74388e, this.f74385b.getIsThickClient(), zzou.NO_ERROR);
        } catch (RemoteException e) {
            LoggingUtils.m28586b(this.f74388e, this.f74385b.getIsThickClient(), zzou.OPTIONAL_MODULE_INIT_ERROR);
            throw new MlKitException("Failed to create text recognizer ".concat(String.valueOf(this.f74385b.getLoggingLibraryName())), 13, e);
        } catch (DynamiteModule.LoadingException e2) {
            LoggingUtils.m28586b(this.f74388e, this.f74385b.getIsThickClient(), zzou.OPTIONAL_MODULE_NOT_AVAILABLE);
            if (this.f74385b.getIsThickClient()) {
                throw new MlKitException(String.format("Failed to load text module %s. %s", this.f74385b.getLoggingLibraryName(), e2.getMessage()), 13, e2);
            }
            if (!this.f74387d) {
                OptionalModuleUtils.requestDownload(this.f74384a, TextOptionalModuleUtils.m28587a(this.f74385b));
                this.f74387d = true;
            }
            throw new MlKitException("Waiting for the text optional module to be downloaded. Please wait.", 14);
        }
    }

    @Override // com.sunia.HTREnginev2.app
    @WorkerThread
    public final void zzc() {
        zzuv zzuvVar = this.f74389f;
        if (zzuvVar != null) {
            try {
                zzuvVar.zzf();
            } catch (RemoteException e) {
                Log.e("DecoupledTextDelegate", "Failed to release text recognizer ".concat(String.valueOf(this.f74385b.getLoggingLibraryName())), e);
            }
            this.f74389f = null;
        }
        this.f74386c = false;
    }
}
