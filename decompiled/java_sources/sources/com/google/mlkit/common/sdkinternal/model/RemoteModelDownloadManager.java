package com.google.mlkit.common.sdkinternal.model;

import android.app.DownloadManager;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.ParcelFileDescriptor;
import android.util.LongSparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzmu;
import com.google.android.gms.internal.mlkit_common.zzna;
import com.google.android.gms.internal.mlkit_common.zzsh;
import com.google.android.gms.internal.mlkit_common.zzsk;
import com.google.android.gms.internal.mlkit_common.zzss;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.DownloadConditions;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.CommonUtils;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.ModelInfo;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import com.sunia.HTREnginev2.tip;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;

@KeepForSdk
/* loaded from: classes6.dex */
public class RemoteModelDownloadManager {

    /* renamed from: m */
    public static final GmsLogger f36600m = new GmsLogger("ModelDownloadManager", "");

    /* renamed from: n */
    @GuardedBy("RemoteModelDownloadManager.class")
    public static final Map f36601n = new HashMap();

    /* renamed from: a */
    @GuardedBy("this")
    public final LongSparseArray f36602a = new LongSparseArray();

    /* renamed from: b */
    @GuardedBy("this")
    public final LongSparseArray f36603b = new LongSparseArray();

    /* renamed from: c */
    public final MlKitContext f36604c;

    /* renamed from: d */
    @Nullable
    public final DownloadManager f36605d;

    /* renamed from: e */
    public final RemoteModel f36606e;

    /* renamed from: f */
    public final ModelType f36607f;

    /* renamed from: g */
    public final zzsh f36608g;

    /* renamed from: h */
    public final SharedPrefManager f36609h;

    /* renamed from: i */
    public final ModelFileHelper f36610i;

    /* renamed from: j */
    @Nullable
    public final ModelInfoRetrieverInterop f36611j;

    /* renamed from: k */
    public final RemoteModelFileManager f36612k;

    /* renamed from: l */
    public DownloadConditions f36613l;

    @VisibleForTesting
    public RemoteModelDownloadManager(@NonNull MlKitContext mlKitContext, @NonNull RemoteModel remoteModel, @NonNull ModelFileHelper modelFileHelper, @NonNull RemoteModelFileManager remoteModelFileManager, @Nullable ModelInfoRetrieverInterop modelInfoRetrieverInterop, @NonNull zzsh zzshVar) {
        this.f36604c = mlKitContext;
        this.f36607f = remoteModel.getModelType();
        this.f36606e = remoteModel;
        DownloadManager downloadManager = (DownloadManager) mlKitContext.getApplicationContext().getSystemService("download");
        this.f36605d = downloadManager;
        this.f36608g = zzshVar;
        if (downloadManager == null) {
            f36600m.m22157d("ModelDownloadManager", "Download manager service is not available in the service.");
        }
        this.f36610i = modelFileHelper;
        this.f36609h = SharedPrefManager.getInstance(mlKitContext);
        this.f36611j = modelInfoRetrieverInterop;
        this.f36612k = remoteModelFileManager;
    }

