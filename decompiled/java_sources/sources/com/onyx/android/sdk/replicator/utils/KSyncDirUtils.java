package com.onyx.android.sdk.replicator.utils;

import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/utils/KSyncDirUtils;", "", "()V", "getDocFileSize", "", CouchFieldKey.KEY_DOCUMENT_ID, "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nKSyncDirUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KSyncDirUtils.kt\ncom/onyx/android/sdk/replicator/utils/KSyncDirUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,20:1\n18#2:21\n26#3:22\n3792#4:23\n4307#4,2:24\n1#5:26\n*S KotlinDebug\n*F\n+ 1 KSyncDirUtils.kt\ncom/onyx/android/sdk/replicator/utils/KSyncDirUtils\n*L\n13#1:21\n13#1:22\n14#1:23\n14#1:24,2\n*E\n"})
/* loaded from: classes8.dex */
public final class KSyncDirUtils {

    @NotNull
    public static final KSyncDirUtils INSTANCE = new KSyncDirUtils();

    public final long getDocFileSize(@NotNull String documentUniqueId) {
        Intrinsics.checkNotNullParameter(documentUniqueId, "documentUniqueId");
        File file = new File(com.onyx.android.sdk.data.common.sync.SyncConstant.INSTANCE.appDocPath(documentUniqueId));
        try {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                listFiles = new File[0];
            }
            ArrayList<File> arrayList = new ArrayList();
            for (File file2 : listFiles) {
                if (!Intrinsics.areEqual(file2.getName(), "stash")) {
                    arrayList.add(file2);
                }
            }
            long j = 0;
            for (File file3 : arrayList) {
                FileUtils fileUtils = FileUtils.INSTANCE;
                Intrinsics.checkNotNull(file3);
                j += fileUtils.getFileSize(file3);
            }
            return j;
        } catch (Exception unused) {
            return FileUtils.INSTANCE.getFileSize(file);
        }
    }
}
