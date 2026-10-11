package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.note.bean.ApplyTemplateInfo;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.bkground.ApplyTemplateAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", C6998g.f39679a, Constants.STRING_SIG, "noteId", "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;", "applyTemplateInfo", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "i", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "j", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ChangeNoteTemplateAction extends BaseNoteManagementAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String noteId;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ApplyTemplateInfo applyTemplateInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: j, reason: from kotlin metadata */
    public SyncNoteModel noteModel;

    /* renamed from: com.onyx.galaxy.note.category.action.ChangeNoteTemplateAction$a */
    /* loaded from: classes9.dex */
    public static final class C10759a<T> implements Consumer {
        public C10759a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ChangeNoteTemplateAction changeNoteTemplateAction = ChangeNoteTemplateAction.this;
            SyncNoteModel loadNote = NoteModelProviderKt.loadNote(it2, changeNoteTemplateAction.noteId);
            Intrinsics.checkNotNull(loadNote);
            changeNoteTemplateAction.noteModel = loadNote;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.ChangeNoteTemplateAction$b */
    /* loaded from: classes9.dex */
    public static final class C10760b<T, R> implements Function {
        public C10760b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = ChangeNoteTemplateAction.this.editorBundle;
            OpenDocArgs.Companion companion = OpenDocArgs.INSTANCE;
            SyncNoteModel syncNoteModel = ChangeNoteTemplateAction.this.noteModel;
            if (syncNoteModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("noteModel");
                syncNoteModel = null;
            }
            return new OpenDocumentAction(editorBundle, companion.createFrom(syncNoteModel)).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.ChangeNoteTemplateAction$c */
    /* loaded from: classes9.dex */
    public static final class C10761c<T, R> implements Function {
        public C10761c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ApplyTemplateAction> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ApplyTemplateAction(ChangeNoteTemplateAction.this.editorBundle, ChangeNoteTemplateAction.this.applyTemplateInfo).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.ChangeNoteTemplateAction$d */
    /* loaded from: classes9.dex */
    public static final class C10762d<T, R> implements Function {
        public C10762d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseDocumentAction> apply(@NotNull ApplyTemplateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CloseDocumentAction(ChangeNoteTemplateAction.this.editorBundle, false, false, 6, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.ChangeNoteTemplateAction$e */
    /* loaded from: classes9.dex */
    public static final class C10763e<T, R> implements Function {

        /* renamed from: e */
        public static final C10763e<T, R> f53629e = new C10763e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull CloseDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    public ChangeNoteTemplateAction(@NotNull String noteId, @NotNull ApplyTemplateInfo applyTemplateInfo) {
        Intrinsics.checkNotNullParameter(noteId, "noteId");
        Intrinsics.checkNotNullParameter(applyTemplateInfo, "applyTemplateInfo");
        this.noteId = noteId;
        this.applyTemplateInfo = applyTemplateInfo;
        this.editorBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> map = createNoteProviderObservable().doOnNext(new C10759a()).flatMap(new C10760b()).flatMap(new C10761c()).flatMap(new C10762d()).map(C10763e.f53629e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
