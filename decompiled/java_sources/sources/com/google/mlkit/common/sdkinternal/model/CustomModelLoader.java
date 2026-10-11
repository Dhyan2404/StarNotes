package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_common.zzsh;
import com.google.android.gms.internal.mlkit_common.zzss;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.CustomRemoteModel;
import com.google.mlkit.common.model.LocalModel;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.Constants;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

@KeepForSdk
/* loaded from: classes6.dex */
public class CustomModelLoader {

    /* renamed from: h */
    public static final GmsLogger f36577h = new GmsLogger("CustomModelLoader", "");

    /* renamed from: i */
    @GuardedBy("CustomModelLoader.class")
    public static final Map f36578i = new HashMap();

    /* renamed from: a */
    public final MlKitContext f36579a;

    /* renamed from: b */
    @Nullable
    public final LocalModel f36580b;

    /* renamed from: c */
    @Nullable
    public final CustomRemoteModel f36581c;

    /* renamed from: d */
    @Nullable
    public final RemoteModelDownloadManager f36582d;

    /* renamed from: e */
    @Nullable
    public final RemoteModelFileManager f36583e;

    /* renamed from: f */
    public final zzsh f36584f;

    /* renamed from: g */
    public boolean f36585g;

    @KeepForSdk
    /* loaded from: classes6.dex */
    public interface CustomModelLoaderHelper {
        @KeepForSdk
        void logLoad() throws MlKitException;

        @KeepForSdk
        boolean tryLoad(@NonNull LocalModel localModel) throws MlKitException;
    }

    public CustomModelLoader(@NonNull MlKitContext mlKitContext, @Nullable LocalModel localModel, @Nullable CustomRemoteModel customRemoteModel) {
        if (customRemoteModel != null) {
            RemoteModelFileManager remoteModelFileManager = new RemoteModelFileManager(mlKitContext, customRemoteModel, null, new ModelFileHelper(mlKitContext), new com.google.mlkit.common.internal.model.zza(mlKitContext, customRemoteModel.getUniqueModelNameForPersist()));
            this.f36583e = remoteModelFileManager;
            this.f36582d = RemoteModelDownloadManager.getInstance(mlKitContext, customRemoteModel, new ModelFileHelper(mlKitContext), remoteModelFileManager, (ModelInfoRetrieverInterop) mlKitContext.get(ModelInfoRetrieverInterop.class));
            this.f36585g = true;
        } else {
            this.f36583e = null;
            this.f36582d = null;
        }
        this.f36579a = mlKitContext;
        this.f36580b = localModel;
        this.f36581c = customRemoteModel;
        this.f36584f = zzss.zzb("common");
    }

    @WorkerThread
    /* renamed from: c */
    public static final LocalModel m28541c(File file) {
        if (file.isDirectory()) {
            LocalModel.Builder builder = new LocalModel.Builder();
            builder.setAbsoluteManifestFilePath(new File(file.getAbsolutePath(), Constants.AUTOML_IMAGE_LABELING_MANIFEST_JSON_FILE_NAME).toString());
            return builder.build();
        }
        LocalModel.Builder builder2 = new LocalModel.Builder();
        builder2.setAbsoluteFilePath(file.getAbsolutePath());
        return builder2.build();
    }

    @NonNull
    @KeepForSdk
    public static synchronized CustomModelLoader getInstance(@NonNull MlKitContext mlKitContext, @Nullable LocalModel localModel, @Nullable CustomRemoteModel customRemoteModel) {
        CustomModelLoader customModelLoader;
        synchronized (CustomModelLoader.class) {
            String localModel2 = customRemoteModel == null ? ((LocalModel) Preconditions.checkNotNull(localModel)).toString() : customRemoteModel.getUniqueModelNameForPersist();
            Map map = f36578i;
            if (!map.containsKey(localModel2)) {
                map.put(localModel2, new CustomModelLoader(mlKitContext, localModel, customRemoteModel));
            }
            customModelLoader = (CustomModelLoader) map.get(localModel2);
        }
        return customModelLoader;
    }

    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final File m28542a() throws MlKitException {
        String zzb = ((RemoteModelFileManager) Preconditions.checkNotNull(this.f36583e)).zzb();
        if (zzb == null) {
            f36577h.m22157d("CustomModelLoader", "No existing model file");
            return null;
        }
        File file = new File(zzb);
        File[] listFiles = file.listFiles();
        return ((File[]) Preconditions.checkNotNull(listFiles)).length == 1 ? listFiles[0] : file;
    }

