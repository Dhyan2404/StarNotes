package com.google.mlkit.common.sdkinternal.model;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import java.io.File;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes6.dex */
public abstract class LegacyModelMigrator {

    /* renamed from: b */
    public final Context f36587b;

    @NonNull
    @KeepForSdk
    protected final ModelFileHelper modelFileHelper;

    /* renamed from: a */
    public final TaskCompletionSource f36586a = new TaskCompletionSource();

    /* renamed from: c */
    public final Executor f36588c = MLTaskExecutor.workerThreadExecutor();

    @KeepForSdk
    public LegacyModelMigrator(@NonNull Context context, @NonNull ModelFileHelper modelFileHelper) {
        this.f36587b = context;
        this.modelFileHelper = modelFileHelper;
    }

    @KeepForSdk
    public static void deleteIfEmpty(@NonNull File file) {
        File[] listFiles = file.listFiles();
        if ((listFiles == null || listFiles.length == 0) && !file.delete()) {
            Log.e("MlKitLegacyMigration", "Error deleting model directory ".concat(String.valueOf(file)));
        }
    }

    @KeepForSdk
    public static boolean isValidFirebasePersistenceKey(@NonNull String str) {
        String[] split = str.split("\\+", -1);
        if (split.length != 2) {
            return false;
        }
        try {
            Base64Utils.decodeUrlSafeNoPadding(split[0]);
            Base64Utils.decodeUrlSafeNoPadding(split[1]);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    @KeepForSdk
    @VisibleForTesting
    public static void migrateFile(@NonNull File file, @NonNull File file2) {
        if (file.exists()) {
            if (!file2.exists() && !file.renameTo(file2)) {
                Log.e("MlKitLegacyMigration", "Error moving model file " + String.valueOf(file) + " to " + String.valueOf(file2));
            }
            if (!file.exists() || file.delete()) {
                return;
            }
            Log.e("MlKitLegacyMigration", "Error deleting model file ".concat(String.valueOf(file)));
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m28544a() {
        File legacyRootDir = getLegacyRootDir();
        File[] listFiles = legacyRootDir.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                migrateAllModelDirs(file);
            }
            deleteIfEmpty(legacyRootDir);
        }
        this.f36586a.setResult(null);
    }

    @NonNull
    @KeepForSdk
    @VisibleForTesting
    public abstract String getLegacyModelDirName();

    @NonNull
    @KeepForSdk
    @VisibleForTesting
    public File getLegacyRootDir() {
        Context context = this.f36587b;
        return new File(context.getNoBackupFilesDir(), getLegacyModelDirName());
    }

    @NonNull
    @KeepForSdk
    public Task<Void> getMigrationTask() {
        return this.f36586a.getTask();
    }

    @KeepForSdk
    public abstract void migrateAllModelDirs(@NonNull File file);

    @KeepForSdk
    public void start() {
        this.f36588c.execute(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.model.zza
            @Override // java.lang.Runnable
            public final void run() {
                LegacyModelMigrator.this.m28544a();
            }
        });
    }
}
