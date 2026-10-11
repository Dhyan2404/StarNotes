package com.onyx.android.sdk.note.request.excerpt;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.extension.NoteBundleKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionListByExcerptIdRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", C6998g.f39679a, Constants.STRING_SIG, "getExcerptId", "()Ljava/lang/String;", "setExcerptId", "(Ljava/lang/String;)V", "excerptId", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", C6999h.f39688c, "Ljava/util/List;", "getExcerptCollectionList", "()Ljava/util/List;", "setExcerptCollectionList", "(Ljava/util/List;)V", "excerptCollectionList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadExcerptCollectionListByExcerptIdRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public String excerptId;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<ExcerptCollectionModel> excerptCollectionList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadExcerptCollectionListByExcerptIdRequest(@NotNull NoteBundle noteBundle, @NotNull String excerptId) {
        super(noteBundle);
        List<ExcerptCollectionModel> emptyList;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(excerptId, "excerptId");
        this.excerptId = excerptId;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.excerptCollectionList = emptyList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.excerptCollectionList = NoteBundleKt.getExcerptCollectionProvider(noteBundle).loadExcerptCollectionListByExcerptId(noteBundle.getNoteDoc().getDocumentUniqueId(), this.excerptId);
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @NotNull
    public final String getExcerptId() {
        return this.excerptId;
    }

    public final void setExcerptCollectionList(@NotNull List<ExcerptCollectionModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.excerptCollectionList = list;
    }

    public final void setExcerptId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.excerptId = str;
    }
}
