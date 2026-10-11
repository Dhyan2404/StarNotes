package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.universalshape.StartEditUniversalShapeAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "i", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class HandleHitTestUniversalShapeAction extends RxBaseAppAction<HandleHitTestUniversalShapeAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestUniversalShapeAction$a */
    /* loaded from: classes8.dex */
    public static final class C10096a<T, R> implements Function {
        public C10096a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull HandleHitTestUniversalShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestUniversalShapeAction.this.m40239l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestUniversalShapeAction$b */
    /* loaded from: classes8.dex */
    public static final class C10097b<T, R> implements Function {
        public C10097b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandleHitTestUniversalShapeAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HandleHitTestUniversalShapeAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestUniversalShapeAction$c */
    /* loaded from: classes8.dex */
    public static final class C10098c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f50915f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f50916g;

        /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestUniversalShapeAction$c$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f50917e;

            public a(List<Shape> list) {
                this.f50917e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull GetReferenceShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                CollectionKt.safeAddAll(this.f50917e, it2.getReferenceShapeList());
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestUniversalShapeAction$c$b */
        /* loaded from: classes8.dex */
        public static final class b<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ List<Shape> f50918e;

            public b(List<Shape> list) {
                this.f50918e = list;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Boolean apply(@NotNull GetReferenceShapeAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(this.f50918e.addAll(GetReferenceShapeAction.mergeShapeList$default(it2, false, 1, null)));
            }
        }

        public C10098c(List<Shape> list, List<Shape> list2) {
            this.f50915f = list;
            this.f50916g = list2;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull HandleHitTestUniversalShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GetReferenceShapeAction(HandleHitTestUniversalShapeAction.this.getEditorBundle(), this.f50915f).build().doOnNext(new a(this.f50916g)).map(new b(this.f50915f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestUniversalShapeAction$d */
    /* loaded from: classes8.dex */
    public static final class C10099d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f50920f;

        public C10099d(List<Shape> list) {
            this.f50920f = list;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends DeleteShapesAction> m40246a(boolean z) {
            return new DeleteShapesAction(HandleHitTestUniversalShapeAction.this.getEditorBundle(), this.f50920f, false, false, 4, null).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40246a(((Boolean) obj).booleanValue());
        }
    }

    @SourceDebugExtension({"SMAP\nHandleHitTestUniversalShapeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandleHitTestUniversalShapeAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/HandleHitTestUniversalShapeAction$startUniversalShapeEdit$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.HandleHitTestUniversalShapeAction$e */
    /* loaded from: classes8.dex */
    public static final class C10100e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ UniversalShape f50922f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f50923g;

        public C10100e(UniversalShape universalShape, List<Shape> list) {
            this.f50922f = universalShape;
            this.f50923g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StartEditUniversalShapeAction> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StartEditUniversalShapeAction startEditUniversalShapeAction = new StartEditUniversalShapeAction(HandleHitTestUniversalShapeAction.this.getEditorBundle(), this.f50922f, true);
            startEditUniversalShapeAction.setReferenceShapes(this.f50923g);
            return startEditUniversalShapeAction.build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleHitTestUniversalShapeAction(@NotNull EditorBundle editorBundle, @NotNull Shape hitTestShape, @NotNull TouchPoint touchPoint) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.hitTestShape = hitTestShape;
        this.touchPoint = touchPoint;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HandleHitTestUniversalShapeAction> create() {
        Observable<HandleHitTestUniversalShapeAction> map = Observable.just(this).flatMap(new C10096a()).map(new C10097b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<?> m40239l() {
        return EditorBundleKt.shapeHandlerManager(getEditorBundle()).isSelectionHandler() ? new HandleHitTestShapeAndStartTransformAction(getEditorBundle(), this.hitTestShape, this.touchPoint).build() : m40240m();
    }

    /* renamed from: m */
    public final Observable<?> m40240m() {
        List mutableListOf;
        UniversalShape universalShape = (UniversalShape) this.hitTestShape;
        if (universalShape == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(universalShape);
        ArrayList arrayList = new ArrayList();
        Observable<?> flatMap = Observable.just(this).flatMap(new C10098c(mutableListOf, arrayList)).flatMap(new C10099d(mutableListOf)).flatMap(new C10100e(universalShape, arrayList));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
