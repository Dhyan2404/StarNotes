package com.onyx.android.sdk.universal.editor.action.excerpt;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.excerpt.LoadExcerptCollectionListBySourceShapeIdRequest;
import com.onyx.android.sdk.note.request.excerpt.LoadNoteModelListByIdListRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupArgs;
import com.onyx.android.sdk.universal.editor.events.note.ShowExcerptPopupEvent;
import com.onyx.android.sdk.universal.editor.events.note.SplitScreenShowQuoteEvent;
import com.onyx.android.sdk.universal.editor.events.note.StartExcerptEditArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0000H\u0002J\b\u0010\u0007\u001a\u00020\u0000H\u0002J\b\u0010\b\u001a\u00020\u0000H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00118\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestExcerptShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "p", "l", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6999h.f39688c, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "hitTestVirtualPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "i", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "j", "Ljava/util/List;", "getExcerptCollectionList", "()Ljava/util/List;", "excerptCollectionList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C4921e.f26537n, "getNoteModelList", "noteModelList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleHitTestExcerptShapeAction extends RxBaseAppAction<HandleHitTestExcerptShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo hitTestVirtualPage;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModelList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestExcerptShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C8764a<T, R> implements Function {
        public C8764a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HandleHitTestExcerptShapeAction> apply(@NotNull HandleHitTestExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestExcerptShapeAction.this.m37787m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestExcerptShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C8765b<T, R> implements Function {
        public C8765b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HandleHitTestExcerptShapeAction> apply(@NotNull HandleHitTestExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestExcerptShapeAction.this.m37788n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestExcerptShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C8766c<T, R> implements Function {
        public C8766c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestExcerptShapeAction apply(@NotNull HandleHitTestExcerptShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestExcerptShapeAction.this.m37786l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestExcerptShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C8767d<T, R> implements Function {
        public C8767d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestExcerptShapeAction apply(@NotNull LoadExcerptCollectionListBySourceShapeIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HandleHitTestExcerptShapeAction.this.getExcerptCollectionList().addAll(it2.getExcerptCollectionList());
            return HandleHitTestExcerptShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestExcerptShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C8768e<T, R> implements Function {
        public C8768e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestExcerptShapeAction apply(@NotNull LoadNoteModelListByIdListRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HandleHitTestExcerptShapeAction.this.getNoteModelList().addAll(it2.getModelList());
            return HandleHitTestExcerptShapeAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleHitTestExcerptShapeAction(@NotNull EditorBundle editorBundle, @NotNull BoxInfo hitTestVirtualPage, @NotNull Shape hitTestShape) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestVirtualPage, "hitTestVirtualPage");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        this.hitTestVirtualPage = hitTestVirtualPage;
        this.hitTestShape = hitTestShape;
        this.excerptCollectionList = new ArrayList();
        this.noteModelList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleHitTestExcerptShapeAction> create() {
        Observable<HandleHitTestExcerptShapeAction> map = Observable.just(this).flatMap(new C8764a()).flatMap(new C8765b()).map(new C8766c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @NotNull
    public final List<SyncNoteModel> getNoteModelList() {
        return this.noteModelList;
    }

    /* renamed from: l */
    public final HandleHitTestExcerptShapeAction m37786l() {
        ShapeHandlerManager shapeHandlerManager = EditorBundleKt.shapeHandlerManager(getEditorBundle());
        shapeHandlerManager.activeShapeProvider(ShapeHandlerManager.EXCERPT_PROVIDER);
        BaseShapeHandler activeHandler = shapeHandlerManager.getActiveHandler();
        if (activeHandler != null) {
            activeHandler.startExcerptEdit(new StartExcerptEditArgs(this.hitTestVirtualPage, this.hitTestShape, this.excerptCollectionList, this.noteModelList));
        }
        return this;
    }

    /* renamed from: m */
    public final Observable<HandleHitTestExcerptShapeAction> m37787m() {
        Observable<HandleHitTestExcerptShapeAction> map = RxBaseAppActionKt.submitRequestToNote(this, new LoadExcerptCollectionListBySourceShapeIdRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.hitTestShape.getShapeUniqueId())).map(new C8767d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<HandleHitTestExcerptShapeAction> m37788n() {
        Sequence asSequence;
        Sequence map;
        List list;
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.excerptCollectionList);
        map = SequencesKt___SequencesKt.map(asSequence, new Function1<ExcerptCollectionModel, String>() { // from class: com.onyx.android.sdk.universal.editor.action.excerpt.HandleHitTestExcerptShapeAction$loadNoteModelList$idList$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ExcerptCollectionModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getQuoteDocId();
            }
        });
        list = SequencesKt___SequencesKt.toList(map);
        Observable<HandleHitTestExcerptShapeAction> map2 = RxBaseAppActionKt.submitRequestToNote(this, new LoadNoteModelListByIdListRequest(EditorBundleKt.noteBundle(getEditorBundle()), list)).map(new C8768e());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: o */
    public final HandleHitTestExcerptShapeAction m37789o() {
        EditorBundleKt.postEvent(getEditorBundle(), new ShowExcerptPopupEvent(new ShowExcerptPopupArgs(this.hitTestVirtualPage, this.hitTestShape, this.excerptCollectionList, this.noteModelList, false, 16, null)));
        return this;
    }

    /* renamed from: p */
    public final HandleHitTestExcerptShapeAction m37790p() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.excerptCollectionList);
        ExcerptCollectionModel excerptCollectionModel = (ExcerptCollectionModel) firstOrNull;
        if (excerptCollectionModel == null) {
            return this;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new SplitScreenShowQuoteEvent(excerptCollectionModel.getSourceShapeId(), excerptCollectionModel.getQuoteDocId(), excerptCollectionModel.getQuoteShapeId()));
        return this;
    }
}
