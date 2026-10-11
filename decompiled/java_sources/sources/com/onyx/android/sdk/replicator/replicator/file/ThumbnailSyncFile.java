package com.onyx.android.sdk.replicator.replicator.file;

import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.common.BaseSyncFile;
import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/file/ThumbnailSyncFile;", "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;", "dataReplicator", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "filePrefix", "", "makeSyncDataBean", "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ThumbnailSyncFile extends BaseSyncFile {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThumbnailSyncFile(@NotNull DataReplicator dataReplicator) {
        super(dataReplicator);
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public String filePrefix() {
        return File.separator + getDocumentId() + SyncConstant.INSTANCE.getTHUMBNAIL_FILE_EXTENSION();
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public List<SyncDataBean> makeSyncDataBean() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        OSSObjectSummary oSSObjectSummary = (OSSObjectSummary) CollectionKt.getFirst(getCloudSummaryMap().values());
        String obj = ThumbnailPaths.INSTANCE.appThumbnailPath(getDocumentId()).toAbsolutePath().toString();
        if (FileUtils.INSTANCE.fileExist(obj)) {
            boolean z2 = false;
            z = (oSSObjectSummary != null ? oSSObjectSummary.getLastModified() : null) != null && oSSObjectSummary.getLastModified().getTime() > new File(obj).lastModified();
            if (!z) {
                if (oSSObjectSummary != null && oSSObjectSummary.getSize() == new File(obj).length()) {
                    z2 = true;
                }
                if (z2) {
                    return arrayList;
                }
            }
        } else {
            z = true;
        }
        if (z && oSSObjectSummary == null) {
            return arrayList;
        }
        String documentId = getDocumentId();
        OssPaths ossPaths = OssPaths.INSTANCE;
        arrayList.add(createSyncDataBean(documentId, 5, obj, ossPaths.ossPathString(ossPaths.thumbnailOssFileKey(getSyncUserId(), getDocumentId())), z ? 1 : 2));
        return arrayList;
    }
}
