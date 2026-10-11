package com.onyx.android.sdk.universal.editor.action.selection;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b\u001e\u0010\u001fJ\u0016\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0014J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u001b¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "dx", "dy", "setDistance", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "selectionRect", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "m", "l", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Ljava/util/List;", "shapes", C4921e.f26537n, "F", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TranslateAction extends RxBaseAppAction<TranslateAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo virtualBoxInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: k, reason: from kotlin metadata */
    public float dx;

    /* renamed from: l, reason: from kotlin metadata */
    public float dy;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.TranslateAction$a */
    /* loaded from: classes8.dex */
    public static final class C9972a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ SelectionRect f50710f;

        public C9972a(SelectionRect selectionRect) {
            this.f50710f = selectionRect;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TouchPoint apply(@NotNull TranslateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TranslateAction.this.m40038m(this.f50710f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.TranslateAction$b */
    /* loaded from: classes8.dex */
    public static final class C9973b<T> implements Consumer {
        public C9973b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull TouchPoint it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeMatrixUtils.INSTANCE.translate(TranslateAction.this.shapes, it2.getX(), it2.getY());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.TranslateAction$c */
    /* loaded from: classes8.dex */
    public static final class C9974c<T, R> implements Function {
        public C9974c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends TranslateAction> apply(@NotNull TouchPoint it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TranslateAction.this.m40037l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.TranslateAction$d */
    /* loaded from: classes8.dex */
    public static final class C9975d<T, R> implements Function {
        public C9975d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TranslateAction apply(@NotNull DrawSelectionRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TranslateAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TranslateAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapes = shapes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<TranslateAction> create() {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect == null) {
            Observable<TranslateAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<TranslateAction> flatMap = Observable.just(this).observeOn(getMainUIScheduler()).map(new C9972a(selectionRect)).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9973b()).observeOn(getMainUIScheduler()).flatMap(new C9974c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<TranslateAction> m40037l() {
        Observable map = new DrawSelectionRectAction(getEditorBundle(), this.renderContext, this.virtualBoxInfo, CollectionKt.ensureList(this.shapes), false, 16, null).build().map(new C9975d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final TouchPoint m40038m(SelectionRect selectionRect) {
        TouchPoint onTranslate = selectionRect.onTranslate(this.dx, this.dy);
        this.renderContext.setSelectionRect(selectionRect);
        return onTranslate;
    }

    @NotNull
    public final TranslateAction setDistance(float dx, float dy) {
        this.dx = dx;
        this.dy = dy;
        return this;
    }
}
