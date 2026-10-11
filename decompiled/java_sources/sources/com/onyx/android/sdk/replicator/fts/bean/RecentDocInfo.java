package com.onyx.android.sdk.replicator.fts.bean;

import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/fts/bean/RecentDocInfo;", "", "", "a", Constants.STRING_SIG, "getDocId", "()Ljava/lang/String;", "setDocId", "(Ljava/lang/String;)V", EditorConstants.ARGS_DOC_ID, "", "b", "Ljava/util/List;", "getPageIds", "()Ljava/util/List;", "setPageIds", "(Ljava/util/List;)V", "pageIds", "", "c", "J", "getLastUpdateTime", "()J", "setLastUpdateTime", "(J)V", "lastUpdateTime", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RecentDocInfo {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String docId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<String> pageIds;

    /* renamed from: c, reason: from kotlin metadata */
    public long lastUpdateTime;

    public RecentDocInfo() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf("");
        this.pageIds = listOf;
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    public final long getLastUpdateTime() {
        return this.lastUpdateTime;
    }

    @NotNull
    public final List<String> getPageIds() {
        return this.pageIds;
    }

    public final void setDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.docId = str;
    }

    public final void setLastUpdateTime(long j) {
        this.lastUpdateTime = j;
    }

    public final void setPageIds(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.pageIds = list;
    }
}
