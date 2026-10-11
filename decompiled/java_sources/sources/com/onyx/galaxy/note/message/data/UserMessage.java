package com.onyx.galaxy.note.message.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/message/data/UserMessage;", "", "", "a", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "b", "getMsgId", "setMsgId", "msgId", "c", "getUserId", "setUserId", Constant.TAG_USER_ID, "", "d", "I", "getStatus", "()I", "setStatus", "(I)V", "status", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UserMessage {

    /* renamed from: a, reason: from kotlin metadata */
    @JSONField(alternateNames = {"_id"})
    @NotNull
    public String uniqueId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String msgId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String userId = "";

    /* renamed from: d, reason: from kotlin metadata */
    public int status;

    @NotNull
    public final String getMsgId() {
        return this.msgId;
    }

    public final int getStatus() {
        return this.status;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public final void setMsgId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.msgId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    public final void setUserId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }
}
