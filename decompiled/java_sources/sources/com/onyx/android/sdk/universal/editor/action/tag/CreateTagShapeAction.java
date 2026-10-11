package com.onyx.android.sdk.universal.editor.action.tag;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.request.tag.CreateTagShapesRequest;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTagBean;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.common.EnsureNotePageAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.EditorShapesActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001f\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b&\u0010'J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u001c\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0006\u0010\u000b\u001a\u00020\tH\u0002J0\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\rH\u0002J\u0014\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00020\u0004H\u0002J\u000e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\b\u001a\u00020\u0006H\u0002R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/tag/CreateTagShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C4921e.f26528e, "boxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "m", "notePage", "l", "", "shapeList", "referenceShapeList", "p", "Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;", "q", "", "r", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;", "tagBean", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "startPoint", "j", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", C4921e.f26537n, "Ljava/util/List;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CreateTagShapeAction extends RxBaseAppAction<List<? extends Shape>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ShapeTagBean tagBean;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint startPoint;

    /* renamed from: j, reason: from kotlin metadata */
    public BoxInfo virtualBoxInfo;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10169a<T, R> implements Function {
        public C10169a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateTagShapeAction createTagShapeAction = CreateTagShapeAction.this;
            BoxInfo boxInfo = createTagShapeAction.virtualBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            return CommonEditorActionsKt.updateVirtualPage(createTagShapeAction, boxInfo.getId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10170b<T, R> implements Function {
        public C10170b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateTagShapeAction.this.shapeList;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10171c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CreateTagShapesRequest f51040e;

        public C10171c(CreateTagShapesRequest createTagShapesRequest) {
            this.f51040e = createTagShapesRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull CreateTagShapesRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51040e.getShapeList();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10172d<T, R> implements Function {
        public C10172d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull CreateTagShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateTagShapeAction.this.m40361o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C10173e<T, R> implements Function {
        public C10173e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends NotePage> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateTagShapeAction.this.m40359m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C10174f<T, R> implements Function {
        public C10174f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull NotePage it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateTagShapeAction.this.m40358l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$g */
    /* loaded from: classes8.dex */
    public static final class C10175g<T> implements Consumer {
        public C10175g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateTagShapeAction.this.shapeList = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$h */
    /* loaded from: classes8.dex */
    public static final class C10176h<T, R> implements Function {
        public C10176h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Map<Shape, BoxInfo>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateTagShapeAction createTagShapeAction = CreateTagShapeAction.this;
            BoxInfo boxInfo = createTagShapeAction.virtualBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
                boxInfo = null;
            }
            return EditorShapesActionsKt.addCrossPageShapes$default(createTagShapeAction, boxInfo, it2, null, 4, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$i */
    /* loaded from: classes8.dex */
    public static final class C10178i<T, R> implements Function {
        public C10178i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull Map<Shape, BoxInfo> it2) {
            List list;
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateTagShapeAction createTagShapeAction = CreateTagShapeAction.this;
            List list2 = createTagShapeAction.shapeList;
            list = CollectionsKt___CollectionsKt.toList(it2.keySet());
            return createTagShapeAction.m40362p(list2, list);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$j */
    /* loaded from: classes8.dex */
    public static final class C10179j<T> implements Consumer {
        public C10179j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateTagShapeAction.this.shapeList = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$k */
    /* loaded from: classes8.dex */
    public static final class C10180k<T, R> implements Function {
        public C10180k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<PageTagModel>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateTagShapeAction.this.m40363q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$l */
    /* loaded from: classes8.dex */
    public static final class C10181l<T, R> implements Function {
        public C10181l() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends String> apply(@NotNull List<? extends PageTagModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CreateTagShapeAction.this.m40364r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$m */
    /* loaded from: classes8.dex */
    public static final class C10182m<T> implements Consumer {
        public C10182m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CreateTagShapeAction.this.virtualBoxInfo = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$n */
    /* loaded from: classes8.dex */
    public static final class C10183n<T, R> implements Function {

        /* renamed from: e */
        public static final C10183n<T, R> f51052e = new C10183n<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new BoxInfo();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$o */
    /* loaded from: classes8.dex */
    public static final class C10184o<T, R> implements Function {
        public C10184o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BoxInfo boxInfo = CreateTagShapeAction.this.virtualBoxInfo;
            if (boxInfo != null) {
                return boxInfo;
            }
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            return null;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$p */
    /* loaded from: classes8.dex */
    public static final class C10185p<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f51054e;

        /* JADX WARN: Multi-variable type inference failed */
        public C10185p(List<? extends Shape> list) {
            this.f51054e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f51054e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateTagShapeAction(@NotNull EditorBundle editorBundle, @NotNull ShapeTagBean tagBean, @NotNull TouchPoint startPoint) {
        super(editorBundle);
        List<? extends Shape> emptyList;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(tagBean, "tagBean");
        Intrinsics.checkNotNullParameter(startPoint, "startPoint");
        this.tagBean = tagBean;
        this.startPoint = startPoint;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapeList = emptyList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<Shape>> create() {
        Observable<List<Shape>> map = Observable.just(this).observeOn(getMainUIScheduler()).flatMap(new C10172d()).flatMap(new C10173e()).flatMap(new C10174f()).doOnNext(new C10175g()).flatMap(new C10176h()).flatMap(new C10178i()).doOnNext(new C10179j()).flatMap(new C10180k()).flatMap(new C10181l()).flatMap(new C10169a()).map(new C10170b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<List<Shape>> m40358l(NotePage notePage) {
        TouchPoint touchPoint = new TouchPoint(this.startPoint);
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualBoxInfo;
        BoxInfo boxInfo2 = null;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        touchPoint.applyMatrix(boxInfoUtils.noteNormalizeMatrix(boxInfo));
        BoxInfo boxInfo3 = this.virtualBoxInfo;
        if (boxInfo3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        } else {
            boxInfo2 = boxInfo3;
        }
        RenderContext m40360n = m40360n(boxInfo2);
        m40360n.getRenderMeasure().setPageInfo(notePage.getPageInfo());
        CreateTagShapesRequest createTagShapesRequest = new CreateTagShapesRequest(EditorBundleKt.noteBundle(getEditorBundle()), m40360n, notePage, touchPoint, this.tagBean);
        Observable<List<Shape>> map = RxBaseAppActionKt.submitRequestToNote(this, createTagShapesRequest).map(new C10171c(createTagShapesRequest));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<NotePage> m40359m(BoxInfo boxInfo) {
        return new EnsureNotePageAction(getEditorBundle(), boxInfo).build();
    }

    /* renamed from: n */
    public final RenderContext m40360n(BoxInfo boxInfo) {
        return new RenderContext(new Paint(), new Matrix());
    }

    /* renamed from: o */
    public final Observable<BoxInfo> m40361o() {
        Observable<BoxInfo> onErrorReturn = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, this.startPoint).doOnNext(new C10182m()).onErrorReturn(C10183n.f51052e);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        Observable map = RxjavaKt.flatMapIf(onErrorReturn, new Function1<BoxInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$hitTestValidBoxInfo$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getBox().isEmpty());
            }
        }, new Function1<BoxInfo, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$hitTestValidBoxInfo$4

            /* renamed from: com.onyx.android.sdk.universal.editor.action.tag.CreateTagShapeAction$hitTestValidBoxInfo$4$a */
            /* loaded from: classes8.dex */
            public static final class C10177a<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ CreateTagShapeAction f51046e;

                public C10177a(CreateTagShapeAction createTagShapeAction) {
                    this.f51046e = createTagShapeAction;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull BoxInfo it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f51046e.virtualBoxInfo = it2;
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<BoxInfo> doOnNext = CommonEditorActionsKt.loadCurrentVisibleBox(CreateTagShapeAction.this).doOnNext(new C10177a(CreateTagShapeAction.this));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                return doOnNext;
            }
        }).map(new C10184o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<List<Shape>> m40362p(Collection<? extends Shape> shapeList, Collection<? extends Shape> referenceShapeList) {
        List mergeList = CollectionKt.mergeList(shapeList, referenceShapeList);
        Observable<List<Shape>> map = ForceRenderSliceListActionsKt.forceRenderNoteDirtyRectToDisplay$default(this, mergeList, false, 2, null).map(new C10185p(mergeList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<List<PageTagModel>> m40363q() {
        EditorBundle editorBundle = getEditorBundle();
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        return new SavePageTagModelAction(editorBundle, boxInfo.getId(), this.tagBean).build();
    }

    /* renamed from: r */
    public final Observable<String> m40364r() {
        EditorBundle editorBundle = getEditorBundle();
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
            boxInfo = null;
        }
        return new SaveTagPageThumbnailAction(editorBundle, boxInfo.getId()).build();
    }
}
