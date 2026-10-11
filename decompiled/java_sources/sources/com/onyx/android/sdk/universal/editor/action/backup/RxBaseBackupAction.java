package com.onyx.android.sdk.universal.editor.action.backup;

import android.os.Environment;
import com.blankj.utilcode.util.LogUtils;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.StatFsUtils;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.data.common.exception.SpaceNotEnoughException;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.p042ui.data.BackupConstant;
import com.onyx.android.sdk.universal.p042ui.data.BackupFilePaths;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Scheduler;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bJ\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Scheduler;", "getBackupIoObserveOn", "getBackupProviderObserveOn", "getNoteObserveOn", "", "checkBackupDirFreeSpace", "checkInternalFreeSpace", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", "baseCloudStorageProvider", "", "getDriveLocalBackupDir", "cleanExpiredDriverLocalFiles", "Ljava/io/File;", "file", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "e", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getDocManagerBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "docManagerBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRxBaseBackupAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxBaseBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1#2:96\n3792#3:97\n4307#3,2:98\n1855#4,2:100\n*S KotlinDebug\n*F\n+ 1 RxBaseBackupAction.kt\ncom/onyx/android/sdk/universal/editor/action/backup/RxBaseBackupAction\n*L\n69#1:97\n69#1:98,2\n74#1:100,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class RxBaseBackupAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle docManagerBundle;

    public RxBaseBackupAction(@NotNull EditorBundle docManagerBundle) {
        Intrinsics.checkNotNullParameter(docManagerBundle, "docManagerBundle");
        this.docManagerBundle = docManagerBundle;
    }

    public final void checkBackupDirFreeSpace() {
        m37344l(new File(BackupFilePaths.INSTANCE.getBackupDirPath()));
    }

    public final void checkInternalFreeSpace() {
        File externalCacheDir = ResManager.INSTANCE.getAppContext().getExternalCacheDir();
        if (externalCacheDir != null) {
            m37344l(externalCacheDir);
        }
    }

    public final void cleanExpiredDriverLocalFiles(@NotNull BaseCloudStorageProvider baseCloudStorageProvider) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(baseCloudStorageProvider, "baseCloudStorageProvider");
        File file = new File(getDriveLocalBackupDir(baseCloudStorageProvider));
        if (FileUtils.INSTANCE.fileExist(file)) {
            long currentTimeMillis = System.currentTimeMillis();
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                arrayList = new ArrayList();
                for (File file2 : listFiles) {
                    if (currentTimeMillis - file2.lastModified() >= 86400000) {
                        arrayList.add(file2);
                    }
                }
            } else {
                arrayList = null;
            }
            if (CollectionKt.isNonBlank(arrayList)) {
                Iterator<T> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    onyx.org.apache.commons.io.FileUtils.deleteQuietly((File) it2.next());
                }
            }
        }
    }

    @NotNull
    public final Scheduler getBackupIoObserveOn() {
        return EditorBundleKt.ioSequenceScheduler(this.docManagerBundle);
    }

    @NotNull
    public final Scheduler getBackupProviderObserveOn() {
        return EditorBundleKt.coreScheduler(this.docManagerBundle);
    }

    @NotNull
    public final EditorBundle getDocManagerBundle() {
        return this.docManagerBundle;
    }

    @NotNull
    public final String getDriveLocalBackupDir(@NotNull BaseCloudStorageProvider baseCloudStorageProvider) {
        Intrinsics.checkNotNullParameter(baseCloudStorageProvider, "baseCloudStorageProvider");
        Provider providerType = baseCloudStorageProvider.getProviderType();
        String accountId = baseCloudStorageProvider.getAccountId();
        providerType.ensureCreateRootPath();
        StringBuilder sb = new StringBuilder();
        sb.append(providerType.getProviderRootPath());
        String str = File.separator;
        sb.append(str);
        sb.append(accountId);
        sb.append(str);
        sb.append(BackupConstant.BACKUP_FOLDER_NAME);
        return sb.toString();
    }

    @NotNull
    public final Scheduler getNoteObserveOn() {
        return EditorBundleKt.noteScheduler(this.docManagerBundle);
    }

    /* renamed from: l */
    public final void m37344l(File file) {
        if (file.exists() && Intrinsics.areEqual(Environment.getExternalStorageState(file), "mounted")) {
            StatFsUtils statFsUtils = StatFsUtils.INSTANCE;
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            long availableSize = statFsUtils.getAvailableSize(absolutePath);
            if (availableSize <= 0) {
                return;
            }
            if (availableSize >= NoteConstant.EXPORT_LIMIT_STORAGE_SIZE) {
                return;
            }
            LogUtils.file(getClass().getSimpleName(), "checkFreeSpace() SpaceNotEnoughException path:" + file.getPath() + ";exists:" + file.exists() + ";freeSpace:" + availableSize + ";exportLimitStorageSize:" + NoteConstant.EXPORT_LIMIT_STORAGE_SIZE);
            throw new SpaceNotEnoughException();
        }
    }
}
