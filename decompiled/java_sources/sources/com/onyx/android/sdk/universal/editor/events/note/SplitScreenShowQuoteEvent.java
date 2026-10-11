package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;", "", "", "a", Constants.STRING_SIG, "getSourceShapeId", "()Ljava/lang/String;", CouchFieldKey.KEY_SOURCE_SHAPE_ID, "b", "getQuoteDocId", CouchFieldKey.KEY_QUOTE_DOC_ID, "c", "getQuoteId", "quoteId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SplitScreenShowQuoteEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String sourceShapeId;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String quoteDocId;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String quoteId;

    public SplitScreenShowQuoteEvent(@NotNull String sourceShapeId, @NotNull String quoteDocId, @NotNull String quoteId) {
        Intrinsics.checkNotNullParameter(sourceShapeId, "sourceShapeId");
        Intrinsics.checkNotNullParameter(quoteDocId, "quoteDocId");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        this.sourceShapeId = sourceShapeId;
        this.quoteDocId = quoteDocId;
        this.quoteId = quoteId;
    }

    @NotNull
    public final String getQuoteDocId() {
        return this.quoteDocId;
    }

    @NotNull
    public final String getQuoteId() {
        return this.quoteId;
    }

    @NotNull
    public final String getSourceShapeId() {
        return this.sourceShapeId;
    }
}
