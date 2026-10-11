package com.onyx.galaxy.note.editor.action;

import android.graphics.RectF;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.action.shape.InsertShapesAction;
import com.onyx.android.sdk.universal.editor.events.note.HandleQuickCopyDragEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.editor.action.QuickCopyHandleAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u0017¨\u0006 "}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "r", "boxInfo", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "q", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapes", "t", "", "s", "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", C6999h.f39688c, "Ljava/util/List;", "Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;", "i", "Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;", "dragEvent", "j", "transformShapes", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nQuickCopyHandleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickCopyHandleAction.kt\ncom/onyx/galaxy/note/editor/action/QuickCopyHandleAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1#2:135\n1#2:137\n2634#3:136\n*S KotlinDebug\n*F\n+ 1 QuickCopyHandleAction.kt\ncom/onyx/galaxy/note/editor/action/QuickCopyHandleAction\n*L\n123#1:137\n123#1:136\n*E\n"})
/* loaded from: classes9.dex */
public final class QuickCopyHandleAction extends RxBaseNoteAppAction<Boolean> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager editorBundleManager;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final HandleQuickCopyDragEvent dragEvent;

    /* renamed from: j, reason: from kotlin metadata */
    public List<? extends Shape> transformShapes;

    /* renamed from: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$a */
    /* loaded from: classes9.dex */
    public static final class C11793a<T> implements Consumer {
        public C11793a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QuickCopyHandleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            QuickCopyHandleAction quickCopyHandleAction = QuickCopyHandleAction.this;
            quickCopyHandleAction.transformShapes = quickCopyHandleAction.m45624t(quickCopyHandleAction.shapes);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$b */
    /* loaded from: classes9.dex */
    public static final class C11794b<T, R> implements Function {
        public C11794b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull QuickCopyHandleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuickCopyHandleAction.this.m45622r();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$c */
    /* loaded from: classes9.dex */
    public static final class C11795c<T, R> implements Function {
        public C11795c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return QuickCopyHandleAction.this.m45620n(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$d */
    /* loaded from: classes9.dex */
    public static final class C11796d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ TouchPoint f58130f;

        public C11796d(TouchPoint touchPoint) {
            this.f58130f = touchPoint;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends BoxInfo> apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getOriginRectF().isEmpty() ? QuickCopyHandleAction.this.m45621q(new TouchPoint(this.f58130f.getX(), this.f58130f.getY())) : Observable.just(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$e */
    /* loaded from: classes9.dex */
    public static final class C11797e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Ref.ObjectRef<TouchPoint> f58131e;

        public C11797e(Ref.ObjectRef<TouchPoint> objectRef) {
            this.f58131e = objectRef;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(this.f58131e.element != null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public QuickCopyHandleAction(@NotNull EditorBundleManager editorBundleManager, @NotNull List<? extends Shape> shapes, @NotNull HandleQuickCopyDragEvent dragEvent) {
        Intrinsics.checkNotNullParameter(editorBundleManager, "editorBundleManager");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Intrinsics.checkNotNullParameter(dragEvent, "dragEvent");
        this.editorBundleManager = editorBundleManager;
        this.shapes = shapes;
        this.dragEvent = dragEvent;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [T, com.onyx.android.sdk.base.data.TouchPoint] */
    /* renamed from: o */
    public static final void m45618o(float f, float f2, Ref.ObjectRef targetPoint, BoxInfo it2) {
        Intrinsics.checkNotNullParameter(targetPoint, "$targetPoint");
        Intrinsics.checkNotNullParameter(it2, "it");
        targetPoint.element = new TouchPoint(Math.max(it2.getVisibleRect().left, f), Math.max(f2, it2.getVisibleRect().top));
    }

    /* renamed from: p */
    public static final void m45619p(QuickCopyHandleAction this$0, BoxInfo it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m45623s();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(this.editorBundleManager.focusEditorBundle())).doOnNext(new C11793a()).map(new C11794b()).observeOn(AndroidSchedulers.mainThread()).flatMap(new C11795c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final Observable<Boolean> m45620n(BoxInfo boxInfo) {
        if (boxInfo.getOriginRectF().isEmpty()) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ShapeRectUtils shapeRectUtils = ShapeRectUtils.INSTANCE;
        List<? extends Shape> list = this.transformShapes;
        List<? extends Shape> list2 = null;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformShapes");
            list = null;
        }
        RectF boundingScreenRectWithWidth = shapeRectUtils.getBoundingScreenRectWithWidth(list, boxInfo);
        List<? extends Shape> list3 = this.transformShapes;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformShapes");
        } else {
            list2 = list3;
        }
        RectF originBoundingScreenRect = shapeRectUtils.getOriginBoundingScreenRect(list2, boxInfo);
        if (boundingScreenRectWithWidth.isEmpty()) {
            Observable<Boolean> just2 = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        float width = boundingScreenRectWithWidth.width();
        TouchPoint movedPoint = this.dragEvent.getMovedPoint();
        float f = 2;
        float x = movedPoint.getX() - (width / f);
        float y = movedPoint.getY() - (boundingScreenRectWithWidth.height() / f);
        if (!((StringUtils.equals(this.editorBundleManager.getFocusId(), this.dragEvent.getId()) && new RectF(x, y, width + x, boundingScreenRectWithWidth.height() + y).intersect(boundingScreenRectWithWidth)) ? false : true)) {
            Observable<Boolean> just3 = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just3, "just(...)");
            return just3;
        }
        if (!StringUtils.equals(this.editorBundleManager.getFocusId(), this.dragEvent.getId())) {
            booleanRef.element = true;
            m45623s();
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final float x2 = movedPoint.getX() - (originBoundingScreenRect.width() / f);
        final float y2 = movedPoint.getY() - (originBoundingScreenRect.height() / f);
        Observable<R> flatMap = m45621q(new TouchPoint(x2, y2)).flatMap(new C11796d(movedPoint));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(RxjavaKt.doOnNextIf(flatMap, new Function1<BoxInfo, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$handleCopy$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.getOriginRectF().isEmpty());
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.mbl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                QuickCopyHandleAction.m45618o(x2, y2, objectRef, (BoxInfo) obj);
            }
        }), new Function1<BoxInfo, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$handleCopy$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf((objectRef.element == null || booleanRef.element) ? false : true);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.nbl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                QuickCopyHandleAction.m45619p(QuickCopyHandleAction.this, (BoxInfo) obj);
            }
        }), new Function1<BoxInfo, Boolean>() { // from class: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$handleCopy$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(objectRef.element != null);
            }
        }, new Function1<BoxInfo, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$handleCopy$7

            /* renamed from: com.onyx.galaxy.note.editor.action.QuickCopyHandleAction$handleCopy$7$a */
            /* loaded from: classes9.dex */
            public static final class C11798a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ QuickCopyHandleAction f58132e;

                /* renamed from: f */
                public final /* synthetic */ Ref.ObjectRef<TouchPoint> f58133f;

                public C11798a(QuickCopyHandleAction quickCopyHandleAction, Ref.ObjectRef<TouchPoint> objectRef) {
                    this.f58132e = quickCopyHandleAction;
                    this.f58133f = objectRef;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends InsertShapesAction> apply(@NotNull BoxInfo it2) {
                    EditorBundleManager editorBundleManager;
                    List list;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    editorBundleManager = this.f58132e.editorBundleManager;
                    EditorBundle focusEditorBundle = editorBundleManager.focusEditorBundle();
                    list = this.f58132e.transformShapes;
                    if (list == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("transformShapes");
                        list = null;
                    }
                    TouchPoint touchPoint = this.f58133f.element;
                    Intrinsics.checkNotNull(touchPoint);
                    return new InsertShapesAction(focusEditorBundle, list, touchPoint, true).build();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull BoxInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<? extends Object> flatMap2 = Observable.just(it2).delay(300L, TimeUnit.MILLISECONDS).flatMap(new C11798a(QuickCopyHandleAction.this, objectRef));
                Intrinsics.checkNotNullExpressionValue(flatMap2, "flatMap(...)");
                return flatMap2;
            }
        }).map(new C11797e(objectRef));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<BoxInfo> m45621q(TouchPoint point) {
        return CommonEditorActionsKt.hitTestVisibleBoxObservable(this.editorBundleManager.focusEditorBundle(), point);
    }

    /* renamed from: r */
    public final BoxInfo m45622r() {
        Object firstOrNull;
        String pageUniqueId;
        List<? extends Shape> list = this.transformShapes;
        Object obj = null;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("transformShapes");
            list = null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
        Shape shape = (Shape) firstOrNull;
        if (shape == null || (pageUniqueId = shape.getPageUniqueId()) == null) {
            return new BoxInfo();
        }
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(this.editorBundleManager.focusEditorBundle()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (StringUtils.equals(pageUniqueId, ((BoxInfo) next).getId())) {
                obj = next;
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        return boxInfo == null ? new BoxInfo() : boxInfo;
    }

    /* renamed from: s */
    public final void m45623s() {
        this.editorBundleManager.postEvent(new QuitTransformEvent(false, 1, null));
        EditorBundleManager.updateFocusId$default(this.editorBundleManager, this.dragEvent.getId(), false, 2, null);
    }

    /* renamed from: t */
    public final List<Shape> m45624t(List<? extends Shape> shapes) {
        List<Shape> emptyList;
        Shape firstTargetShape = ShapeTypes.INSTANCE.firstTargetShape(shapes);
        if (firstTargetShape == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        String pageUniqueId = firstTargetShape.getPageUniqueId();
        List<Shape> cloneNewShapes = ShapeCopyUtils.INSTANCE.cloneNewShapes(shapes);
        for (Shape shape : cloneNewShapes) {
            shape.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(shape));
            shape.setPageUniqueId(pageUniqueId);
            shape.resetConnection();
        }
        return cloneNewShapes;
    }
}
