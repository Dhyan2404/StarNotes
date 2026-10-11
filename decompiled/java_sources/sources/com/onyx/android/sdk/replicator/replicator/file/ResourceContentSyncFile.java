package com.onyx.android.sdk.replicator.replicator.file;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.common.BaseSyncFile;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/file/ResourceContentSyncFile;", "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;", "dataReplicator", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "filePrefix", "", "makeSyncDataBean", "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nResourceContentSyncFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceContentSyncFile.kt\ncom/onyx/android/sdk/replicator/replicator/file/ResourceContentSyncFile\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1549#2:56\n1620#2,3:57\n*S KotlinDebug\n*F\n+ 1 ResourceContentSyncFile.kt\ncom/onyx/android/sdk/replicator/replicator/file/ResourceContentSyncFile\n*L\n27#1:56\n27#1:57,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ResourceContentSyncFile extends BaseSyncFile {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceContentSyncFile(@NotNull DataReplicator dataReplicator) {
        super(dataReplicator);
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public String filePrefix() {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append("resource");
        sb.append(str);
        sb.append("content");
        sb.append(str);
        return sb.toString();
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public List<SyncDataBean> makeSyncDataBean() {
        int collectionSizeOrDefault;
        Set set;
        ArrayList arrayList = new ArrayList();
        Set<String> keySet = getCloudSummaryMap().keySet();
        Collection<File> listFiles = Paths.INSTANCE.listFiles(ResourcePaths.INSTANCE.appDocResourceContentDir(getDocumentId()), false);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listFiles, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = listFiles.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((File) it2.next()).getName());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        CollectionKt.diff(keySet, set, linkedHashSet, linkedHashSet2);
        Iterator it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            String str = (String) it3.next();
            ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
            String documentId = getDocumentId();
            Intrinsics.checkNotNull(str);
            String obj = resourcePaths.appDocResourceContentFilePath(documentId, str).toAbsolutePath().toString();
            OssPaths ossPaths = OssPaths.INSTANCE;
            arrayList.add(createSyncDataBean(str, 16, obj, ossPaths.ossPathString(ossPaths.resourceContentOssFileKey(getSyncUserId(), getDocumentId(), str)), 1));
        }
        Iterator it4 = linkedHashSet2.iterator();
        while (it4.hasNext()) {
            String str2 = (String) it4.next();
            ResourcePaths resourcePaths2 = ResourcePaths.INSTANCE;
            String documentId2 = getDocumentId();
            Intrinsics.checkNotNull(str2);
            String obj2 = resourcePaths2.appDocResourceContentFilePath(documentId2, str2).toAbsolutePath().toString();
            OssPaths ossPaths2 = OssPaths.INSTANCE;
            arrayList.add(createSyncDataBean(str2, 16, obj2, ossPaths2.ossPathString(ossPaths2.resourceContentOssFileKey(getSyncUserId(), getDocumentId(), str2)), 2));
        }
        return arrayList;
    }
}
