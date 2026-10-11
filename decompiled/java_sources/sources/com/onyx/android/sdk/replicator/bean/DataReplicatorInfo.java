package com.onyx.android.sdk.replicator.bean;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;", "", "", "a", Constants.STRING_SIG, "getUserId", "()Ljava/lang/String;", "setUserId", "(Ljava/lang/String;)V", Constant.TAG_USER_ID, "b", "getDocumentId", "setDocumentId", "documentId", "", "c", Constants.HASIDCALL_INDEX_SIG, "getDebugLog", Constants.BOOLEAN_VALUE_SIG, "setDebugLog", "(Z)V", "debugLog", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DataReplicatorInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String userId;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String documentId = "";

    /* renamed from: c, reason: from kotlin metadata */
    public boolean debugLog;

    public final boolean getDebugLog() {
        return this.debugLog;
    }

    @NotNull
    public final String getDocumentId() {
        return this.documentId;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    public final void setDebugLog(boolean z) {
        this.debugLog = z;
    }

    public final void setDocumentId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.documentId = str;
    }

    public final void setUserId(@Nullable String str) {
        this.userId = str;
    }
}
