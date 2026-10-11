package com.onyx.android.sdk.cloudstorage.model;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/model/NoteCloudRecordModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "noteId", "", "cloudFileBean", "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "getCloudFileBean", "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;", "setCloudFileBean", "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NoteCloudRecordModel extends BaseReplicatorModel {

    @Nullable
    private CloudFileBean cloudFileBean;

    @JSONCreator
    public NoteCloudRecordModel() {
    }

    @Nullable
    public final CloudFileBean getCloudFileBean() {
        return this.cloudFileBean;
    }

    public final void setCloudFileBean(@Nullable CloudFileBean cloudFileBean) {
        this.cloudFileBean = cloudFileBean;
    }

    public NoteCloudRecordModel(@NotNull String noteId, @NotNull CloudFileBean cloudFileBean) {
        Intrinsics.checkNotNullParameter(noteId, "noteId");
        Intrinsics.checkNotNullParameter(cloudFileBean, "cloudFileBean");
        setUniqueId(noteId);
        this.cloudFileBean = cloudFileBean;
    }
}
