package com.onyx.android.sdk.replicator.fts.model;

import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000f\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0019\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000f¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;", "Ljava/io/Serializable;", "()V", "indexed", "", "getIndexed", Constants.BOOLEAN_VALUE_SIG, "setIndexed", "(Z)V", "lang", "", "getLang", "()Ljava/lang/String;", "setLang", "(Ljava/lang/String;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "getPageId", "setPageId", CouchFieldKey.KEY_REVISION_ID, "getRevisionId", "setRevisionId", "type", "getType", "setType", "toString", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FTSPageStateModel extends BaseReplicatorModel implements Serializable {
    private boolean indexed;

    @NotNull
    private String pageId = "";

    @NotNull
    private String type = "";

    @NotNull
    private String lang = "";

    @NotNull
    private String revisionId = "";

    public final boolean getIndexed() {
        return this.indexed;
    }

    @NotNull
    public final String getLang() {
        return this.lang;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    @NotNull
    public final String getRevisionId() {
        return this.revisionId;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final void setIndexed(boolean z) {
        this.indexed = z;
    }

    public final void setLang(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lang = str;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setRevisionId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.revisionId = str;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @NotNull
    public String toString() {
        return this.type + ' ' + this.lang + ' ' + this.indexed + ' ' + this.pageId;
    }
}
