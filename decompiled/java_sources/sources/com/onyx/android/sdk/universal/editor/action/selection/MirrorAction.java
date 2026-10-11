package com.onyx.android.sdk.universal.editor.action.selection;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MirrorType;
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

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B-\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/selection/MirrorAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "mirrorType", "setMirrorType", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;", "selectionRect", "l", "m", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "i", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "j", "Ljava/util/List;", "shapes", C4921e.f26537n, "Lcom/onyx/android/sdk/geometry/data/MirrorType;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class MirrorAction extends RxBaseAppAction<MirrorAction> {

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
    @NotNull
    public MirrorType mirrorType;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.MirrorAction$a */
    /* loaded from: classes8.dex */
    public static final class C9909a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ SelectionRect f50585e;

        /* renamed from: f */
        public final /* synthetic */ MirrorAction f50586f;

        public C9909a(SelectionRect selectionRect, MirrorAction mirrorAction) {
            this.f50585e = selectionRect;
            this.f50586f = mirrorAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull MirrorAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f50585e.onMirror(this.f50586f.mirrorType));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.MirrorAction$b */
    /* loaded from: classes8.dex */
    public static final class C9910b<T, R> implements Function {
        public C9910b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends MirrorAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MirrorAction.this.m39907m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.MirrorAction$c */
    /* loaded from: classes8.dex */
    public static final class C9911c<T> implements Consumer {
        public C9911c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull SelectionRect it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeMatrixUtils.INSTANCE.mirror(MirrorAction.this.shapes, MirrorAction.this.mirrorType, it2.getCenterPoint());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.MirrorAction$d */
    /* loaded from: classes8.dex */
    public static final class C9912d<T, R> implements Function {
        public C9912d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MirrorAction apply(@NotNull SelectionRect it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MirrorAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.selection.MirrorAction$e */
    /* loaded from: classes8.dex */
    public static final class C9913e<T, R> implements Function {
        public C9913e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MirrorAction apply(@NotNull DrawSelectionRectAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MirrorAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MirrorAction(@NotNull EditorBundle editorBundle, @NotNull RenderContext renderContext, @NotNull BoxInfo virtualBoxInfo, @NotNull List<? extends Shape> shapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.renderContext = renderContext;
        this.virtualBoxInfo = virtualBoxInfo;
        this.shapes = shapes;
        this.mirrorType = MirrorType.XAxisMirror;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<MirrorAction> create() {
        SelectionRect selectionRect = this.renderContext.getSelectionRect();
        if (selectionRect == null) {
            Observable<MirrorAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = Observable.just(this).observeOn(getMainUIScheduler()).map(new C9909a(selectionRect, this));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable flatMap = RxjavaKt.flatMapIfTrue(map, m39906l(selectionRect.copy())).flatMap(new C9910b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<MirrorAction> m39906l(SelectionRect selectionRect) {
        Observable<MirrorAction> map = Observable.just(selectionRect).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C9911c()).observeOn(getMainUIScheduler()).map(new C9912d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<MirrorAction> m39907m() {
        Observable map = new DrawSelectionRectAction(getEditorBundle(), this.renderContext, this.virtualBoxInfo, CollectionKt.ensureList(this.shapes), false, 16, null).build().map(new C9913e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final MirrorAction setMirrorType(@NotNull MirrorType mirrorType) {
        Intrinsics.checkNotNullParameter(mirrorType, "mirrorType");
        this.mirrorType = mirrorType;
        return this;
    }
}
