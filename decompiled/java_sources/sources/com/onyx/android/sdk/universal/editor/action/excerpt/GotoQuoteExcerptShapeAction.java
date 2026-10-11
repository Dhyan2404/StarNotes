package com.onyx.android.sdk.universal.editor.action.excerpt;

import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentAction;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.LoadNoteModelAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.note.GotoQuoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowQuoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.UpdateExcerptResultArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.excerpt.GetExcerptShapeByIdRequest;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001f\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b \u0010!J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "anotherEditorBundle", C4921e.f26528e, "m", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "", "l", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "manager", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;", "i", "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "", C4921e.f26537n, "Ljava/util/List;", "quoteIds", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GotoQuoteExcerptShapeAction extends RxBaseAppAction<GotoQuoteExcerptShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager manager;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final SplitScreenShowQuoteEvent event;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public Shape shape;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<String> quoteIds;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8737a<T, R> implements Function {
        public C8737a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoQuoteExcerptShapeAction> apply(@NotNull GotoQuoteExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoQuoteExcerptShapeAction.this.m37746m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C8738b<T, R> implements Function {
        public C8738b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SyncNoteModel> apply(@NotNull GotoQuoteExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadNoteModelAction(GotoQuoteExcerptShapeAction.this.getEditorBundle(), GotoQuoteExcerptShapeAction.this.event.getQuoteDocId()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C8739c<T> implements Consumer {
        public C8739c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoQuoteExcerptShapeAction.this.m37747n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C8741e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorViewHandler f48437f;

        public C8741e(EditorViewHandler editorViewHandler) {
            this.f48437f = editorViewHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<SyncNoteModel, RectF> apply(@NotNull SyncNoteModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new Pair<>(it2, EditorBundleManager.ensureEnableSpiltScreen$default(GotoQuoteExcerptShapeAction.this.manager, this.f48437f, null, 2, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C8742f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorViewHandler f48438e;

        public C8742f(EditorViewHandler editorViewHandler) {
            this.f48438e = editorViewHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentAction> apply(@NotNull Pair<? extends SyncNoteModel, ? extends RectF> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f48438e.openAnotherDocument(it2.getFirst(), it2.getSecond());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C8743g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorViewHandler f48440f;

        public C8743g(EditorViewHandler editorViewHandler) {
            this.f48440f = editorViewHandler;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoQuoteExcerptShapeAction> apply(@NotNull OpenDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoQuoteExcerptShapeAction.this.m37748o(this.f48440f.getEditorBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$h */
    /* loaded from: classes8.dex */
    public static final class C8744h<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ EditorViewHandler f48441e;

        /* renamed from: f */
        public final /* synthetic */ GotoQuoteExcerptShapeAction f48442f;

        public C8744h(EditorViewHandler editorViewHandler, GotoQuoteExcerptShapeAction gotoQuoteExcerptShapeAction) {
            this.f48441e = editorViewHandler;
            this.f48442f = gotoQuoteExcerptShapeAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GotoQuoteExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(this.f48441e.getEditorBundle(), new GotoQuoteEvent(this.f48442f.event.getQuoteId()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$i */
    /* loaded from: classes8.dex */
    public static final class C8745i<T, R> implements Function {
        public C8745i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoQuoteExcerptShapeAction apply(@NotNull GotoQuoteExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoQuoteExcerptShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$j */
    /* loaded from: classes8.dex */
    public static final class C8746j<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ GetExcerptShapeByIdRequest f48445f;

        public C8746j(GetExcerptShapeByIdRequest getExcerptShapeByIdRequest) {
            this.f48445f = getExcerptShapeByIdRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetExcerptShapeByIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoQuoteExcerptShapeAction.this.shape = this.f48445f.getShape();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$k */
    /* loaded from: classes8.dex */
    public static final class C8747k<T> implements Consumer {
        public C8747k() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetExcerptShapeByIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoQuoteExcerptShapeAction.this.quoteIds.addAll(it2.getQuoteIds());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$l */
    /* loaded from: classes8.dex */
    public static final class C8748l<T, R> implements Function {
        public C8748l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoQuoteExcerptShapeAction apply(@NotNull GetExcerptShapeByIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoQuoteExcerptShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$m */
    /* loaded from: classes8.dex */
    public static final class C8749m<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f48448e;

        /* renamed from: f */
        public final /* synthetic */ Shape f48449f;

        /* renamed from: g */
        public final /* synthetic */ GotoQuoteExcerptShapeAction f48450g;

        public C8749m(EditorBundle editorBundle, Shape shape, GotoQuoteExcerptShapeAction gotoQuoteExcerptShapeAction) {
            this.f48448e = editorBundle;
            this.f48449f = shape;
            this.f48450g = gotoQuoteExcerptShapeAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends UpdateQuoteAction> apply(@NotNull GotoQuoteExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = this.f48448e;
            Shape shape = this.f48449f;
            ShapeResource resource = ShapeOptions.INSTANCE.getResource(shape);
            String localPath = resource != null ? resource.getLocalPath() : null;
            if (localPath == null) {
                localPath = "";
            }
            ExcerptInfoBean excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(this.f48449f);
            return new UpdateQuoteAction(editorBundle, new UpdateExcerptResultArgs(shape, localPath, excerptInfoBean != null ? excerptInfoBean.getDocScaleOnUpdate() : 1.0f, this.f48450g.quoteIds)).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction$n */
    /* loaded from: classes8.dex */
    public static final class C8750n<T, R> implements Function {
        public C8750n() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoQuoteExcerptShapeAction apply(@NotNull UpdateQuoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoQuoteExcerptShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoQuoteExcerptShapeAction(@NotNull EditorBundle editorBundle, @NotNull EditorBundleManager manager, @NotNull SplitScreenShowQuoteEvent event) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(event, "event");
        this.manager = manager;
        this.event = event;
        this.quoteIds = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoQuoteExcerptShapeAction> create() {
        EditorViewHandler anotherEditorViewHandler = this.manager.getAnotherEditorViewHandler(this.manager.getFocusId());
        if (!Intrinsics.areEqual(EditorBundleKt.docId(anotherEditorViewHandler.getEditorBundle()), this.event.getQuoteDocId())) {
            Observable<GotoQuoteExcerptShapeAction> map = Observable.just(this).flatMap(new C8737a()).flatMap(new C8738b()).doOnError(new C8739c()).filter(new Predicate() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.GotoQuoteExcerptShapeAction.d
                @Override // io.reactivex.rxjava3.functions.Predicate
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final boolean test(@NotNull SyncNoteModel p0) {
                    Intrinsics.checkNotNullParameter(p0, "p0");
                    return GotoQuoteExcerptShapeAction.this.m37745l(p0);
                }
            }).map(new C8741e(anotherEditorViewHandler)).flatMap(new C8742f(anotherEditorViewHandler)).flatMap(new C8743g(anotherEditorViewHandler)).doOnNext(new C8744h(anotherEditorViewHandler, this)).map(new C8745i());
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return map;
        }
        EditorBundleKt.postEvent(anotherEditorViewHandler.getEditorBundle(), new GotoQuoteEvent(this.event.getQuoteId()));
        Observable<GotoQuoteExcerptShapeAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: l */
    public final boolean m37745l(SyncNoteModel syncNoteModel) {
        if (syncNoteModel.isEnabled()) {
            return true;
        }
        m37747n();
        return false;
    }

    /* renamed from: m */
    public final Observable<GotoQuoteExcerptShapeAction> m37746m() {
        GetExcerptShapeByIdRequest getExcerptShapeByIdRequest = new GetExcerptShapeByIdRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.event.getSourceShapeId());
        Observable<GotoQuoteExcerptShapeAction> map = RxBaseAppActionKt.submitRequestToNote(this, getExcerptShapeByIdRequest).doOnNext(new C8746j(getExcerptShapeByIdRequest)).doOnNext(new C8747k()).map(new C8748l());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final void m37747n() {
        ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.can_not_goto_deleted_note_tip, false, 2, (Object) null);
    }

    /* renamed from: o */
    public final Observable<GotoQuoteExcerptShapeAction> m37748o(EditorBundle anotherEditorBundle) {
        Shape shape = this.shape;
        if (shape == null) {
            Observable<GotoQuoteExcerptShapeAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<GotoQuoteExcerptShapeAction> map = Observable.just(this).flatMap(new C8749m(anotherEditorBundle, shape, this)).map(new C8750n());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
