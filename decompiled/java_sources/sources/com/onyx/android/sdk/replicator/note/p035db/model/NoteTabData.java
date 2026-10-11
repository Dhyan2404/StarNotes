package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "encrypted", "", "getEncrypted", "()Ljava/lang/Boolean;", "setEncrypted", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteTabData extends BaseReplicatorModel {

    @JSONField(deserialize = false, serialize = false)
    @Nullable
    private Boolean encrypted;

    @NotNull
    private String title = "";

    @Nullable
    public final Boolean getEncrypted() {
        return this.encrypted;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void setEncrypted(@Nullable Boolean bool) {
        this.encrypted = bool;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }
}
