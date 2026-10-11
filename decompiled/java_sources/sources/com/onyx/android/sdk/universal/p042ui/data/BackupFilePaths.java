package com.onyx.android.sdk.universal.p042ui.data;

import android.os.Environment;
import androidx.core.content.ContextCompat;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.C8045R;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/ui/data/BackupFilePaths;", "", "()V", "cloudAllNoteBackupFilePath", "", "configBackupPath", "", "path", "getBackupDirPath", "getBackupPaths", "", "localAllNoteBackupFilePath", "localNoteBackupFilePath", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nBackupFilePaths.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupFilePaths.kt\ncom/onyx/android/sdk/universal/ui/data/BackupFilePaths\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n766#2:89\n857#2,2:90\n1549#2:92\n1620#2,3:93\n1549#2:96\n1620#2,3:97\n*S KotlinDebug\n*F\n+ 1 BackupFilePaths.kt\ncom/onyx/android/sdk/universal/ui/data/BackupFilePaths\n*L\n74#1:89\n74#1:90,2\n75#1:92\n75#1:93,3\n77#1:96\n77#1:97,3\n*E\n"})
/* loaded from: classes8.dex */
public final class BackupFilePaths {

    @NotNull
    public static final BackupFilePaths INSTANCE = new BackupFilePaths();

    @NotNull
    public final String cloudAllNoteBackupFilePath() {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HH_MM_SS().format(new Date());
        String string = ResManager.INSTANCE.getString(C8045R.string.backup_file_name);
        Path path = Paths.get(getBackupDirPath(), (String[]) Arrays.copyOf(new String[]{string + NameUtil.USCORE + format + CloudStorageConstants.YNOTE_TITLE_SUFFIX}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        com.onyx.android.sdk.base.extension.Paths.INSTANCE.createParentDirectoriesSafely(path);
        return path.toAbsolutePath().toString();
    }

    public final void configBackupPath(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        MMKVBackup.INSTANCE.getBackupPathOption().put(path);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
    
        if (r3 == false) goto L12;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getBackupDirPath() {
        /*
            r3 = this;
            com.onyx.android.sdk.data.common.sync.MMKVBackup r0 = com.onyx.android.sdk.data.common.sync.MMKVBackup.INSTANCE
            com.onyx.android.sdk.data.utils.StringOption r1 = r0.getBackupPathOption()
            java.lang.String r1 = r1.get()
            java.util.List r3 = r3.getBackupPaths()
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            boolean r3 = kotlin.collections.CollectionsKt.contains(r3, r1)
            r2 = 0
            if (r3 == 0) goto L25
            if (r1 == 0) goto L22
            boolean r3 = kotlin.text.StringsKt.isBlank(r1)
            if (r3 == 0) goto L20
            goto L22
        L20:
            r3 = r2
            goto L23
        L22:
            r3 = 1
        L23:
            if (r3 == 0) goto L32
        L25:
            com.onyx.android.sdk.universal.ui.data.BackupConstant r3 = com.onyx.android.sdk.universal.p042ui.data.BackupConstant.INSTANCE
            java.lang.String r1 = r3.getBACKUP_ABSOLUTE_PATH()
            com.onyx.android.sdk.data.utils.StringOption r3 = r0.getBackupPathOption()
            r3.put(r1)
        L32:
            java.lang.String[] r3 = new java.lang.String[r2]
            java.nio.file.Path r3 = java.nio.file.Paths.get(r1, r3)
            java.lang.String r0 = "get(path)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            com.onyx.android.sdk.base.extension.Paths r0 = com.onyx.android.sdk.base.extension.Paths.INSTANCE
            r0.createDirectoriesSafely(r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.p042ui.data.BackupFilePaths.getBackupDirPath():java.lang.String");
    }

    @NotNull
    public final List<String> getBackupPaths() {
        List filterNotNull;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        String replace$default;
        File[] externalFilesDirs = ContextCompat.getExternalFilesDirs(ResManager.INSTANCE.getAppContext(), Environment.DIRECTORY_DOCUMENTS);
        Intrinsics.checkNotNullExpressionValue(externalFilesDirs, "getExternalFilesDirs(...)");
        filterNotNull = ArraysKt___ArraysKt.filterNotNull(externalFilesDirs);
        ArrayList arrayList = new ArrayList();
        for (Object obj : filterNotNull) {
            if (Intrinsics.areEqual(Environment.getExternalStorageState((File) obj), "mounted")) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList<String> arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String absolutePath = ((File) it2.next()).getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            replace$default = StringsKt__StringsJVMKt.replace$default(absolutePath, "/Android/data/" + ResManager.INSTANCE.getAppContext().getPackageName() + "/files", "", false, 4, (Object) null);
            arrayList2.add(replace$default);
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        for (String str : arrayList2) {
            com.onyx.android.sdk.base.extension.Paths paths = com.onyx.android.sdk.base.extension.Paths.INSTANCE;
            Path path = Paths.get(str, new String[0]);
            Intrinsics.checkNotNullExpressionValue(path, "get(path)");
            arrayList3.add(paths.append(path, BackupConstant.BACKUP_RELATIVE_PATH).toAbsolutePath().toString());
        }
        return arrayList3;
    }

    @NotNull
    public final String localAllNoteBackupFilePath() {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HH_MM_SS().format(new Date());
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C8045R.string.backup_file_name);
        String string2 = resManager.getString(C8045R.string.manual_backup_file_name);
        Intrinsics.checkNotNull(string2);
        Path path = Paths.get(getBackupDirPath(), (String[]) Arrays.copyOf(new String[]{string2, string + NameUtil.USCORE + format + CloudStorageConstants.YNOTE_TITLE_SUFFIX}, 2));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        com.onyx.android.sdk.base.extension.Paths.INSTANCE.createParentDirectoriesSafely(path);
        return path.toAbsolutePath().toString();
    }

    @NotNull
    public final String localNoteBackupFilePath(@NotNull SyncNoteModel noteModel) {
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        FileUtils fileUtils = FileUtils.INSTANCE;
        Path path = Paths.get(getBackupDirPath(), (String[]) Arrays.copyOf(new String[]{fileUtils.getValidFileName(fileUtils.buildValidFatFilename(noteModel.getTitle()) + NameUtil.USCORE + DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HH_MM_SS().format(new Date()), CloudStorageConstants.YNOTE_TITLE_SUFFIX)}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        com.onyx.android.sdk.base.extension.Paths.INSTANCE.createParentDirectoriesSafely(path);
        return path.toAbsolutePath().toString();
    }
}
