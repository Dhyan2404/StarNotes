package com.onyx.galaxy.note.editor.action.doc;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.NoteTitleUpdatedEvent;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/doc/UpdateNoteDocTitleAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "syncNoteModel", "", "l", "m", "", C6999h.f39688c, Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "title", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class UpdateNoteDocTitleAction extends RxBaseAppAction<SyncNoteModel> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String title;

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.UpdateNoteDocTitleAction$a */
    /* loaded from: classes9.dex */
    public static final class C11915a<T, R> implements Function {
        public C11915a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull UpdateNoteDocTitleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return UpdateNoteDocTitleAction.this.m45824m();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.UpdateNoteDocTitleAction$b */
    /* loaded from: classes9.dex */
    public static final class C11916b<T> implements Consumer {
        public C11916b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            UpdateNoteDocTitleAction.this.m45823l(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateNoteDocTitleAction(@NotNull EditorBundle editorBundle, @NotNull String title) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SyncNoteModel> create() {
        Observable<SyncNoteModel> doOnNext = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C11915a()).doOnNext(new C11916b());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    /* renamed from: l */
    public final void m45823l(SyncNoteModel syncNoteModel) {
        NoteTitleUpdatedEvent noteTitleUpdatedEvent = new NoteTitleUpdatedEvent(syncNoteModel);
        EditorBundleKt.postEvent(getEditorBundle(), noteTitleUpdatedEvent);
        DocCollectionBundle.INSTANCE.postEvent(noteTitleUpdatedEvent);
    }

    /* renamed from: m */
    public final SyncNoteModel m45824m() {
        SyncNoteModel noteModel = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getNoteModel();
        noteModel.setTitle(this.title);
        return noteModel;
    }
}