    @NonNull
    @KeepForSdk
    public static synchronized RemoteModelDownloadManager getInstance(@NonNull MlKitContext mlKitContext, @NonNull RemoteModel remoteModel, @NonNull ModelFileHelper modelFileHelper, @NonNull RemoteModelFileManager remoteModelFileManager, @Nullable ModelInfoRetrieverInterop modelInfoRetrieverInterop) {
        RemoteModelDownloadManager remoteModelDownloadManager;
        synchronized (RemoteModelDownloadManager.class) {
            Map map = f36601n;
            if (!map.containsKey(remoteModel)) {
                map.put(remoteModel, new RemoteModelDownloadManager(mlKitContext, remoteModel, modelFileHelper, remoteModelFileManager, modelInfoRetrieverInterop, zzss.zzb("common")));
            }
            remoteModelDownloadManager = (RemoteModelDownloadManager) map.get(remoteModel);
        }
        return remoteModelDownloadManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ac, code lost:
    
        r1 = m28562n(r1, r13.f36613l);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b2, code lost:
    
        if (r1 == null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bc, code lost:
    
        return m28557i(r1.longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bd, code lost:
    
        com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager.f36600m.m22161i("ModelDownloadManager", "Didn't schedule download for the updated model");
     */
    @androidx.annotation.NonNull
    @com.google.android.gms.common.annotation.KeepForSdk
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.tasks.Task<java.lang.Void> ensureModelDownloaded() {
        /*
            r13 = this;
            com.google.android.gms.internal.mlkit_common.zzsh r0 = r13.f36608g
            com.google.android.gms.internal.mlkit_common.zzry r1 = com.google.android.gms.internal.mlkit_common.zzsk.zzg()
            com.google.mlkit.common.model.RemoteModel r2 = r13.f36606e
            com.google.android.gms.internal.mlkit_common.zzmu r3 = com.google.android.gms.internal.mlkit_common.zzmu.NO_ERROR
            r4 = 0
            com.google.mlkit.common.sdkinternal.ModelType r5 = com.google.mlkit.common.sdkinternal.ModelType.UNKNOWN
            com.google.android.gms.internal.mlkit_common.zzna r6 = com.google.android.gms.internal.mlkit_common.zzna.EXPLICITLY_REQUESTED
            r0.zzf(r1, r2, r3, r4, r5, r6)
            r0 = 0
            com.google.mlkit.common.sdkinternal.ModelInfo r1 = r13.m28556g()     // Catch: com.google.mlkit.common.MlKitException -> L19
            r2 = r0
            goto L1c
        L19:
            r1 = move-exception
            r2 = r1
            r1 = r0
        L1c:
            r3 = 13
            java.lang.Integer r4 = r13.getDownloadingModelStatusCode()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.Long r5 = r13.getDownloadingId()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            boolean r6 = r13.modelExistsLocally()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            if (r6 != 0) goto Laa
            if (r4 == 0) goto L38
            int r6 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r7 = 8
            if (r6 != r7) goto L38
            goto Laa
        L38:
            if (r4 == 0) goto L4e
            int r6 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r7 = 16
            if (r6 != r7) goto L4e
            com.google.mlkit.common.MlKitException r0 = r13.m28559k(r5)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r13.removeOrCancelDownload()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.Task r13 = com.google.android.gms.tasks.Tasks.forException(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r13
        L4e:
            if (r4 == 0) goto L8a
            int r6 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r7 = 4
            if (r6 == r7) goto L65
            int r6 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r7 = 2
            if (r6 == r7) goto L65
            int r4 = r4.intValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r6 = 1
            if (r4 != r6) goto L8a
        L65:
            if (r5 == 0) goto L8a
            java.lang.String r4 = r13.getDownloadingModelHash()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            if (r4 == 0) goto L8a
            com.google.android.gms.internal.mlkit_common.zzsh r6 = r13.f36608g     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.internal.mlkit_common.zzry r7 = com.google.android.gms.internal.mlkit_common.zzsk.zzg()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.mlkit.common.model.RemoteModel r8 = r13.f36606e     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.internal.mlkit_common.zzmu r9 = com.google.android.gms.internal.mlkit_common.zzmu.NO_ERROR     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r10 = 0
            com.google.mlkit.common.sdkinternal.ModelType r11 = r8.getModelType()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.internal.mlkit_common.zzna r12 = com.google.android.gms.internal.mlkit_common.zzna.DOWNLOADING     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            r6.zzf(r7, r8, r9, r10, r11, r12)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            long r0 = r5.longValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.Task r13 = r13.m28557i(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r13
        L8a:
            if (r1 != 0) goto L8d
            goto L93
        L8d:
            com.google.mlkit.common.model.DownloadConditions r0 = r13.f36613l     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.Long r0 = r13.m28562n(r1, r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
        L93:
            if (r0 != 0) goto La1
            com.google.mlkit.common.MlKitException r13 = new com.google.mlkit.common.MlKitException     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.String r0 = "Failed to schedule the download task"
            r13.<init>(r0, r3, r2)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.Task r13 = com.google.android.gms.tasks.Tasks.forException(r13)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r13
        La1:
            long r0 = r0.longValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.Task r13 = r13.m28557i(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r13
        Laa:
            if (r1 == 0) goto Lc6
            com.google.mlkit.common.model.DownloadConditions r2 = r13.f36613l     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.Long r1 = r13.m28562n(r1, r2)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            if (r1 == 0) goto Lbd
            long r0 = r1.longValue()     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            com.google.android.gms.tasks.Task r13 = r13.m28557i(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r13
        Lbd:
            com.google.android.gms.common.internal.GmsLogger r13 = com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager.f36600m     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            java.lang.String r1 = "ModelDownloadManager"
            java.lang.String r2 = "Didn't schedule download for the updated model"
            r13.m22161i(r1, r2)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
        Lc6:
            com.google.android.gms.tasks.Task r13 = com.google.android.gms.tasks.Tasks.forResult(r0)     // Catch: com.google.mlkit.common.MlKitException -> Lcb
            return r13
        Lcb:
            r13 = move-exception
            com.google.mlkit.common.MlKitException r0 = new com.google.mlkit.common.MlKitException
            java.lang.String r1 = "Failed to ensure the model is downloaded."
            r0.<init>(r1, r3, r13)
            com.google.android.gms.tasks.Task r13 = com.google.android.gms.tasks.Tasks.forException(r0)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager.ensureModelDownloaded():com.google.android.gms.tasks.Task");
    }

    @Nullable
    @WorkerThread
    /* renamed from: g */
    public final synchronized ModelInfo m28556g() throws MlKitException {
        boolean z;
        boolean modelExistsLocally = modelExistsLocally();
        if (modelExistsLocally) {
            zzsh zzshVar = this.f36608g;
            RemoteModel remoteModel = this.f36606e;
            zzshVar.zzf(zzsk.zzg(), remoteModel, zzmu.NO_ERROR, false, remoteModel.getModelType(), zzna.LIVE);
        }
        ModelInfoRetrieverInterop modelInfoRetrieverInterop = this.f36611j;
        if (modelInfoRetrieverInterop == null) {
            throw new MlKitException("Please include com.google.mlkit:linkfirebase sdk as your dependency when you try to download from Firebase.", 14);
        }
        ModelInfo retrieveRemoteModelInfo = modelInfoRetrieverInterop.retrieveRemoteModelInfo(this.f36606e);
        if (retrieveRemoteModelInfo == null) {
            return null;
        }
        MlKitContext mlKitContext = this.f36604c;
        RemoteModel remoteModel2 = this.f36606e;
        String modelHash = retrieveRemoteModelInfo.getModelHash();
        SharedPrefManager sharedPrefManager = SharedPrefManager.getInstance(mlKitContext);
        boolean equals = modelHash.equals(sharedPrefManager.getIncompatibleModelHash(remoteModel2));
        boolean z2 = false;
        if (equals && CommonUtils.getAppVersion(mlKitContext.getApplicationContext()).equals(sharedPrefManager.getPreviousAppVersion())) {
            f36600m.m22159e("ModelDownloadManager", "The model is incompatible with TFLite and the app is not upgraded, do not download");
            z = false;
        } else {
            z = true;
        }
        if (!modelExistsLocally) {
            this.f36609h.clearLatestModelHash(this.f36606e);
        }
        boolean z3 = !retrieveRemoteModelInfo.getModelHash().equals(SharedPrefManager.getInstance(this.f36604c).getLatestModelHash(this.f36606e));
        if (!z) {
            z2 = z3;
        } else if (!modelExistsLocally || z3) {
            return retrieveRemoteModelInfo;
        }
        if (modelExistsLocally && (z2 ^ z)) {
            return null;
        }
        throw new MlKitException("The model " + this.f36606e.getModelName() + " is incompatible with TFLite runtime", 100);
    }

    @Nullable
    @KeepForSdk
    public synchronized ParcelFileDescriptor getDownloadedFile() {
        DownloadManager downloadManager = this.f36605d;
        Long downloadingId = getDownloadingId();
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (downloadManager == null || downloadingId == null) {
            return null;
        }
        try {
            parcelFileDescriptor = downloadManager.openDownloadedFile(downloadingId.longValue());
        } catch (FileNotFoundException unused) {
            f36600m.m22159e("ModelDownloadManager", "Downloaded file is not found");
        }
        return parcelFileDescriptor;
    }

    @Nullable
    @KeepForSdk
    public synchronized Long getDownloadingId() {
        return this.f36609h.getDownloadingModelId(this.f36606e);
    }

    @Nullable
    @KeepForSdk
    public synchronized String getDownloadingModelHash() {
        return this.f36609h.getDownloadingModelHash(this.f36606e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
    
        if (r1.intValue() != 16) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0047 A[Catch: all -> 0x003c, TRY_ENTER, TryCatch #1 {all -> 0x003c, blocks: (B:38:0x0027, B:40:0x002d, B:13:0x0047, B:15:0x004e, B:17:0x0055, B:19:0x005b, B:21:0x0063), top: B:37:0x0027, outer: #2 }] */
    @androidx.annotation.Nullable
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.lang.Integer getDownloadingModelStatusCode() {
        /*
            r8 = this;
            monitor-enter(r8)
            android.app.DownloadManager r0 = r8.f36605d     // Catch: java.lang.Throwable -> L7d
            java.lang.Long r1 = r8.getDownloadingId()     // Catch: java.lang.Throwable -> L7d
            r2 = 0
            if (r0 == 0) goto L7b
            if (r1 != 0) goto Le
            goto L7b
        Le:
            android.app.DownloadManager$Query r3 = new android.app.DownloadManager$Query     // Catch: java.lang.Throwable -> L7d
            r3.<init>()     // Catch: java.lang.Throwable -> L7d
            r4 = 1
            long[] r5 = new long[r4]     // Catch: java.lang.Throwable -> L7d
            long r6 = r1.longValue()     // Catch: java.lang.Throwable -> L7d
            r1 = 0
            r5[r1] = r6     // Catch: java.lang.Throwable -> L7d
            android.app.DownloadManager$Query r1 = r3.setFilterById(r5)     // Catch: java.lang.Throwable -> L7d
            android.database.Cursor r0 = r0.query(r1)     // Catch: java.lang.Throwable -> L7d
            if (r0 == 0) goto L3e
            boolean r1 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L3e
            java.lang.String r1 = "status"
            int r1 = r0.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L3c
            int r1 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L3c
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L3c
            goto L3f
        L3c:
            r1 = move-exception
            goto L72
        L3e:
            r1 = r2
        L3f:
            if (r1 != 0) goto L47
            if (r0 == 0) goto L7b
            r0.close()     // Catch: java.lang.Throwable -> L7d
            goto L7b
        L47:
            int r3 = r1.intValue()     // Catch: java.lang.Throwable -> L3c
            r5 = 2
            if (r3 == r5) goto L6c
            int r3 = r1.intValue()     // Catch: java.lang.Throwable -> L3c
            r5 = 4
            if (r3 == r5) goto L6c
            int r3 = r1.intValue()     // Catch: java.lang.Throwable -> L3c
            if (r3 == r4) goto L6c
            int r3 = r1.intValue()     // Catch: java.lang.Throwable -> L3c
            r4 = 8
            if (r3 == r4) goto L6c
            int r3 = r1.intValue()     // Catch: java.lang.Throwable -> L3c
            r4 = 16
            if (r3 == r4) goto L6c
            goto L6d
        L6c:
            r2 = r1
        L6d:
            r0.close()     // Catch: java.lang.Throwable -> L7d
            monitor-exit(r8)
            return r2
        L72:
            r0.close()     // Catch: java.lang.Throwable -> L76
            goto L7a
        L76:
            r0 = move-exception
            r1.addSuppressed(r0)     // Catch: java.lang.Throwable -> L7d
        L7a:
            throw r1     // Catch: java.lang.Throwable -> L7d
        L7b:
            monitor-exit(r8)
            return r2
        L7d:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager.getDownloadingModelStatusCode():java.lang.Integer");
    }

    @KeepForSdk
    public int getFailureReason(@NonNull Long l) {
        int columnIndex;
        DownloadManager downloadManager = this.f36605d;
        Cursor cursor = null;
        if (downloadManager != null && l != null) {
            cursor = downloadManager.query(new DownloadManager.Query().setFilterById(l.longValue()));
        }
        if (cursor == null || !cursor.moveToFirst() || (columnIndex = cursor.getColumnIndex("reason")) == -1) {
            return 0;
        }
        return cursor.getInt(columnIndex);
    }

    /* renamed from: i */
    public final Task m28557i(long j) {
        MlKitContext mlKitContext = this.f36604c;
        ContextCompat.registerReceiver(mlKitContext.getApplicationContext(), m28560l(j), new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"), null, MLTaskExecutor.getInstance().getHandler(), 2);
        return m28558j(j).getTask();
    }

    @KeepForSdk
    @WorkerThread
    public boolean isModelDownloadedAndValid() throws MlKitException {
        try {
            if (modelExistsLocally()) {
                return true;
            }
        } catch (MlKitException unused) {
            f36600m.m22157d("ModelDownloadManager", "Failed to check if the model exist locally.");
        }
        Long downloadingId = getDownloadingId();
        String downloadingModelHash = getDownloadingModelHash();
        if (downloadingId == null || downloadingModelHash == null) {
            f36600m.m22157d("ModelDownloadManager", "No new model is downloading.");
            removeOrCancelDownload();
            return false;
        }
        Integer downloadingModelStatusCode = getDownloadingModelStatusCode();
        f36600m.m22157d("ModelDownloadManager", "Download Status code: ".concat(String.valueOf(downloadingModelStatusCode)));
        if (downloadingModelStatusCode != null) {
            return Objects.equal(downloadingModelStatusCode, 8) && zzi(downloadingModelHash) != null;
        }
        removeOrCancelDownload();
        return false;
    }

    /* renamed from: j */
    public final synchronized TaskCompletionSource m28558j(long j) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.f36603b.get(j);
        if (taskCompletionSource != null) {
            return taskCompletionSource;
        }
        TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
        this.f36603b.put(j, taskCompletionSource2);
        return taskCompletionSource2;
    }

    /* renamed from: k */
    public final MlKitException m28559k(@Nullable Long l) {
        DownloadManager downloadManager = this.f36605d;
        Cursor cursor = null;
        if (downloadManager != null && l != null) {
            cursor = downloadManager.query(new DownloadManager.Query().setFilterById(l.longValue()));
        }
        int i = 13;
        String str = "Model downloading failed";
        if (cursor != null && cursor.moveToFirst()) {
            int i2 = cursor.getInt(cursor.getColumnIndex("reason"));
            if (i2 == 1006) {
                str = "Model downloading failed due to insufficient space on the device.";
                i = 101;
            } else {
                str = "Model downloading failed due to error code: " + i2 + " from Android DownloadManager";
            }
        }
        return new MlKitException(str, i);
    }

    /* renamed from: l */
    public final synchronized tip m28560l(long j) {
        tip tipVar = (tip) this.f36602a.get(j);
        if (tipVar != null) {
            return tipVar;
        }
        tip tipVar2 = new tip(this, j, m28558j(j), null);
        this.f36602a.put(j, tipVar2);
        return tipVar2;
    }

    @Nullable
    /* renamed from: m */
    public final synchronized Long m28561m(@NonNull DownloadManager.Request request, @NonNull ModelInfo modelInfo) {
        DownloadManager downloadManager = this.f36605d;
        if (downloadManager == null) {
            return null;
        }
        long enqueue = downloadManager.enqueue(request);
        f36600m.m22157d("ModelDownloadManager", "Schedule a new downloading task: " + enqueue);
        this.f36609h.setDownloadingModelInfo(enqueue, modelInfo);
        this.f36608g.zzf(zzsk.zzg(), this.f36606e, zzmu.NO_ERROR, false, modelInfo.getModelType(), zzna.SCHEDULED);
        return Long.valueOf(enqueue);
    }

    @KeepForSdk
    public boolean modelExistsLocally() throws MlKitException {
        return this.f36610i.modelExistsLocally(this.f36606e.getUniqueModelNameForPersist(), this.f36607f);
    }

    @Nullable
    @WorkerThread
    /* renamed from: n */
    public final synchronized Long m28562n(@NonNull ModelInfo modelInfo, @NonNull DownloadConditions downloadConditions) throws MlKitException {
        Preconditions.checkNotNull(downloadConditions, "DownloadConditions can not be null");
        String downloadingModelHash = this.f36609h.getDownloadingModelHash(this.f36606e);
        Integer downloadingModelStatusCode = getDownloadingModelStatusCode();
        if (downloadingModelHash != null && downloadingModelHash.equals(modelInfo.getModelHash()) && downloadingModelStatusCode != null) {
            Integer downloadingModelStatusCode2 = getDownloadingModelStatusCode();
            if (downloadingModelStatusCode2 == null || (downloadingModelStatusCode2.intValue() != 8 && downloadingModelStatusCode2.intValue() != 16)) {
                zzsh zzshVar = this.f36608g;
                RemoteModel remoteModel = this.f36606e;
                zzshVar.zzf(zzsk.zzg(), remoteModel, zzmu.NO_ERROR, false, remoteModel.getModelType(), zzna.DOWNLOADING);
            }
            f36600m.m22157d("ModelDownloadManager", "New model is already in downloading, do nothing.");
            return null;
        }
        GmsLogger gmsLogger = f36600m;
        gmsLogger.m22157d("ModelDownloadManager", "Need to download a new model.");
        removeOrCancelDownload();
        DownloadManager.Request request = new DownloadManager.Request(modelInfo.getModelUri());
        if (this.f36610i.modelExistsLocally(modelInfo.getModelNameForPersist(), modelInfo.getModelType())) {
            gmsLogger.m22157d("ModelDownloadManager", "Model update is enabled and have a previous downloaded model, use download condition");
            this.f36608g.zzf(zzsk.zzg(), this.f36606e, zzmu.NO_ERROR, false, modelInfo.getModelType(), zzna.UPDATE_AVAILABLE);
        }
        request.setRequiresCharging(downloadConditions.isChargingRequired());
        if (downloadConditions.isWifiRequired()) {
            request.setAllowedNetworkTypes(2);
        }
        return m28561m(request, modelInfo);
    }

    @KeepForSdk
    public synchronized void removeOrCancelDownload() throws MlKitException {
        DownloadManager downloadManager = this.f36605d;
        Long downloadingId = getDownloadingId();
        if (downloadManager != null && downloadingId != null) {
            f36600m.m22157d("ModelDownloadManager", "Cancel or remove existing downloading task: ".concat(downloadingId.toString()));
            if (this.f36605d.remove(downloadingId.longValue()) > 0 || getDownloadingModelStatusCode() == null) {
                ModelFileHelper modelFileHelper = this.f36610i;
                RemoteModel remoteModel = this.f36606e;
                modelFileHelper.deleteTempFilesInPrivateFolder(remoteModel.getUniqueModelNameForPersist(), remoteModel.getModelType());
                this.f36609h.clearDownloadingModelInfo(this.f36606e);
            }
        }
    }

    @KeepForSdk
    public void setDownloadConditions(@NonNull DownloadConditions downloadConditions) {
        Preconditions.checkNotNull(downloadConditions, "DownloadConditions can not be null");
        this.f36613l = downloadConditions;
    }

    @KeepForSdk
    public synchronized void updateLatestModelHashAndType(@NonNull String str) throws MlKitException {
        this.f36609h.setLatestModelHash(this.f36606e, str);
        removeOrCancelDownload();
    }

    @Nullable
    public final File zzi(@NonNull String str) throws MlKitException {
        GmsLogger gmsLogger = f36600m;
        gmsLogger.m22157d("ModelDownloadManager", "Model downloaded successfully");
        this.f36608g.zzf(zzsk.zzg(), this.f36606e, zzmu.NO_ERROR, true, this.f36607f, zzna.SUCCEEDED);
        ParcelFileDescriptor downloadedFile = getDownloadedFile();
        if (downloadedFile == null) {
            removeOrCancelDownload();
            return null;
        }
        gmsLogger.m22157d("ModelDownloadManager", "moving downloaded model from external storage to private folder.");
        try {
            return this.f36612k.moveModelToPrivateFolder(downloadedFile, str, this.f36606e);
        } finally {
            removeOrCancelDownload();
        }
    }
}
