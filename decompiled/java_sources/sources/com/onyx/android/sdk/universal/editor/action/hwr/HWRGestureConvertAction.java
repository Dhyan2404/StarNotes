package com.onyx.android.sdk.universal.editor.action.hwr;

import android.graphics.Path;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.algorithm.ConvexHullAlgorithm;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.constant.HWRGestureType;
import com.onyx.android.sdk.hwr.utils.HWRLogUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.AreaHitTestsHelper;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.selection.SelectShapesRequest;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.action.shape.DeleteShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.GetReferenceShapeAction;
import com.onyx.android.sdk.universal.editor.bean.HWRConvertContext;
import com.onyx.android.sdk.universal.editor.bean.HWRRecognizeState;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.EnsureNotePageRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 ,2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001,B\u0017\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\"\u001a\u00020\u001f¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\f\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u0014\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\f\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J.\u0010\u0011\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00100\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\"\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0018\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u001b\u001a\u00020\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000fH\u0002J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000fH\u0002R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020$0#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", "r", "u", "candidate", "m", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "", "s", "shapes", "", "addToCmdStack", "q", "boxInfo", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "", "w", "v", "shape", "p", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", "convertContext", "", "", "i", "[Ljava/lang/String;", "supportTypes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRGestureConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,230:1\n1#2:231\n766#3:232\n857#3,2:233\n766#3:235\n857#3,2:236\n766#3:238\n857#3,2:239\n533#3,6:241\n*S KotlinDebug\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction\n*L\n102#1:232\n102#1:233,2\n170#1:235\n170#1:236,2\n171#1:238\n171#1:239,2\n175#1:241,6\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRGestureConvertAction extends RxBaseAppAction<HWRGestureConvertAction> {
    public static final int MIN_SCRIBBLE_ERASE_POINTS = 20;
    public static final long MIN_SCRIBBLE_ERASE_TIME = 500;

    /* renamed from: j */
    public static final boolean f49685j = false;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final HWRConvertContext convertContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final String[] supportTypes;

    @SourceDebugExtension({"SMAP\nHWRGestureConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,230:1\n1855#2:231\n1856#2:238\n1#3:232\n41#4,5:233\n*S KotlinDebug\n*F\n+ 1 HWRGestureConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRGestureConvertAction$applyScribbleDeletionGesture$1\n*L\n109#1:231\n109#1:238\n116#1:233,5\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$a */
    /* loaded from: classes8.dex */
    public static final class C9443a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<BoxInfo> f49688e;

        /* renamed from: f */
        public final /* synthetic */ HWRGestureConvertAction f49689f;

        public C9443a(List<BoxInfo> list, HWRGestureConvertAction hWRGestureConvertAction) {
            this.f49688e = list;
            this.f49689f = hWRGestureConvertAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<Shape, List<Shape>> apply(@NotNull HWRGestureConvertAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ArrayList arrayList = new ArrayList();
            List<BoxInfo> list = this.f49688e;
            HWRGestureConvertAction hWRGestureConvertAction = this.f49689f;
            Shape shape = null;
            for (BoxInfo boxInfo : list) {
                EnsureNotePageRequest ensureNotePageRequest = new EnsureNotePageRequest(hWRGestureConvertAction.getEditorBundle().getWorkBundle(), boxInfo);
                ensureNotePageRequest.execute2();
                Pair m39008s = hWRGestureConvertAction.m39008s(boxInfo, ensureNotePageRequest.getNotePage());
                Object first = m39008s.getFirst();
                Shape shape2 = (Shape) first;
                boolean z = false;
                if (shape == null) {
                    if (shape2 != null) {
                        z = true;
                    }
                }
                if (!z) {
                    first = null;
                }
                Shape shape3 = (Shape) first;
                if (shape3 != null) {
                    shape = shape3;
                }
                CollectionKt.safeAddAll(arrayList, (Collection) m39008s.getSecond());
            }
            return new Pair<>(shape, arrayList);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$b */
    /* loaded from: classes8.dex */
    public static final class C9444b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Ref.BooleanRef f49690e;

        public C9444b(Ref.BooleanRef booleanRef) {
            this.f49690e = booleanRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<? extends Shape, ? extends List<Shape>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f49690e.element = !CollectionKt.isNullOrEmpty(it2.getSecond());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$c */
    /* loaded from: classes8.dex */
    public static final class C9445c<T, R> implements Function {
        public C9445c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRCandidate apply(@NotNull HWRGestureConvertAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRGestureConvertAction.this.m39007r();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$d */
    /* loaded from: classes8.dex */
    public static final class C9446d<T, R> implements Function {
        public C9446d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRGestureConvertAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRGestureConvertAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$e */
    /* loaded from: classes8.dex */
    public static final class C9447e<T, R> implements Function {

        /* renamed from: e */
        public static final C9447e<T, R> f49693e = new C9447e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<Shape> apply(@NotNull GetReferenceShapeAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.mergeShapeList(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$f */
    /* loaded from: classes8.dex */
    public static final class C9448f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ boolean f49695f;

        public C9448f(boolean z) {
            this.f49695f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteShapesAction apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new DeleteShapesAction(HWRGestureConvertAction.this.getEditorBundle(), it2, this.f49695f, false, 8, null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$g */
    /* loaded from: classes8.dex */
    public static final class C9449g<T> implements Consumer {

        /* renamed from: e */
        public static final C9449g<T> f49696e = new C9449g<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            it2.setRender(true);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$h */
    /* loaded from: classes8.dex */
    public static final class C9450h<T, R> implements Function {

        /* renamed from: e */
        public static final C9450h<T, R> f49697e = new C9450h<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends DeleteShapesAction> apply(@NotNull DeleteShapesAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$i */
    /* loaded from: classes8.dex */
    public static final class C9451i<T> implements Consumer {
        public C9451i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRGestureConvertAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRGestureConvertAction.this.m39010v();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRGestureConvertAction(@NotNull EditorBundle editorBundle, @NotNull HWRConvertContext convertContext) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(convertContext, "convertContext");
        this.convertContext = convertContext;
        this.supportTypes = new String[]{HWRGestureType.SCRIBBLE};
    }

    /* renamed from: t */
    public static final boolean m39001t(HWRGestureConvertAction this$0, Shape it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        return this$0.m39005p(ShapeTypes.INSTANCE.getTargetShape(it2));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRGestureConvertAction> create() {
        Observable map = Observable.just(this).map(new C9445c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<HWRCandidate, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$create$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HWRCandidate it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(StringKt.isNotEmpty(it2.getGestureType()));
            }
        }, new Function1<HWRCandidate, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull HWRCandidate it2) {
                Observable<? extends Object> m39002m;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39002m = HWRGestureConvertAction.this.m39002m(it2);
                return m39002m;
            }
        }, new Function1<HWRCandidate, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$create$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull HWRCandidate it2) {
                Observable<? extends Object> m39009u;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39009u = HWRGestureConvertAction.this.m39009u();
                return m39009u;
            }
        }).map(new C9446d());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    /* renamed from: m */
    public final Observable<?> m39002m(HWRCandidate candidate) {
        HWRLogUtils.INSTANCE.m33400d(HWRGestureConvertAction.class, "convert gesture type: " + candidate.getGestureType());
        return Intrinsics.areEqual(candidate.getGestureType(), HWRGestureType.SCRIBBLE) ? m39003n() : m39009u();
    }

    /* renamed from: n */
    public final Observable<?> m39003n() {
        if (this.convertContext.getTouchPoints().size() < 20) {
            return m39009u();
        }
        RectF boundingRect = this.convertContext.getTouchPoints().getBoundingRect();
        List<BoxInfo> visibleBoxList = EditorBundleKt.visibleBoxList(getEditorBundle());
        ArrayList arrayList = new ArrayList();
        for (Object obj : visibleBoxList) {
            if (RectF.intersects(boundingRect, ((BoxInfo) obj).getVisibleRect())) {
                arrayList.add(obj);
            }
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        Observable doOnNext = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9443a(arrayList, this)).observeOn(getMainUIScheduler()).doOnNext(new C9444b(booleanRef));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(doOnNext, new Function1<Pair<? extends Shape, ? extends List<Shape>>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$applyScribbleDeletionGesture$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Pair<? extends Shape, ? extends List<Shape>> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Ref.BooleanRef.this.element);
            }
        }, new Function1<Pair<? extends Shape, ? extends List<Shape>>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$applyScribbleDeletionGesture$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Pair<? extends Shape, ? extends List<Shape>> pair) {
                HWRConvertContext hWRConvertContext;
                List mutableList;
                Observable<? extends Object> m39006q;
                Intrinsics.checkNotNullParameter(pair, "pair");
                hWRConvertContext = HWRGestureConvertAction.this.convertContext;
                hWRConvertContext.setRecognizeState(HWRRecognizeState.SUCCESS);
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(pair.getSecond()));
                CollectionKt.safeAdd(mutableList, pair.getFirst());
                m39006q = HWRGestureConvertAction.this.m39006q(mutableList, true);
                return m39006q;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$applyScribbleDeletionGesture$5
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!Ref.BooleanRef.this.element);
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$applyScribbleDeletionGesture$6
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable<? extends Object> m39009u;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39009u = HWRGestureConvertAction.this.m39009u();
                return m39009u;
            }
        });
    }

    /* renamed from: o */
    public final boolean m39004o(final Shape shape) {
        long pointDownSystemTime = this.convertContext.getPointDownSystemTime();
        Date date = shape.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
        return pointDownSystemTime > ((Number) AnyKt.getOrElse(AnyKt.getOrElseNull(date != null ? Long.valueOf(date.getTime()) : null, new Function0<Long>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$canEraseByTime$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final Long invoke() {
                TouchPoint last = Shape.this.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().last();
                if (last != null) {
                    return Long.valueOf(last.getTimestamp());
                }
                return null;
            }
        }), (Function0<? extends Object>) new Function0<Long>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$canEraseByTime$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Long invoke() {
                return Long.valueOf(Shape.this.getDownPoint().getTimestamp());
            }
        })).longValue() + 500;
    }

    /* renamed from: p */
    public final boolean m39005p(Shape shape) {
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        return shapeTypes.isPenShape(shape) || shapeTypes.isHwrTextShape(shape) || shapeTypes.isUniversalShape(shape);
    }

    /* renamed from: q */
    public final Observable<?> m39006q(List<? extends Shape> shapes, boolean addToCmdStack) {
        if (CollectionKt.isNullOrEmpty(shapes)) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<?> flatMap = new GetReferenceShapeAction(getEditorBundle(), shapes).build().map(C9447e.f49693e).map(new C9448f(addToCmdStack)).doOnNext(C9449g.f49696e).flatMap(C9450h.f49697e);
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0019, code lost:
    
        if (r3 != false) goto L8;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.hwr.data.bean.HWRCandidate m39007r() {
        /*
            r3 = this;
            com.onyx.android.sdk.universal.editor.bean.HWRConvertContext r0 = r3.convertContext
            java.util.List r0 = r0.getCandidates()
            java.lang.Object r0 = kotlin.collections.CollectionsKt.firstOrNull(r0)
            com.onyx.android.sdk.hwr.data.bean.HWRCandidate r0 = (com.onyx.android.sdk.hwr.data.bean.HWRCandidate) r0
            r1 = 0
            if (r0 == 0) goto L1c
            java.lang.String[] r3 = r3.supportTypes
            java.lang.String r2 = r0.getGestureType()
            boolean r3 = kotlin.collections.ArraysKt.contains(r3, r2)
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            r0 = r1
        L1d:
            com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2 r3 = new kotlin.jvm.functions.Function0<com.onyx.android.sdk.hwr.data.bean.HWRCandidate>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2
                static {
                    /*
                        com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2 r0 = new com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2) com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2.INSTANCE com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 0
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2.<init>():void");
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @org.jetbrains.annotations.NotNull
                public final com.onyx.android.sdk.hwr.data.bean.HWRCandidate invoke() {
                    /*
                        r0 = this;
                        com.onyx.android.sdk.hwr.data.bean.HWRCandidate r0 = new com.onyx.android.sdk.hwr.data.bean.HWRCandidate
                        r0.<init>()
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2.invoke():com.onyx.android.sdk.hwr.data.bean.HWRCandidate");
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ com.onyx.android.sdk.hwr.data.bean.HWRCandidate invoke() {
                    /*
                        r0 = this;
                        com.onyx.android.sdk.hwr.data.bean.HWRCandidate r0 = r0.invoke()
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$getSupportType$2.invoke():java.lang.Object");
                }
            }
            java.lang.Object r3 = com.onyx.android.sdk.base.extension.AnyKt.getOrElse(r0, r3)
            com.onyx.android.sdk.hwr.data.bean.HWRCandidate r3 = (com.onyx.android.sdk.hwr.data.bean.HWRCandidate) r3
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction.m39007r():com.onyx.android.sdk.hwr.data.bean.HWRCandidate");
    }

    /* renamed from: s */
    public final Pair<Shape, List<Shape>> m39008s(BoxInfo virtualPageBoxInfo, NotePage notePage) {
        Object obj;
        RenderContext renderContext = new RenderContext();
        renderContext.getSelectionArgs().setSelectionType(1);
        TouchPointList applyMatrix = renderContext.getSelectionArgs().getSelectionPointsByType(this.convertContext.getTouchPoints()).applyMatrix(BoxInfoUtils.INSTANCE.noteNormalizeMatrix(virtualPageBoxInfo));
        final List<TouchPoint> findConvexHull = ConvexHullAlgorithm.INSTANCE.findConvexHull(applyMatrix.getPoints());
        SelectShapesRequest shapePredicate = new SelectShapesRequest(EditorBundleKt.noteBundle(getEditorBundle()), renderContext, notePage, applyMatrix).setVirtualBoxInfo(virtualPageBoxInfo).setSelectionType(1).setHitTestsHelper(new AreaHitTestsHelper(renderContext, new TouchPointList((List<TouchPoint>) GeometryUtils.resample$default(GeometryUtils.INSTANCE, findConvexHull, null, new Function1<Path, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRGestureConvertAction$hitTestShapes$hitTestPoints$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Path path) {
                invoke2(path);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Path it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                PathKt.averageQuadTo(it2, findConvexHull);
            }
        }, 1, null)), 10.0f, 0, 8, null)).setShapePredicate(new Predicate() { // from class: com.sunia.HTREnginev2.bfh
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Object obj2) {
                boolean m39001t;
                m39001t = HWRGestureConvertAction.m39001t(HWRGestureConvertAction.this, (Shape) obj2);
                return m39001t;
            }
        });
        shapePredicate.execute2();
        List ensureList = CollectionKt.ensureList(shapePredicate.getSelectedShapes());
        ArrayList arrayList = new ArrayList();
        Iterator it2 = ensureList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            TouchPoint first = ((Shape) next).getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().first();
            Long valueOf = first != null ? Long.valueOf(first.getTimestamp()) : null;
            if (!Intrinsics.areEqual(valueOf, this.convertContext.getTouchPoints().first() != null ? Long.valueOf(r7.getTimestamp()) : null)) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (m39004o((Shape) obj2)) {
                arrayList2.add(obj2);
            }
        }
        if (!(!arrayList2.isEmpty())) {
            arrayList2 = null;
        }
        List ensureList2 = CollectionKt.ensureList(arrayList2);
        if (!(!ensureList2.isEmpty())) {
            return new Pair<>(null, null);
        }
        ListIterator listIterator = ensureList.listIterator(ensureList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            Object previous = listIterator.previous();
            TouchPoint first2 = ShapeTypes.INSTANCE.getTargetShape((Shape) previous).getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().first();
            Long valueOf2 = first2 != null ? Long.valueOf(first2.getTimestamp()) : null;
            TouchPoint first3 = this.convertContext.getTouchPoints().first();
            if (Intrinsics.areEqual(valueOf2, first3 != null ? Long.valueOf(first3.getTimestamp()) : null)) {
                obj = previous;
                break;
            }
        }
        return new Pair<>((Shape) obj, ensureList2);
    }

    /* renamed from: u */
    public final Observable<?> m39009u() {
        Observable<?> doOnNext = Observable.just(this).observeOn(trampolineMainThread()).doOnNext(new C9451i());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: v */
    public final void m39010v() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.convertContext.getTouchPoints().getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        getEditorBundle().getAiBundle().removeConvertContext(touchPoint.getTimestamp());
    }

    /* renamed from: w */
    public final void m39011w(BoxInfo boxInfo, TouchPointList pointList) {
        List<? extends Shape> listOf;
        Shape createFreeShape = ShapeUtils.INSTANCE.createFreeShape(EditorBundleKt.noteBundle(getEditorBundle()).getNoteDrawingArgs(), new RenderContext());
        createFreeShape.ensureShapeUniqueId();
        createFreeShape.addPoints(pointList.m72175clone());
        createFreeShape.setPageUniqueId(boxInfo.getId());
        ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(createFreeShape);
        shapeTransformBean.setTransformShapes(listOf);
        shapeTransformBean.setUseAddTransformedMethod(false);
        shapeTransformBean.setForceUpdateOnQuit(true);
        RxBaseAction.execute$default(new QuitTransformAction(getEditorBundle(), new RenderContext(), boxInfo, shapeTransformBean), null, null, null, 7, null);
    }
}
