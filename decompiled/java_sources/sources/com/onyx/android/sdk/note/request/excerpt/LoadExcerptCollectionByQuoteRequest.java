package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", C6998g.f39679a, Constants.STRING_SIG, "getQuoteId", "()Ljava/lang/String;", "setQuoteId", "(Ljava/lang/String;)V", "quoteId", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "setModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V", "model", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadExcerptCollectionByQuoteRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String quoteId;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public ExcerptCollectionModel model;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadExcerptCollectionByQuoteRequest(@NotNull NoteBundle noteBundle, @NotNull String quoteId) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        this.quoteId = quoteId;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.model = NoteBundleKt.getExcerptCollectionProvider(noteBundle).loadExcerptCollectionByQuoteId(noteBundle.getNoteDoc().getDocumentUniqueId(), this.quoteId);
    }

    @Nullable
    public final ExcerptCollectionModel getModel() {
        return this.model;
    }

    @NotNull
    public final String getQuoteId() {
        return this.quoteId;
    }

    public final void setModel(@Nullable ExcerptCollectionModel excerptCollectionModel) {
        this.model = excerptCollectionModel;
    }

    public final void setQuoteId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.quoteId = str;
    }
}
