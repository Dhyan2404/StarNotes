package com.onyx.android.sdk.universal.editor.action.erase;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.erase.EraseArgs;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.request.erase.StrokesErasingRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B9\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0002H\u0002J\u0014\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\"\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u0004\u0018\u00010\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001fR\u0014\u0010#\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\"¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/request/erase/StrokesErasingRequest;", "m", AbstractLogger.REQUEST, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBean", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "l", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "i", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "eraseContext", "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "j", "Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;", "eraseArgs", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StrokeErasingAction extends RxBaseAppAction<StrokeErasingAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final EraseContext eraseContext;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final EraseArgs eraseArgs;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public final NotePage notePage;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final WorkBundle workBundle;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$a */
    /* loaded from: classes8.dex */
    public static final class C8701a<T, R> implements Function {
        public C8701a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StrokesErasingRequest> apply(@NotNull StrokeErasingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StrokeErasingAction.this.m37694m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$b */
    /* loaded from: classes8.dex */
    public static final class C8702b<T, R> implements Function {
        public C8702b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StrokesErasingRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StrokeErasingAction.this.m37695n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$c */
    /* loaded from: classes8.dex */
    public static final class C8703c<T, R> implements Function {
        public C8703c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StrokeErasingAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return StrokeErasingAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$d */
    /* loaded from: classes8.dex */
    public static final class C8704d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ChangedShapeBean f48378e;

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f48379f;

        /* JADX WARN: Multi-variable type inference failed */
        public C8704d(ChangedShapeBean changedShapeBean, List<? extends Shape> list) {
            this.f48378e = changedShapeBean;
            this.f48379f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f48378e.addRemoveShapeList(this.f48379f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$e */
    /* loaded from: classes8.dex */
    public static final class C8705e<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f48381f;

        /* JADX WARN: Multi-variable type inference failed */
        public C8705e(List<? extends Shape> list) {
            this.f48381f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StrokeErasingAction.this.eraseContext.unionEraseRect(ShapeRectUtils.INSTANCE.roundBoundingRectWithWidth(StrokeErasingAction.this.renderContext, this.f48381f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$f */
    /* loaded from: classes8.dex */
    public static final class C8706f<T> implements Consumer {
        public C8706f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StrokesErasingRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StrokeErasingAction.this.eraseContext.unionEraseRect(it2.getEraseRect());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$g */
    /* loaded from: classes8.dex */
    public static final class C8707g<T> implements Consumer {
        public C8707g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull StrokesErasingRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.setEraseRect(StrokeErasingAction.this.eraseContext.getEraseRect());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$h */
    /* loaded from: classes8.dex */
    public static final class C8708h<T, R> implements Function {

        /* renamed from: e */
        public static final C8708h<T, R> f48384e = new C8708h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StrokeErasingAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull EraseContext eraseContext, @NotNull EraseArgs eraseArgs, @NotNull BoxInfo virtualBoxInfo, @Nullable NotePage notePage) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        Intrinsics.checkNotNullParameter(eraseArgs, "eraseArgs");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        this.renderContext = renderContext;
        this.eraseContext = eraseContext;
        this.eraseArgs = eraseArgs;
        this.virtualBoxInfo = virtualBoxInfo;
        this.notePage = notePage;
        this.workBundle = editorBundle.getWorkBundle();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StrokeErasingAction> create() {
        Observable<StrokeErasingAction> map = Observable.just(this).flatMap(new C8701a()).flatMap(new C8702b()).map(new C8703c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<?> m37693l(ChangedShapeBean changedShapeBean, List<? extends Shape> shapes) {
        DeleteShapesAction deleteShapesAction = new DeleteShapesAction(getEditorBundle(), shapes, false, false, 8, null);
        deleteShapesAction.setRender(false);
        Observable<DeleteShapesAction> doOnNext = deleteShapesAction.build().doOnNext(new C8704d(changedShapeBean, shapes)).doOnNext(new C8705e(shapes));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<StrokesErasingRequest> m37694m() {
        StrokesErasingRequest strokesErasingRequest = new StrokesErasingRequest(this.workBundle, this.renderContext, this.eraseContext, this.eraseArgs);
        strokesErasingRequest.setNotePage(this.notePage);
        Observable<StrokesErasingRequest> doOnNext = RxBaseAppActionKt.submitRequestToNote(this, strokesErasingRequest).doOnNext(new C8706f()).doOnNext(new C8707g());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final Observable<?> m37695n(StrokesErasingRequest request) {
        final ChangedShapeBean changedShapeBean = request.getChangedShapeBean();
        List<Shape> removeShapeList = changedShapeBean.getRemoveShapeList();
        if (CollectionKt.isNullOrEmpty(removeShapeList)) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        RectF eraseRect = request.getEraseRect();
        if (eraseRect == null) {
            Observable<?> just2 = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        if (RectFKt.isOutside(BoxInfoUtils.INSTANCE.mapToScreenRectF(eraseRect, this.virtualBoxInfo), this.virtualBoxInfo.getVisibleRect())) {
            Observable<R> map = new GetReferenceShapeAction(getEditorBundle(), removeShapeList).build().map(C8708h.f48384e);
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            return RxjavaKt.flatMapIf(map, new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$erasingReferenceShapes$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(!it2.isEmpty());
                }
            }, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.erase.StrokeErasingAction$erasingReferenceShapes$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> it2) {
                    Observable<? extends Object> m37693l;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m37693l = StrokeErasingAction.this.m37693l(changedShapeBean, it2);
                    return m37693l;
                }
            });
        }
        Observable<?> just3 = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
        return just3;
    }
}
