package com.google.mlkit.vision.common.internal;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.Image;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_common.zzlx;
import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.odml.image.MlImage;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MLTask;
import com.google.mlkit.vision.common.InputImage;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

@KeepForSdk
/* loaded from: classes6.dex */
public class MobileVisionBase<DetectionResultT> implements Closeable, LifecycleObserver {

    /* renamed from: j */
    public static final GmsLogger f36647j = new GmsLogger("MobileVisionBase", "");
    public static final /* synthetic */ int zza = 0;

    /* renamed from: e */
    public final AtomicBoolean f36648e = new AtomicBoolean(false);

    /* renamed from: f */
    public final MLTask f36649f;

    /* renamed from: g */
    public final CancellationTokenSource f36650g;

    /* renamed from: h */
    public final Executor f36651h;

    /* renamed from: i */
    public final Task f36652i;

    @KeepForSdk
    public MobileVisionBase(@NonNull MLTask<DetectionResultT, InputImage> mLTask, @NonNull Executor executor) {
        this.f36649f = mLTask;
        CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        this.f36650g = cancellationTokenSource;
        this.f36651h = executor;
        mLTask.pin();
        this.f36652i = mLTask.callAfterLoad(executor, new Callable() { // from class: com.google.mlkit.vision.common.internal.zzb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i = MobileVisionBase.zza;
                return null;
            }
        }, cancellationTokenSource.getToken()).addOnFailureListener(new OnFailureListener() { // from class: com.google.mlkit.vision.common.internal.zzc
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                MobileVisionBase.f36647j.m22160e("MobileVisionBase", "Error preloading model resource", exc);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public synchronized void close() {
        if (this.f36648e.getAndSet(true)) {
            return;
        }
        this.f36650g.cancel();
        this.f36649f.unpin(this.f36651h);
    }

    @NonNull
    @KeepForSdk
    public synchronized Task<Void> closeWithTask() {
        if (this.f36648e.getAndSet(true)) {
            return Tasks.forResult(null);
        }
        this.f36650g.cancel();
        return this.f36649f.unpinWithTask(this.f36651h);
    }

    /* renamed from: f */
    public final /* synthetic */ Object m28572f(InputImage inputImage) throws Exception {
        zzlx zze = zzlx.zze("detectorTaskWithResource#run");
        zze.zzb();
        try {
            Object run = this.f36649f.run(inputImage);
            zze.close();
            return run;
        } catch (Throwable th) {
            try {
                zze.close();
            } catch (Throwable th2) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                } catch (Exception unused) {
                }
            }
            throw th;
        }
    }

    @NonNull
    @KeepForSdk
    public synchronized Task<Void> getInitTaskBase() {
        return this.f36652i;
    }

    /* renamed from: j */
    public final /* synthetic */ Object m28573j(MlImage mlImage) throws Exception {
        InputImage convertMlImagetoInputImage = CommonConvertUtils.convertMlImagetoInputImage(mlImage);
        if (convertMlImagetoInputImage != null) {
            return this.f36649f.run(convertMlImagetoInputImage);
        }
        throw new MlKitException("Current type of MlImage is not supported.", 13);
    }

    @NonNull
    @KeepForSdk
    public Task<DetectionResultT> process(@NonNull Bitmap bitmap, int i) {
        return processBase(InputImage.fromBitmap(bitmap, i));
    }

    @NonNull
    @KeepForSdk
    public synchronized Task<DetectionResultT> processBase(@NonNull final MlImage mlImage) {
        Preconditions.checkNotNull(mlImage, "MlImage can not be null");
        if (this.f36648e.get()) {
            return Tasks.forException(new MlKitException("This detector is already closed!", 14));
        }
        if (mlImage.getWidth() >= 32 && mlImage.getHeight() >= 32) {
            mlImage.getInternal().acquire();
            return this.f36649f.callAfterLoad(this.f36651h, new Callable() { // from class: com.google.mlkit.vision.common.internal.zzd
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return MobileVisionBase.this.m28573j(mlImage);
                }
            }, this.f36650g.getToken()).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.mlkit.vision.common.internal.zze
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    MlImage mlImage2 = MlImage.this;
                    int i = MobileVisionBase.zza;
                    mlImage2.close();
                }
            });
        }
        return Tasks.forException(new MlKitException("MlImage width and height should be at least 32!", 3));
    }

    @NonNull
    @KeepForSdk
    public Task<DetectionResultT> process(@NonNull Image image, int i) {
        return processBase(InputImage.fromMediaImage(image, i));
    }

    @NonNull
    @KeepForSdk
    public Task<DetectionResultT> process(@NonNull Image image, int i, @NonNull Matrix matrix) {
        return processBase(InputImage.fromMediaImage(image, i, matrix));
    }

    @NonNull
    @KeepForSdk
    public Task<DetectionResultT> process(@NonNull ByteBuffer byteBuffer, int i, int i2, int i3, int i4) {
        return processBase(InputImage.fromByteBuffer(byteBuffer, i, i2, i3, i4));
    }

    @NonNull
    @KeepForSdk
    public synchronized Task<DetectionResultT> processBase(@NonNull final InputImage inputImage) {
        Preconditions.checkNotNull(inputImage, "InputImage can not be null");
        if (this.f36648e.get()) {
            return Tasks.forException(new MlKitException("This detector is already closed!", 14));
        }
        if (inputImage.getWidth() >= 32 && inputImage.getHeight() >= 32) {
            return this.f36649f.callAfterLoad(this.f36651h, new Callable() { // from class: com.google.mlkit.vision.common.internal.zza
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return MobileVisionBase.this.m28572f(inputImage);
                }
            }, this.f36650g.getToken());
        }
        return Tasks.forException(new MlKitException("InputImage width and height should be at least 32!", 3));
    }
}
