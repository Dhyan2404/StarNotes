package com.onyx.android.sdk.replicator.replicator.file;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.common.path.PointPaths;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.common.BaseSyncFile;
import com.onyx.android.sdk.replicator.note.data.point.PointDocumentUtils;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/file/PointSyncFile;", "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;", "dataReplicator", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "filePrefix", "", "makeSyncDataBean", "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PointSyncFile extends BaseSyncFile {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointSyncFile(@NotNull DataReplicator dataReplicator) {
        super(dataReplicator);
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public String filePrefix() {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append("point");
        sb.append(str);
        return sb.toString();
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public List<SyncDataBean> makeSyncDataBean() {
        Set set;
        ArrayList arrayList = new ArrayList();
        Set<String> appDocPointNameList = PointPaths.INSTANCE.appDocPointNameList(getDocumentId());
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        LinkedHashSet<String> linkedHashSet2 = new LinkedHashSet();
        set = CollectionsKt___CollectionsKt.toSet(getCloudSummaryMap().keySet());
        CollectionKt.diff(set, appDocPointNameList, linkedHashSet, linkedHashSet2);
        for (String str : linkedHashSet) {
            PointDocumentUtils pointDocumentUtils = PointDocumentUtils.INSTANCE;
            Map.Entry<String, String> parseRevisionPageId = pointDocumentUtils.parseRevisionPageId(str);
            if (parseRevisionPageId != null) {
                String key = parseRevisionPageId.getKey();
                String value = parseRevisionPageId.getValue();
                String obj = PointPaths.INSTANCE.appPointFilePath(getDocumentId(), value, pointDocumentUtils.getPointFileName(value, key)).toAbsolutePath().toString();
                OssPaths ossPaths = OssPaths.INSTANCE;
                arrayList.add(createSyncDataBean(key, 1, obj, ossPaths.ossPathString(ossPaths.pointOssFileKey(getSyncUserId(), getDocumentId(), value, key)), 1));
            }
        }
        for (String str2 : linkedHashSet2) {
            PointDocumentUtils pointDocumentUtils2 = PointDocumentUtils.INSTANCE;
            Map.Entry<String, String> parseRevisionPageId2 = pointDocumentUtils2.parseRevisionPageId(str2);
            if (parseRevisionPageId2 != null) {
                String key2 = parseRevisionPageId2.getKey();
                String value2 = parseRevisionPageId2.getValue();
                String obj2 = PointPaths.INSTANCE.appPointFilePath(getDocumentId(), value2, pointDocumentUtils2.getPointFileName(value2, key2)).toAbsolutePath().toString();
                OssPaths ossPaths2 = OssPaths.INSTANCE;
                arrayList.add(createSyncDataBean(key2, 1, obj2, ossPaths2.ossPathString(ossPaths2.pointOssFileKey(getSyncUserId(), getDocumentId(), value2, key2)), 2));
            }
        }
        return arrayList;
    }
}
