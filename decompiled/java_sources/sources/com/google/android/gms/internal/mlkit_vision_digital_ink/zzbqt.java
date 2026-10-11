package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.DownloadConditions;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.model.RemoteModelManagerInterface;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModel;
import com.google.mlkit.vision.digitalink.DigitalInkRecognitionModelIdentifier;
import com.google.mlkit.vision.digitalink.downloading.DigitalInkRecognitionFileDependencyManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes5.dex */
public class zzbqt implements RemoteModelManagerInterface {
    public static final /* synthetic */ int zzb = 0;

    @GuardedBy("MddModelManager.class")
    private static final HashMap zzc = new HashMap();

    @VisibleForTesting
    public final zzarm zza;
    private final zzei zzd;
    private final Context zze;
    private final zzask zzf;
    private final zzyg zzg;
    private final zzbqs zzh;
    private final zzbqr zzi;
    private final WorkManager zzj;

    public zzbqt(Context context, zzbqs zzbqsVar, zzbqr zzbqrVar) {
        this.zze = context;
        this.zzh = zzbqsVar;
        this.zzi = zzbqrVar;
        zzask zza = zzasq.zza(Executors.newCachedThreadPool());
        this.zzf = zza;
        zzwp zzwpVar = new zzwp(context);
        zzyg zzt = zzt(context, zzwpVar);
        this.zzg = zzt;
        this.zzd = zzs(context, "mlkit_digital_ink_recognition", zzwpVar, zzt, zzu(zza, zzt), zza);
        this.zzj = WorkManager.getInstance(context);
        Log.i("MddModelManager", "Start initialization");
        zzasi zzo = zzarx.zzo(zzarm.zzv(zzasq.zza(zza).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqe
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzbqt.this.zzq();
            }
        })), new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzbqt.this.zzm((Boolean) obj);
            }
        }, zza);
        zzarx.zzr(zzo, new zzbqq(this), zzasq.zzb());
        this.zza = (zzarm) zzo;
    }

    public static ListenableWorker.Result zza(Context context, Data data) {
        String string = data.getString("mddInstanceId");
        zzwp zzwpVar = new zzwp(context);
        zzyg zzt = zzt(context, zzwpVar);
        zzask zza = zzasq.zza(Executors.newCachedThreadPool());
        zzei zzs = zzs(context, string, zzwpVar, zzt, zzu(zza, zzt), zza);
        DownloadConditions.Builder builder = new DownloadConditions.Builder();
        if (data.getBoolean("requiresWifi", false)) {
            builder = builder.requireWifi();
        }
        DownloadConditions build = builder.build();
        zzbk zzl = zzbl.zzl();
        zzl.zza(zzv(build));
        zzl.zzb(data.getString("fileGroupId"));
        try {
            zzs.zzb(zzl.zzf()).get();
            return ListenableWorker.Result.success();
        } catch (InterruptedException | ExecutionException e) {
            Log.e("MddModelManager", "Download worker future failed.", e);
            return ListenableWorker.Result.failure();
        }
    }

    private static synchronized zzei zzs(Context context, String str, zzwp zzwpVar, zzyg zzygVar, zzaba zzabaVar, zzask zzaskVar) {
        zzei zzeiVar;
        synchronized (zzbqt.class) {
            HashMap hashMap = zzc;
            if (!hashMap.containsKey(str)) {
                zzek zzb2 = zzek.zzb();
                zzb2.zzc(context);
                zzb2.zzg(zzagb.zzf(str));
                zzb2.zzj(zzagb.zzd());
                zzb2.zzd(zzaskVar);
                zzb2.zzi(zzabaVar);
                zzb2.zze(zzbra.zzd(context, zzaskVar, zzygVar, zzagb.zzd(), zzagb.zzd(), zzagb.zzd()));
                zzb2.zzf(zzygVar);
                zzb2.zzh(zzwpVar);
                hashMap.put(str, zzb2.zza());
            }
            zzeiVar = (zzei) hashMap.get(str);
        }
        return zzeiVar;
    }

    private static zzyg zzt(Context context, zzwp zzwpVar) {
        zzaji zze = zzajm.zze();
        zze.zze(zzyn.zzd(context).zzb());
        if (Build.VERSION.SDK_INT >= 30) {
            zze.zze(new zzyv(context));
        }
        return new zzyg(zze.zzh(), zzajm.zzr(new zzaaj()), zzajm.zzr(zzwpVar));
    }

    private static zzaba zzu(Executor executor, zzyg zzygVar) {
        zzabb zzabbVar = new zzabb();
        zzabbVar.zzc(executor);
        zzabbVar.zzd(zzygVar);
        zzabbVar.zzb(zzabz.zza());
        return zzabbVar.zza();
    }

    private static zzagb zzv(DownloadConditions downloadConditions) {
        zzba zza = zzbd.zza();
        zza.zza(true != downloadConditions.isWifiRequired() ? 2 : 1);
        return zzagb.zzf((zzbd) zza.zzx());
    }

    @Override // com.google.mlkit.common.sdkinternal.model.RemoteModelManagerInterface
    public final Task deleteDownloadedModel(final RemoteModel remoteModel) {
        Log.i("MddModelManager", "deleteDownloadedModel()");
        final zzagy zzb2 = zzagy.zzb(zzafa.zza());
        final String zzd = DigitalInkRecognitionFileDependencyManager.zzd((DigitalInkRecognitionModel) remoteModel);
        Log.i("MddModelManager", "deleteDownloadedModel(): deleting ".concat(String.valueOf(zzd)));
        return zzbrw.zza(zzarx.zzo(zzarx.zzo(zzarx.zzo(zzarx.zzo(this.zza, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqi
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzbqt.this.zzh(zzd, (Boolean) obj);
            }
        }, this.zzf), new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqj
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzbqt.this.zzi(remoteModel, zzb2, (Boolean) obj);
            }
        }, this.zzf), new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqk
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzbqt.this.zzj(zzd, (Void) obj);
            }
        }, this.zzf), new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbql
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                zzb2.zza(TimeUnit.MILLISECONDS);
                if (((Boolean) obj).booleanValue()) {
                    Log.i("MddModelManager", "deleteDownloadedModel()->addFileGroup() succeeded");
                } else {
                    Log.e("MddModelManager", "deleteDownloadedModel()->addFileGroup() failed");
                }
                return zzarx.zzh(null);
            }
        }, this.zzf)).addOnSuccessListener(this.zzf, new OnSuccessListener() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqm
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                zzbqt.this.zzr(remoteModel, zzb2, (Void) obj);
            }
        });
    }

    @Override // com.google.mlkit.common.sdkinternal.model.RemoteModelManagerInterface
    public final Task download(final RemoteModel remoteModel, @NonNull final DownloadConditions downloadConditions) {
        Task zza;
        DigitalInkRecognitionModel digitalInkRecognitionModel = (DigitalInkRecognitionModel) remoteModel;
        ((com.google.mlkit.vision.digitalink.downloading.zza) this.zzi).zzf(digitalInkRecognitionModel, downloadConditions);
        Log.i("MddModelManager", "download(): Download for model ".concat(String.valueOf(remoteModel)));
        final zzagy zzb2 = zzagy.zzb(zzafa.zza());
        if (downloadConditions.isChargingRequired()) {
            OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(DigitalInkRecognitionFileDependencyManager.DownloadWorker.class).setInputData(new Data.Builder().putString("mddInstanceId", "mlkit_digital_ink_recognition").putBoolean("requiresWifi", downloadConditions.isWifiRequired()).putString("fileGroupId", DigitalInkRecognitionFileDependencyManager.zzd(digitalInkRecognitionModel)).build()).setConstraints(new Constraints.Builder().setRequiresCharging(downloadConditions.isChargingRequired()).build()).build();
            this.zzj.enqueue(build);
            final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            final LiveData<WorkInfo> workInfoByIdLiveData = this.zzj.getWorkInfoByIdLiveData(build.getId());
            new Handler(this.zze.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqo
                @Override // java.lang.Runnable
                public final void run() {
                    LiveData liveData = LiveData.this;
                    final TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                    int i = zzbqt.zzb;
                    liveData.observeForever(new Observer() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqn
                        @Override // androidx.lifecycle.Observer
                        public final void onChanged(Object obj) {
                            TaskCompletionSource taskCompletionSource3 = TaskCompletionSource.this;
                            WorkInfo workInfo = (WorkInfo) obj;
                            int i2 = zzbqt.zzb;
                            if (workInfo.getState() == WorkInfo.State.SUCCEEDED) {
                                taskCompletionSource3.setResult(null);
                            } else if (workInfo.getState() == WorkInfo.State.FAILED) {
                                taskCompletionSource3.setException(new MlKitException("Scheduled download failed.", 2));
                            }
                        }
                    });
                }
            });
            zza = taskCompletionSource.getTask().onSuccessTask(new SuccessContinuation() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqb
                @Override // com.google.android.gms.tasks.SuccessContinuation
                public final Task then(Object obj) {
                    return zzbqt.this.zzg(remoteModel, (Void) obj);
                }
            });
        } else {
            zza = zzbrw.zza(zzarx.zzo(this.zza, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpy
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzbqt.this.zzp(downloadConditions, remoteModel, (Boolean) obj);
                }
            }, this.zzf));
        }
        return zza.continueWithTask(this.zzf, new Continuation() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqh
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return zzbqt.this.zzf(remoteModel, downloadConditions, zzb2, task);
            }
        });
    }

    @Override // com.google.mlkit.common.sdkinternal.model.RemoteModelManagerInterface
    public final Task getDownloadedModels() {
        final zzagy zzb2 = zzagy.zzb(zzafa.zza());
        return zzbrw.zza(zzarx.zzo(this.zza, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqp
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzbqt.this.zzl((Boolean) obj);
            }
        }, this.zzf)).onSuccessTask(this.zzf, new SuccessContinuation() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpv
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return zzbqt.this.zzd(zzb2, (zzajm) obj);
            }
        });
    }

    @Override // com.google.mlkit.common.sdkinternal.model.RemoteModelManagerInterface
    public final Task isModelDownloaded(final RemoteModel remoteModel) {
        Log.i("MddModelManager", "isModelDownloadedAndValid()");
        final zzagy zzb2 = zzagy.zzb(zzafa.zza());
        return zzbrw.zza(zzarx.zzo(this.zza, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpw
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzbqt.this.zzn(remoteModel, (Boolean) obj);
            }
        }, this.zzf)).onSuccessTask(this.zzf, new SuccessContinuation() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpx
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return zzbqt.this.zze(remoteModel, zzb2, (zzr) obj);
            }
        });
    }

    public final Task zzb(final RemoteModel remoteModel) {
        Log.i("MddModelManager", "getDownloadedFilesForModel()");
        final zzagy zzb2 = zzagy.zzb(zzafa.zza());
        return zzbrw.zza(zzarx.zzo(this.zza, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpu
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzbqt.this.zzk(remoteModel, (Boolean) obj);
            }
        }, this.zzf)).onSuccessTask(this.zzf, new SuccessContinuation() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqf
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return zzbqt.this.zzc(remoteModel, zzb2, (zzr) obj);
            }
        });
    }

    public final /* synthetic */ Task zzc(RemoteModel remoteModel, zzagy zzagyVar, zzr zzrVar) throws Exception {
        Log.i("MddModelManager", "getDownloadedFilesForModel(): started");
        Log.i("MddModelManager", "getDownloadedFilesForModel(): acquired result.");
        ((com.google.mlkit.vision.digitalink.downloading.zza) this.zzi).zzg((DigitalInkRecognitionModel) remoteModel, zzrVar == null ? zzagb.zzd() : zzagb.zzf(zzrVar.zzg()), zzagyVar.zza(TimeUnit.MILLISECONDS));
        if (zzrVar == null) {
            Log.e("MddModelManager", "getDownloadedFilesForModel(): Resulting file group empty.");
            return Tasks.forResult(null);
        }
        zzq zzqVar = zzq.UNSPECIFIED;
        int ordinal = zzrVar.zzg().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return Tasks.forResult(new com.google.mlkit.vision.digitalink.downloading.zzc(this.zzg, zzrVar));
            }
            if (ordinal != 2 && ordinal != 3) {
                return Tasks.forResult(null);
            }
        }
        Log.e("MddModelManager", "getDownloadedFilesForModel(): Resulting file not correctly downloaded. State: " + zzrVar.zzg().zza());
        return Tasks.forResult(null);
    }

    public final /* synthetic */ Task zzd(zzagy zzagyVar, zzajm zzajmVar) throws Exception {
        Log.i("MddModelManager", "getDownloadedModels(): Started.");
        this.zzi.zza(zzajmVar != null, zzagyVar.zza(TimeUnit.MILLISECONDS));
        if (zzajmVar != null) {
            return Tasks.forResult(new HashSet(zzaim.zzb(zzaim.zza(zzajmVar, new zzagh() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqc
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagh
                public final boolean zza(Object obj) {
                    int i = zzbqt.zzb;
                    return ((zzr) obj).zzg() == zzq.DOWNLOADED;
                }
            }), new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqd
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
                public final Object zza(Object obj) {
                    String zzi = ((zzr) obj).zzi();
                    DigitalInkRecognitionModelIdentifier zza = DigitalInkRecognitionModelIdentifier.zza(zzi);
                    if (zza != null) {
                        return DigitalInkRecognitionModel.builder((DigitalInkRecognitionModelIdentifier) Preconditions.checkNotNull(zza)).build();
                    }
                    throw new IllegalArgumentException("No model identifier found for fileGroupId '" + zzi + "'.");
                }
            })));
        }
        Log.i("MddModelManager", "getDownloadedModels(): returned null");
        return Tasks.forResult(null);
    }

    public final /* synthetic */ Task zze(RemoteModel remoteModel, zzagy zzagyVar, zzr zzrVar) throws Exception {
        ((com.google.mlkit.vision.digitalink.downloading.zza) this.zzi).zzh((DigitalInkRecognitionModel) remoteModel, zzrVar == null ? zzagb.zzd() : zzagb.zzf(zzrVar.zzg()), zzagyVar.zza(TimeUnit.MILLISECONDS));
        boolean z = false;
        if (zzrVar != null && zzrVar.zzg() == zzq.DOWNLOADED) {
            z = true;
        }
        return Tasks.forResult(Boolean.valueOf(z));
    }

    public final /* synthetic */ Task zzf(RemoteModel remoteModel, DownloadConditions downloadConditions, zzagy zzagyVar, Task task) throws Exception {
        Exception exception;
        zzr zzrVar;
        Log.i("MddModelManager", "download: complete");
        if (task.isSuccessful()) {
            zzrVar = (zzr) task.getResult();
            exception = null;
        } else {
            exception = task.getException();
            zzrVar = null;
        }
        ArrayList arrayList = new ArrayList();
        Throwable th = exception;
        while (th != null && !(th instanceof zzbj) && !(th instanceof zzv)) {
            th = th.getCause();
        }
        if (th instanceof zzbj) {
            arrayList.add(Integer.valueOf(((zzbj) th).zza().zza()));
        } else if (th instanceof zzv) {
            zzajm zza = ((zzv) th).zza();
            int size = zza.size();
            for (int i = 0; i < size; i++) {
                Throwable th2 = (Throwable) zza.get(i);
                if (th2 instanceof zzbj) {
                    arrayList.add(Integer.valueOf(((zzbj) th2).zza().zza()));
                }
            }
        }
        ((com.google.mlkit.vision.digitalink.downloading.zza) this.zzi).zze((DigitalInkRecognitionModel) remoteModel, downloadConditions, zzrVar == null ? zzagb.zzd() : zzagb.zzf(zzrVar.zzg()), arrayList, zzagyVar.zza(TimeUnit.MILLISECONDS));
        if (zzrVar != null) {
            Log.i("MddModelManager", "download: returned with status ".concat(String.valueOf(zzrVar.zzg())));
            zzq zzqVar = zzq.UNSPECIFIED;
            int ordinal = zzrVar.zzg().ordinal();
            if (ordinal == 0 || ordinal == 2 || ordinal == 3) {
                throw new IllegalStateException("Download failed with status: " + zzrVar.zzg().zza());
            }
        }
        if (exception == null) {
            return Tasks.forResult(null);
        }
        Log.i("MddModelManager", "download: failed with exception: ".concat(String.valueOf(exception.getLocalizedMessage())));
        throw exception;
    }

    public final /* synthetic */ Task zzg(RemoteModel remoteModel, Void r2) throws Exception {
        zzei zzeiVar = this.zzd;
        zzbr zzf = zzbs.zzf();
        zzf.zza(DigitalInkRecognitionFileDependencyManager.zzd((DigitalInkRecognitionModel) remoteModel));
        return zzbrw.zza(zzeiVar.zzc(zzf.zzd()));
    }

    public final /* synthetic */ zzasi zzh(String str, Boolean bool) throws Exception {
        zzei zzeiVar = this.zzd;
        zzfy zze = zzfz.zze();
        zze.zza(str);
        return zzeiVar.zzf(zze.zzc());
    }

    public final /* synthetic */ zzasi zzi(RemoteModel remoteModel, zzagy zzagyVar, Boolean bool) throws Exception {
        com.google.mlkit.vision.digitalink.downloading.zza zzaVar = (com.google.mlkit.vision.digitalink.downloading.zza) this.zzi;
        zzaVar.zzc((DigitalInkRecognitionModel) remoteModel, zzagb.zze(bool), zzagyVar.zza(TimeUnit.MILLISECONDS));
        if (bool.booleanValue()) {
            Log.i("MddModelManager", "deleteDownloadedModel()->removeFileGroup() succeeded, running maintenance()");
        } else {
            Log.e("MddModelManager", "deleteDownloadedModel()->removeFileGroup() failed");
        }
        return this.zzd.zze();
    }

    public final /* synthetic */ zzasi zzj(String str, Void r3) throws Exception {
        zzei zzeiVar = this.zzd;
        zzs zza = zzt.zza();
        zza.zza(this.zzh.zza(str));
        return zzeiVar.zza(zza.zzb());
    }

    public final /* synthetic */ zzasi zzk(RemoteModel remoteModel, Boolean bool) throws Exception {
        zzei zzeiVar = this.zzd;
        zzbr zzf = zzbs.zzf();
        zzf.zza(DigitalInkRecognitionFileDependencyManager.zzd((DigitalInkRecognitionModel) remoteModel));
        return zzeiVar.zzc(zzf.zzd());
    }

    public final /* synthetic */ zzasi zzl(Boolean bool) throws Exception {
        zzei zzeiVar = this.zzd;
        zzbt zzh = zzbu.zzh();
        zzh.zzb(true);
        return zzeiVar.zzd(zzh.zzf());
    }

    public final /* synthetic */ zzasi zzm(Boolean bool) throws Exception {
        Log.i("MddModelManager", "modelRegister initialized: ".concat(String.valueOf(bool)));
        return bool.booleanValue() ? zzarx.zzb(zzaim.zzb(this.zzh.zzb(), new zzaft() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpz
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaft
            public final Object zza(Object obj) {
                return zzbqt.this.zzo((String) obj);
            }
        })).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbqa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Log.i("MddModelManager", "registerFileGroups(): Done.");
                return Boolean.TRUE;
            }
        }, zzasq.zzb()) : zzarx.zzh(Boolean.FALSE);
    }

    public final /* synthetic */ zzasi zzn(RemoteModel remoteModel, Boolean bool) throws Exception {
        zzei zzeiVar = this.zzd;
        zzbr zzf = zzbs.zzf();
        zzf.zza(DigitalInkRecognitionFileDependencyManager.zzd((DigitalInkRecognitionModel) remoteModel));
        return zzeiVar.zzc(zzf.zzd());
    }

    public final /* synthetic */ zzasi zzo(String str) {
        zzei zzeiVar = this.zzd;
        zzs zza = zzt.zza();
        zza.zza(this.zzh.zza(str));
        return zzeiVar.zza(zza.zzb());
    }

    public final /* synthetic */ zzasi zzp(DownloadConditions downloadConditions, RemoteModel remoteModel, Boolean bool) throws Exception {
        zzei zzeiVar = this.zzd;
        zzbk zzl = zzbl.zzl();
        zzl.zza(zzv(downloadConditions));
        zzl.zzb(DigitalInkRecognitionFileDependencyManager.zzd((DigitalInkRecognitionModel) remoteModel));
        return zzeiVar.zzb(zzl.zzf());
    }

    public final /* synthetic */ Boolean zzq() throws Exception {
        return Boolean.valueOf(this.zzh.zzc());
    }

    public final /* synthetic */ void zzr(RemoteModel remoteModel, zzagy zzagyVar, Void r3) {
        com.google.mlkit.vision.digitalink.downloading.zza zzaVar = (com.google.mlkit.vision.digitalink.downloading.zza) this.zzi;
        zzaVar.zzd((DigitalInkRecognitionModel) remoteModel, zzagyVar.zza(TimeUnit.MILLISECONDS));
        Log.i("MddModelManager", "deleteDownloadedModel()->maintenance() completed");
    }
}
