package com.onyx.android.sdk.replicator.common;

import com.onyx.android.sdk.replicator.note.utils.OssPaths;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/common/BaseUserSyncFile;", "Lcom/onyx/android/sdk/replicator/common/BaseSyncFile;", "", "d", Constants.STRING_SIG, "getOssFilePrefix", "()Ljava/lang/String;", "ossFilePrefix", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BaseUserSyncFile extends BaseSyncFile {

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final String ossFilePrefix;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseUserSyncFile(@NotNull DataReplicator dataReplicator) {
        super(dataReplicator);
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
        OssPaths ossPaths = OssPaths.INSTANCE;
        this.ossFilePrefix = ossPaths.ossPathString(ossPaths.ossUserDataDir(getSyncUserId()));
    }

    @Override // com.onyx.android.sdk.replicator.common.BaseSyncFile
    @NotNull
    public String getOssFilePrefix() {
        return this.ossFilePrefix;
    }
}
