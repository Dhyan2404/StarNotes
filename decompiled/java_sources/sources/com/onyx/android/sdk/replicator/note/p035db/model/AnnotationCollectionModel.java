package com.onyx.android.sdk.replicator.note.p035db.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/AnnotationCollectionModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "annotationId", "", "getAnnotationId", "()Ljava/lang/String;", "setAnnotationId", "(Ljava/lang/String;)V", "linkId", "getLinkId", "setLinkId", "state", "", "getState", "()I", "setState", "(I)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class AnnotationCollectionModel extends BaseReplicatorModel {

    @NotNull
    private String annotationId = "";

    @NotNull
    private String linkId = "";
    private int state;

    @NotNull
    public final String getAnnotationId() {
        return this.annotationId;
    }

    @NotNull
    public final String getLinkId() {
        return this.linkId;
    }

    public final int getState() {
        return this.state;
    }

    public final void setAnnotationId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.annotationId = str;
    }

    public final void setLinkId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.linkId = str;
    }

    public final void setState(int i) {
        this.state = i;
    }
}
