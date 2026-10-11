package com.onyx.android.sdk.neopdf;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000  2\u00020\u0001:\u0001 B-\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J1\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\n\"\u0004\b\u0014\u0010\f¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/NeoPdfOnyxTag;", "Ljava/io/Serializable;", "id", "", CouchFieldKey.KEY_COMMIT_ID, "exported", "", "app", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "getApp", "()Ljava/lang/String;", "setApp", "(Ljava/lang/String;)V", "getCommitId", "setCommitId", "getExported", Constants.BOOLEAN_VALUE_SIG, "setExported", "(Z)V", "getId", "setId", "component1", "component2", "component3", "component4", "copy", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class NeoPdfOnyxTag implements Serializable {

    @NotNull
    public static final String PDF_METADATA_KEY = "onyxtag";

    @NotNull
    private String app;

    @NotNull
    private String commitId;
    private boolean exported;

    @NotNull
    private String id;

    public NeoPdfOnyxTag() {
        this(null, null, false, null, 15, null);
    }

    public static /* synthetic */ NeoPdfOnyxTag copy$default(NeoPdfOnyxTag neoPdfOnyxTag, String str, String str2, boolean z, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = neoPdfOnyxTag.id;
        }
        if ((i & 2) != 0) {
            str2 = neoPdfOnyxTag.commitId;
        }
        if ((i & 4) != 0) {
            z = neoPdfOnyxTag.exported;
        }
        if ((i & 8) != 0) {
            str3 = neoPdfOnyxTag.app;
        }
        return neoPdfOnyxTag.copy(str, str2, z, str3);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getCommitId() {
        return this.commitId;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getExported() {
        return this.exported;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getApp() {
        return this.app;
    }

    @NotNull
    public final NeoPdfOnyxTag copy(@NotNull String id, @NotNull String commitId, boolean exported, @NotNull String app) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(commitId, "commitId");
        Intrinsics.checkNotNullParameter(app, "app");
        return new NeoPdfOnyxTag(id, commitId, exported, app);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NeoPdfOnyxTag)) {
            return false;
        }
        NeoPdfOnyxTag neoPdfOnyxTag = (NeoPdfOnyxTag) other;
        return Intrinsics.areEqual(this.id, neoPdfOnyxTag.id) && Intrinsics.areEqual(this.commitId, neoPdfOnyxTag.commitId) && this.exported == neoPdfOnyxTag.exported && Intrinsics.areEqual(this.app, neoPdfOnyxTag.app);
    }

    @NotNull
    public final String getApp() {
        return this.app;
    }

    @NotNull
    public final String getCommitId() {
        return this.commitId;
    }

    public final boolean getExported() {
        return this.exported;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.id.hashCode() * 31) + this.commitId.hashCode()) * 31;
        boolean z = this.exported;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.app.hashCode();
    }

    public final void setApp(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.app = str;
    }

    public final void setCommitId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.commitId = str;
    }

    public final void setExported(boolean z) {
        this.exported = z;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    @NotNull
    public String toString() {
        return "NeoPdfOnyxTag(id=" + this.id + ", commitId=" + this.commitId + ", exported=" + this.exported + ", app=" + this.app + ')';
    }

    public NeoPdfOnyxTag(@NotNull String id, @NotNull String commitId, boolean z, @NotNull String app) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(commitId, "commitId");
        Intrinsics.checkNotNullParameter(app, "app");
        this.id = id;
        this.commitId = commitId;
        this.exported = z;
        this.app = app;
    }

    public /* synthetic */ NeoPdfOnyxTag(String str, String str2, boolean z, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? "" : str3);
    }
}