    @WorkerThread
    /* renamed from: b */
    public final void m28543b() throws MlKitException {
        ((RemoteModelDownloadManager) Preconditions.checkNotNull(this.f36582d)).removeOrCancelDownload();
    }

    @VisibleForTesting
    @Nullable
    @KeepForSdk
    @WorkerThread
    public synchronized LocalModel createLocalModelByLatestExistingModel() throws MlKitException {
        f36577h.m22157d("CustomModelLoader", "Try to get the latest existing model file.");
        File m28542a = m28542a();
        if (m28542a == null) {
            return null;
        }
        return m28541c(m28542a);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0098 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009a A[Catch: all -> 0x00a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0022, B:9:0x002a, B:15:0x009a, B:19:0x002e, B:21:0x0045, B:24:0x004e, B:25:0x0067, B:27:0x006f, B:28:0x008b), top: B:2:0x0001 }] */
    @androidx.annotation.VisibleForTesting
    @androidx.annotation.Nullable
    @com.google.android.gms.common.annotation.KeepForSdk
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.google.mlkit.common.model.LocalModel createLocalModelByNewlyDownloadedModel() throws com.google.mlkit.common.MlKitException {
        /*
            r7 = this;
            monitor-enter(r7)
            com.google.android.gms.common.internal.GmsLogger r0 = com.google.mlkit.common.sdkinternal.model.CustomModelLoader.f36577h     // Catch: java.lang.Throwable -> La0
            java.lang.String r1 = "CustomModelLoader"
            java.lang.String r2 = "Try to get newly downloaded model file."
            r0.m22157d(r1, r2)     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager r1 = r7.f36582d     // Catch: java.lang.Throwable -> La0
            java.lang.Object r1 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r1)     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager r1 = (com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager) r1     // Catch: java.lang.Throwable -> La0
            java.lang.Long r1 = r1.getDownloadingId()     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager r2 = r7.f36582d     // Catch: java.lang.Throwable -> La0
            java.lang.String r2 = r2.getDownloadingModelHash()     // Catch: java.lang.Throwable -> La0
            r3 = 0
            if (r1 == 0) goto L8b
            if (r2 != 0) goto L22
            goto L8b
        L22:
            com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager r4 = r7.f36582d     // Catch: java.lang.Throwable -> La0
            java.lang.Integer r4 = r4.getDownloadingModelStatusCode()     // Catch: java.lang.Throwable -> La0
            if (r4 != 0) goto L2e
            r7.m28543b()     // Catch: java.lang.Throwable -> La0
            goto L95
        L2e:
            java.lang.String r5 = "Download Status code: "
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> La0
            java.lang.String r5 = r5.concat(r6)     // Catch: java.lang.Throwable -> La0
            java.lang.String r6 = "CustomModelLoader"
            r0.m22157d(r6, r5)     // Catch: java.lang.Throwable -> La0
            int r5 = r4.intValue()     // Catch: java.lang.Throwable -> La0
            r6 = 8
            if (r5 != r6) goto L67
            com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager r1 = r7.f36582d     // Catch: java.lang.Throwable -> La0
            java.io.File r1 = r1.zzi(r2)     // Catch: java.lang.Throwable -> La0
            if (r1 != 0) goto L4e
            goto L95
        L4e:
            java.lang.String r4 = r1.getParent()     // Catch: java.lang.Throwable -> La0
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> La0
            java.lang.String r5 = "Moved the downloaded model to private folder successfully: "
            java.lang.String r6 = "CustomModelLoader"
            java.lang.String r4 = r5.concat(r4)     // Catch: java.lang.Throwable -> La0
            r0.m22157d(r6, r4)     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager r0 = r7.f36582d     // Catch: java.lang.Throwable -> La0
            r0.updateLatestModelHashAndType(r2)     // Catch: java.lang.Throwable -> La0
            goto L96
        L67:
            int r0 = r4.intValue()     // Catch: java.lang.Throwable -> La0
            r2 = 16
            if (r0 != r2) goto L95
            com.google.android.gms.internal.mlkit_common.zzsh r0 = r7.f36584f     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.model.CustomRemoteModel r2 = r7.f36581c     // Catch: java.lang.Throwable -> La0
            com.google.android.gms.internal.mlkit_common.zzry r4 = com.google.android.gms.internal.mlkit_common.zzsk.zzg()     // Catch: java.lang.Throwable -> La0
            java.lang.Object r2 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r2)     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.model.RemoteModel r2 = (com.google.mlkit.common.model.RemoteModel) r2     // Catch: java.lang.Throwable -> La0
            com.google.mlkit.common.sdkinternal.model.RemoteModelDownloadManager r5 = r7.f36582d     // Catch: java.lang.Throwable -> La0
            int r1 = r5.getFailureReason(r1)     // Catch: java.lang.Throwable -> La0
            r5 = 0
            r0.zze(r4, r2, r5, r1)     // Catch: java.lang.Throwable -> La0
            r7.m28543b()     // Catch: java.lang.Throwable -> La0
            goto L95
        L8b:
            java.lang.String r1 = "CustomModelLoader"
            java.lang.String r2 = "No new model is downloading."
            r0.m22157d(r1, r2)     // Catch: java.lang.Throwable -> La0
            r7.m28543b()     // Catch: java.lang.Throwable -> La0
        L95:
            r1 = r3
        L96:
            if (r1 != 0) goto L9a
            monitor-exit(r7)
            return r3
        L9a:
            com.google.mlkit.common.model.LocalModel r0 = m28541c(r1)     // Catch: java.lang.Throwable -> La0
            monitor-exit(r7)
            return r0
        La0:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.CustomModelLoader.createLocalModelByNewlyDownloadedModel():com.google.mlkit.common.model.LocalModel");
    }

    @KeepForSdk
    @VisibleForTesting
    @WorkerThread
    public void deleteLatestExistingModel() throws MlKitException {
        File m28542a = m28542a();
        if (m28542a != null) {
            ((RemoteModelFileManager) Preconditions.checkNotNull(this.f36583e)).zzc(m28542a);
            SharedPrefManager.getInstance(this.f36579a).clearLatestModelHash((RemoteModel) Preconditions.checkNotNull(this.f36581c));
        }
    }

    @KeepForSdk
    @VisibleForTesting
    @WorkerThread
    public void deleteOldModels(@NonNull LocalModel localModel) throws MlKitException {
        File parentFile = new File((String) Preconditions.checkNotNull(localModel.getAbsoluteFilePath())).getParentFile();
        if (!((RemoteModelFileManager) Preconditions.checkNotNull(this.f36583e)).zzd((File) Preconditions.checkNotNull(parentFile))) {
            f36577h.m22159e("CustomModelLoader", "Failed to delete old models");
        } else {
            f36577h.m22157d("CustomModelLoader", "All old models are deleted.");
            this.f36583e.zza(parentFile);
        }
    }

    @KeepForSdk
    @WorkerThread
    public synchronized void load(@NonNull CustomModelLoaderHelper customModelLoaderHelper) throws MlKitException {
        LocalModel localModel = this.f36580b;
        if (localModel == null) {
            localModel = createLocalModelByNewlyDownloadedModel();
        }
        if (localModel == null) {
            localModel = createLocalModelByLatestExistingModel();
        }
        if (localModel == null) {
            throw new MlKitException("Model is not available.", 14);
        }
        while (!customModelLoaderHelper.tryLoad(localModel)) {
            if (this.f36581c != null) {
                deleteLatestExistingModel();
                localModel = createLocalModelByLatestExistingModel();
            } else {
                localModel = null;
            }
            if (localModel == null) {
                customModelLoaderHelper.logLoad();
                return;
            }
        }
        if (this.f36581c != null && this.f36585g) {
            deleteOldModels((LocalModel) Preconditions.checkNotNull(localModel));
            this.f36585g = false;
        }
        customModelLoaderHelper.logLoad();
    }
}
