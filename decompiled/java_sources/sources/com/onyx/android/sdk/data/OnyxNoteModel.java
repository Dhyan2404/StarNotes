package com.onyx.android.sdk.data;

import com.alibaba.fastjson2.annotation.JSONCreator;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.SecurityUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u001f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u001f\u001a\u00020 H\u0016R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/data/OnyxNoteModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "()V", "noteId", "", "size", "", "status", "", "(Ljava/lang/String;JI)V", "eventAt", "getEventAt", "()J", "setEventAt", "(J)V", "getNoteId", "()Ljava/lang/String;", "setNoteId", "(Ljava/lang/String;)V", "getSize", "setSize", "getStatus", "()I", "setStatus", "(I)V", "udid", "getUdid", "setUdid", CouchFieldKey.KEY_UID, "getUid", "setUid", "beforeSave", "", "Companion", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxNoteModel extends BaseReplicatorModel {
    public static final int ENABLED = 0;
    public static final int FORCE_REMOVED = 2;
    private long eventAt;

    @NotNull
    private String noteId;
    private long size;
    private int status;

    @NotNull
    private String udid;

    @NotNull
    private String uid;

    @JSONCreator
    public OnyxNoteModel() {
        this.noteId = "";
        this.uid = "";
        this.udid = "";
    }

    @Override // com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel
    public void beforeSave() {
        super.beforeSave();
        ensureUniqueIdExist();
    }

    public final long getEventAt() {
        return this.eventAt;
    }

    @NotNull
    public final String getNoteId() {
        return this.noteId;
    }

    public final long getSize() {
        return this.size;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getUdid() {
        return this.udid;
    }

    @NotNull
    public final String getUid() {
        return this.uid;
    }

    public final void setEventAt(long j) {
        this.eventAt = j;
    }

    public final void setNoteId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.noteId = str;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setUdid(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.udid = str;
    }

    public final void setUid(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uid = str;
    }

    public OnyxNoteModel(@NotNull String noteId, long j, int i) {
        Intrinsics.checkNotNullParameter(noteId, "noteId");
        this.uid = "";
        this.udid = "";
        this.noteId = noteId;
        this.size = j;
        this.status = i;
        this.eventAt = System.currentTimeMillis();
        this.udid = SecurityUtils.INSTANCE.getAndroidId();
        this.uid = AccountDataBundle.INSTANCE.getSyncUserId();
    }
}
