package com.onyx.android.sdk.replicator.replicator.file;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.common.BaseSyncFile;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016JF\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\fH\u0002¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/file/TemplateJsonSyncFile;", "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;", "", "filePrefix", "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "makeSyncDataBean", "", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "cloudFileMap", "", "localFileNames", "", "cloudOnly", "localOnly", "", "a", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTemplateJsonSyncFile.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateJsonSyncFile.kt\ncom/onyx/android/sdk/replicator/replicator/file/TemplateJsonSyncFile\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1549#2:89\n1620#2,3:90\n*S KotlinDebug\n*F\n+ 1 TemplateJsonSyncFile.kt\ncom/onyx/android/sdk/replicator/replicator/file/TemplateJsonSyncFile\n*L\n30#1:89\n30#1:90,3\n*E\n"})
/* loaded from: classes8.dex */
public final class TemplateJsonSyncFile extends BaseSyncFile {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TemplateJsonSyncFile(@NotNull DataReplicator dataReplicator) {
        super(dataReplicator);
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
    }

    /* renamed from: a */
    public final void m35778a(Map<String, ? extends OSSObjectSummary> cloudFileMap, Set<String> localFileNames, Set<String> cloudOnly, Set<String> localOnly) {
        Path appDocTemplateJsonDir = TemplatePaths.INSTANCE.appDocTemplateJsonDir(getDocumentId());
        for (String str : localFileNames) {
            OSSObjectSummary oSSObjectSummary = cloudFileMap.get(str);
            if (oSSObjectSummary != null) {
                String obj = Paths.INSTANCE.append(appDocTemplateJsonDir, str).toAbsolutePath().toString();
                if (FileUtils.INSTANCE.fileExist(obj)) {
                    boolean z = false;
                    if (oSSObjectSummary.getLastModified() != null && oSSObjectSummary.getLastModified().getTime() > new File(obj).lastModified()) {
                        z = true;
                    }
                    if (z) {
                        cloudOnly.add(str);
                        localOnly.remove(str);
                    } else {
                        localOnly.add(str);
                        cloudOnly.remove(str);
                    }
                }
            }
        }
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public String filePrefix() {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append("template");
        sb.append(str);
        sb.append("json");
        sb.append(str);
        return sb.toString();
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public List<SyncDataBean> makeSyncDataBean() {
        int collectionSizeOrDefault;
        Set<String> set;
        ArrayList arrayList = new ArrayList();
        Set<String> keySet = getCloudSummaryMap().keySet();
        List<File> listAllFiles = FileUtils.INSTANCE.listAllFiles(TemplatePaths.INSTANCE.appDocTemplateJsonDir(getDocumentId()).toAbsolutePath().toString());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listAllFiles, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = listAllFiles.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((File) it2.next()).getName());
        }
        set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        CollectionKt.diff(keySet, set, linkedHashSet, linkedHashSet2);
        m35778a(getCloudSummaryMap(), set, linkedHashSet, linkedHashSet2);
        Path appDocTemplateJsonDir = TemplatePaths.INSTANCE.appDocTemplateJsonDir(getDocumentId());
        Iterator it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            String str = (String) it3.next();
            String obj = Paths.INSTANCE.append(appDocTemplateJsonDir, str).toAbsolutePath().toString();
            OssPaths ossPaths = OssPaths.INSTANCE;
            String syncUserId = getSyncUserId();
            String documentId = getDocumentId();
            Intrinsics.checkNotNull(str);
            arrayList.add(createSyncDataBean(str, 15, obj, ossPaths.ossPathString(ossPaths.templateJsonOssFileKey(syncUserId, documentId, str)), 1));
        }
        Iterator it4 = linkedHashSet2.iterator();
        while (it4.hasNext()) {
            String str2 = (String) it4.next();
            String obj2 = Paths.INSTANCE.append(appDocTemplateJsonDir, str2).toAbsolutePath().toString();
            OssPaths ossPaths2 = OssPaths.INSTANCE;
            String syncUserId2 = getSyncUserId();
            String documentId2 = getDocumentId();
            Intrinsics.checkNotNull(str2);
            arrayList.add(createSyncDataBean(str2, 15, obj2, ossPaths2.ossPathString(ossPaths2.templateJsonOssFileKey(syncUserId2, documentId2, str2)), 2));
        }
        return arrayList;
    }
}
