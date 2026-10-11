package com.google.mlkit.common.sdkinternal.model;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.model.RemoteModel;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;
import java.io.File;

@KeepForSdk
/* loaded from: classes6.dex */
public class RemoteModelFileManager {

    /* renamed from: h */
    public static final GmsLogger f36614h = new GmsLogger("RemoteModelFileManager", "");

    /* renamed from: a */
    public final MlKitContext f36615a;

    /* renamed from: b */
    public final String f36616b;

    /* renamed from: c */
    public final ModelType f36617c;

    /* renamed from: d */
    @Nullable
    public final ModelValidator f36618d;

    /* renamed from: e */
    public final RemoteModelFileMover f36619e;

    /* renamed from: f */
    public final SharedPrefManager f36620f;

    /* renamed from: g */
    public final ModelFileHelper f36621g;

    @SuppressLint({"FirebaseLambdaLast"})
    public RemoteModelFileManager(@NonNull MlKitContext mlKitContext, @NonNull RemoteModel remoteModel, @Nullable ModelValidator modelValidator, @NonNull ModelFileHelper modelFileHelper, @NonNull RemoteModelFileMover remoteModelFileMover) {
        this.f36615a = mlKitContext;
        ModelType modelType = remoteModel.getModelType();
        this.f36617c = modelType;
        this.f36616b = modelType == ModelType.TRANSLATE ? remoteModel.getModelNameForBackend() : remoteModel.getUniqueModelNameForPersist();
        this.f36618d = modelValidator;
        this.f36620f = SharedPrefManager.getInstance(mlKitContext);
        this.f36621g = modelFileHelper;
        this.f36619e = remoteModelFileMover;
    }

    @NonNull
    @KeepForSdk
    public File getModelDirUnsafe(boolean z) {
        return this.f36621g.getModelDirUnsafe(this.f36616b, this.f36617c, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0098, code lost:
    
        com.google.mlkit.common.sdkinternal.model.RemoteModelFileManager.f36614h.m22157d("RemoteModelFileManager", "Hash does not match with expected: ".concat(java.lang.String.valueOf(r12)));
        com.google.android.gms.internal.mlkit_common.zzss.zzb("common").zzf(com.google.android.gms.internal.mlkit_common.zzsk.zzg(), r13, com.google.android.gms.internal.mlkit_common.zzmu.MODEL_HASH_MISMATCH, true, r10.f36617c, com.google.android.gms.internal.mlkit_common.zzna.SUCCEEDED);
        r11 = new com.google.mlkit.common.MlKitException("Hash does not match with expected", 102);
     */
    @androidx.annotation.Nullable
    @com.google.android.gms.common.annotation.KeepForSdk
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.io.File moveModelToPrivateFolder(@androidx.annotation.NonNull android.os.ParcelFileDescriptor r11, @androidx.annotation.NonNull java.lang.String r12, @androidx.annotation.NonNull com.google.mlkit.common.model.RemoteModel r13) throws com.google.mlkit.common.MlKitException {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.common.sdkinternal.model.RemoteModelFileManager.moveModelToPrivateFolder(android.os.ParcelFileDescriptor, java.lang.String, com.google.mlkit.common.model.RemoteModel):java.io.File");
    }

    @NonNull
    @WorkerThread
    public final synchronized File zza(@NonNull File file) throws MlKitException {
        File file2 = new File(String.valueOf(this.f36621g.getModelDir(this.f36616b, this.f36617c).getAbsolutePath()).concat("/0"));
        if (file2.exists()) {
            return file;
        }
        return file.renameTo(file2) ? file2 : file;
    }

    @Nullable
    @WorkerThread
    public final synchronized String zzb() throws MlKitException {
        return this.f36621g.zzb(this.f36616b, this.f36617c);
    }

    @WorkerThread
    public final synchronized void zzc(@NonNull File file) {
        File[] listFiles;
        File modelDirUnsafe = getModelDirUnsafe(false);
        if (modelDirUnsafe.exists() && (listFiles = modelDirUnsafe.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (file2.equals(file)) {
                    this.f36621g.deleteRecursively(file);
                    return;
                }
            }
        }
    }

    @WorkerThread
    public final synchronized boolean zzd(@NonNull File file) throws MlKitException {
        File modelDir = this.f36621g.getModelDir(this.f36616b, this.f36617c);
        if (!modelDir.exists()) {
            return false;
        }
        File[] listFiles = modelDir.listFiles();
        boolean z = true;
        if (listFiles == null) {
            return true;
        }
        for (File file2 : listFiles) {
            if (!file2.equals(file) && !this.f36621g.deleteRecursively(file2)) {
                z = false;
            }
        }
        return z;
    }
}
