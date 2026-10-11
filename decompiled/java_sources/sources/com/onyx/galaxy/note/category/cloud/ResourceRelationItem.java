package com.onyx.galaxy.note.category.cloud;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/cloud/ResourceRelationItem;", "", "", "a", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "b", "getTarget", "setTarget", "target", "c", "getTargetUniqueId", "setTargetUniqueId", "targetUniqueId", "d", "getResourceUniqueId", "setResourceUniqueId", "resourceUniqueId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ResourceRelationItem {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String uniqueId = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String target = "cover";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String targetUniqueId = "";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String resourceUniqueId = "";

    @NotNull
    public final String getResourceUniqueId() {
        return this.resourceUniqueId;
    }

    @NotNull
    public final String getTarget() {
        return this.target;
    }

    @NotNull
    public final String getTargetUniqueId() {
        return this.targetUniqueId;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final void setResourceUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.resourceUniqueId = str;
    }

    public final void setTarget(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.target = str;
    }

    public final void setTargetUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.targetUniqueId = str;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }
}
