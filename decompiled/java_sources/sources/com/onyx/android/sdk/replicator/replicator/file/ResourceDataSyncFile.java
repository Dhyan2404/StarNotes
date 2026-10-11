package com.onyx.android.sdk.replicator.replicator.file;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.ResourcePaths;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.common.BaseSyncFile;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.note.proto.doc.ResourcePBDocumentUtils;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016JF\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\fH\u0002J$\u0010\u0013\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u00112\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\fH\u0002¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/file/ResourceDataSyncFile;", "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;", "", "filePrefix", "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "makeSyncDataBean", "", "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;", "cloudFileMap", "", "localFileNames", "", "cloudOnly", "localOnly", "", "a", "", "syncDataBeans", "b", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ResourceDataSyncFile extends BaseSyncFile {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceDataSyncFile(@NotNull DataReplicator dataReplicator) {
        super(dataReplicator);
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
    }

    /* renamed from: a */
    public final void m35776a(Map<String, ? extends OSSObjectSummary> cloudFileMap, Set<String> localFileNames, Set<String> cloudOnly, Set<String> localOnly) {
        boolean endsWith$default;
        OSSObjectSummary oSSObjectSummary;
        String obj = ResourcePaths.INSTANCE.appResourceDataDir(getDocumentId()).toAbsolutePath().toString();
        for (String str : localFileNames) {
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, ".pcm", false, 2, null);
            if (endsWith$default && (oSSObjectSummary = cloudFileMap.get(str)) != null) {
                FileUtils fileUtils = FileUtils.INSTANCE;
                long fileSize = fileUtils.getFileSize(fileUtils.combinePath(obj, str));
                if (fileSize != oSSObjectSummary.getSize()) {
                    if (fileSize < oSSObjectSummary.getSize()) {
                        cloudOnly.add(str);
                    } else {
                        localOnly.add(str);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final void m35777b(List<SyncDataBean> syncDataBeans, Set<String> cloudOnly) {
        if (cloudOnly.isEmpty()) {
            return;
        }
        Iterator<ResourceModel> it2 = ResourcePBDocumentUtils.INSTANCE.loadRemovedResourceModel(getDocumentId()).iterator();
        while (it2.hasNext()) {
            String name = FilenameUtils.getName(it2.next().getRelativePath());
            if (cloudOnly.contains(name)) {
                cloudOnly.remove(name);
                KSyncLogUtils.INSTANCE.m35866i(ResourceDataSyncFile.class, "delete cloud file:" + name);
                ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
                String documentId = getDocumentId();
                Intrinsics.checkNotNull(name);
                String obj = resourcePaths.appResourceDataFilePath(documentId, name).toAbsolutePath().toString();
                OssPaths ossPaths = OssPaths.INSTANCE;
                syncDataBeans.add(createSyncDataBean(name, 4, obj, ossPaths.ossPathString(ossPaths.resourceDataOssFileKey(getSyncUserId(), getDocumentId(), name)), 3));
            }
        }
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public String filePrefix() {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append("resource");
        sb.append(str);
        sb.append("data");
        sb.append(str);
        return sb.toString();
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public List<SyncDataBean> makeSyncDataBean() {
        List<SyncDataBean> arrayList = new ArrayList<>();
        Set<String> keySet = getCloudSummaryMap().keySet();
        Set<String> appDocResourceDataFileNameList = ResourcePaths.INSTANCE.appDocResourceDataFileNameList(getDocumentId());
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        CollectionKt.diff(keySet, appDocResourceDataFileNameList, linkedHashSet, linkedHashSet2);
        m35776a(getCloudSummaryMap(), appDocResourceDataFileNameList, linkedHashSet, linkedHashSet2);
        m35777b(arrayList, linkedHashSet);
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            ResourcePaths resourcePaths = ResourcePaths.INSTANCE;
            String documentId = getDocumentId();
            Intrinsics.checkNotNull(str);
            String obj = resourcePaths.appResourceDataFilePath(documentId, str).toAbsolutePath().toString();
            OssPaths ossPaths = OssPaths.INSTANCE;
            arrayList.add(createSyncDataBean(str, 4, obj, ossPaths.ossPathString(ossPaths.resourceDataOssFileKey(getSyncUserId(), getDocumentId(), str)), 1));
        }
        Iterator it3 = linkedHashSet2.iterator();
        while (it3.hasNext()) {
            String str2 = (String) it3.next();
            ResourcePaths resourcePaths2 = ResourcePaths.INSTANCE;
            String documentId2 = getDocumentId();
            Intrinsics.checkNotNull(str2);
            String obj2 = resourcePaths2.appResourceDataFilePath(documentId2, str2).toAbsolutePath().toString();
            OssPaths ossPaths2 = OssPaths.INSTANCE;
            arrayList.add(createSyncDataBean(str2, 4, obj2, ossPaths2.ossPathString(ossPaths2.resourceDataOssFileKey(getSyncUserId(), getDocumentId(), str2)), 2));
        }
        return arrayList;
    }
}
