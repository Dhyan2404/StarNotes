package com.onyx.galaxy.note.category.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.galaxy.note.category.action.GetNoteCoverTemplateArgsAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.data.TemplateChangeType;
import com.onyx.galaxy.note.category.data.TemplateFragmentArgs;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.onyx.galaxy.note.editor.action.template.LoadPageTemplateJsonAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;", OcrValues.LANG_ITALIAN, GoogleApiAvailabilityLight.f29016b, "", C6998g.f39679a, Constants.STRING_SIG, CouchFieldKey.KEY_UNIQUE_ID, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GetNoteCoverTemplateArgsAction extends BaseNoteManagementAction<TemplateFragmentArgs> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String uniqueId;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: com.onyx.galaxy.note.category.action.GetNoteCoverTemplateArgsAction$a */
    /* loaded from: classes9.dex */
    public static final class C10857a<T, R> implements Function {
        public C10857a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SyncNoteModel apply(@NotNull NoteProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SyncNoteModel loadNote = NoteModelProviderKt.loadNote(it2, GetNoteCoverTemplateArgsAction.this.uniqueId);
            Intrinsics.checkNotNull(loadNote);
            return loadNote;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.GetNoteCoverTemplateArgsAction$b */
    /* loaded from: classes9.dex */
    public static final class C10858b<T, R> implements Function {
        public C10858b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new OpenDocumentAction(GetNoteCoverTemplateArgsAction.this.editorBundle, OpenDocArgs.INSTANCE.createFrom(it2)).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.GetNoteCoverTemplateArgsAction$c */
    /* loaded from: classes9.dex */
    public static final class C10859c<T, R> implements Function {
        public C10859c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LoadPageTemplateJsonAction> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadPageTemplateJsonAction(GetNoteCoverTemplateArgsAction.this.editorBundle, 0, false, 4, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.GetNoteCoverTemplateArgsAction$d */
    /* loaded from: classes9.dex */
    public static final class C10860d<T, R> implements Function {
        public C10860d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TemplateFragmentArgs apply(@NotNull LoadPageTemplateJsonAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetNoteCoverTemplateArgsAction.this.m42304n(it2);
        }
    }

    public GetNoteCoverTemplateArgsAction(@NotNull String uniqueId) {
        Intrinsics.checkNotNullParameter(uniqueId, "uniqueId");
        this.uniqueId = uniqueId;
        this.editorBundle = DocCollectionBundle.INSTANCE.docManagerBundle();
    }

    /* renamed from: m */
    public static final void m42303m(GetNoteCoverTemplateArgsAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RxBaseAction.execute$default(new CloseDocumentAction(this$0.editorBundle, false, false, 4, null), null, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TemplateFragmentArgs> create() {
        Observable<TemplateFragmentArgs> observeOn = createNoteProviderObservable().map(new C10857a()).flatMap(new C10858b()).flatMap(new C10859c()).map(new C10860d()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.n2h
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                GetNoteCoverTemplateArgsAction.m42303m(GetNoteCoverTemplateArgsAction.this);
            }
        }).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: n */
    public final TemplateFragmentArgs m42304n(LoadPageTemplateJsonAction it2) {
        TemplateFragmentArgs templateFragmentArgs = new TemplateFragmentArgs();
        TemplateJsonBean coverTemplateJsonBean = it2.getCoverTemplateJsonBean();
        if (coverTemplateJsonBean == null) {
            coverTemplateJsonBean = it2.getPaperTemplateJsonBean();
        }
        templateFragmentArgs.setCoverTemplateJsonBean(coverTemplateJsonBean);
        templateFragmentArgs.setHasPictureOrPDF(it2.getHasPictureOrPDF());
        templateFragmentArgs.setType(4);
        templateFragmentArgs.setChangeType(TemplateChangeType.CHANGE_COVER);
        templateFragmentArgs.setChangeContainsCover(templateFragmentArgs.getOnlyCoverChange());
        templateFragmentArgs.setNoteId(this.uniqueId);
        return templateFragmentArgs;
    }
}
