package com.onyx.galaxy.note.category.cloud;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010-\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010$\u001a\u0004\b+\u0010&\"\u0004\b,\u0010(¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/cloud/CoverPaperCategoryItem;", "", "", "a", Constants.STRING_SIG, "getUniqueId", "()Ljava/lang/String;", "setUniqueId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_UNIQUE_ID, "", "b", "I", "getVersion", "()I", "setVersion", "(I)V", "version", "c", "getName", "setName", "name", "d", "getSource", "setSource", "source", "", "e", "F", "getPriority", "()F", "setPriority", "(F)V", "priority", "", C6997f.f39671c, "J", "getCreatedAt", "()J", "setCreatedAt", "(J)V", CouchFieldKey.KEY_CREATE_AT, C6998g.f39679a, "getUpdatedAt", "setUpdatedAt", "updatedAt", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CoverPaperCategoryItem {

    /* renamed from: b, reason: from kotlin metadata */
    public int version;

    /* renamed from: f, reason: from kotlin metadata */
    public long createdAt;

    /* renamed from: g, reason: from kotlin metadata */
    public long updatedAt;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String uniqueId = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String name = "";

    /* renamed from: d, reason: from kotlin metadata */
    public int source = 2;

    /* renamed from: e, reason: from kotlin metadata */
    public float priority = -1.0f;

    public final long getCreatedAt() {
        return this.createdAt;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final float getPriority() {
        return this.priority;
    }

    public final int getSource() {
        return this.source;
    }

    @NotNull
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final long getUpdatedAt() {
        return this.updatedAt;
    }

    public final int getVersion() {
        return this.version;
    }

    public final void setCreatedAt(long j) {
        this.createdAt = j;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setPriority(float f) {
        this.priority = f;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setUniqueId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uniqueId = str;
    }

    public final void setUpdatedAt(long j) {
        this.updatedAt = j;
    }

    public final void setVersion(int i) {
        this.version = i;
    }
}
