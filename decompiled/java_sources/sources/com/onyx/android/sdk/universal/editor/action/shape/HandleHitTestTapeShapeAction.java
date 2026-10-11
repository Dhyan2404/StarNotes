package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.tape.ToggleTapeShapeStrokeStyleRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ForceRenderSliceListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0002J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u0014\u0010\f\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestTapeShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "l", "shapeList", GoogleApiAvailabilityLight.f29016b, "m", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleHitTestTapeShapeAction extends RxBaseAppAction<HandleHitTestTapeShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestTapeShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10090a<T, R> implements Function {
        public C10090a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestTapeShapeAction.this.m40232n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestTapeShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10091b<T, R> implements Function {
        public C10091b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HandleHitTestTapeShapeAction> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestTapeShapeAction.this.m40231m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestTapeShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10092c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f50906e;

        public C10092c(List<Shape> list) {
            this.f50906e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CollectionKt.safeAddAll(this.f50906e, GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestTapeShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10093d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f50907e;

        public C10093d(List<Shape> list) {
            this.f50907e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50907e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestTapeShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C10094e<T, R> implements Function {
        public C10094e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestTapeShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestTapeShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestTapeShapeAction$f */
    /* loaded from: classes8.dex */
    public static final class C10095f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<Shape> f50909e;

        /* JADX WARN: Multi-variable type inference failed */
        public C10095f(List<? extends Shape> list) {
            this.f50909e = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull ToggleTapeShapeStrokeStyleRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50909e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleHitTestTapeShapeAction(@NotNull EditorBundle editorBundle, @NotNull Shape hitTestShape, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.hitTestShape = hitTestShape;
        this.touchPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleHitTestTapeShapeAction> create() {
        Observable<HandleHitTestTapeShapeAction> flatMap = m40230l().flatMap(new C10090a()).flatMap(new C10091b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<Shape>> m40230l() {
        List mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(this.hitTestShape);
        Observable map = new GetReferenceShapeAction(getEditorBundle(), mutableListOf).build().doOnNext(new C10092c(mutableListOf)).map(new C10093d(mutableListOf));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<HandleHitTestTapeShapeAction> m40231m(List<? extends Shape> shapeList) {
        Observable map = ForceRenderSliceListActionsKt.forceRenderIntersectsNoteDirtyRectToDisplay(this, shapeList).map(new C10094e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<List<Shape>> m40232n(List<? extends Shape> shapeList) {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) ShapeTypes.INSTANCE.filterNormalShapes(shapeList));
        Shape shape = (Shape) firstOrNull;
        if (shape == null) {
            shape = this.hitTestShape;
        }
        Observable<List<Shape>> map = RxBaseAppActionKt.submitRequestToNote(this, new ToggleTapeShapeStrokeStyleRequest(EditorBundleKt.noteBundle(getEditorBundle()), shape)).map(new C10095f(shapeList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
