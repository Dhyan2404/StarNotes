package com.onyx.android.sdk.universal.editor.action.shape;

import android.graphics.Matrix;
import android.graphics.Paint;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.selection.QuitTransformAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\"\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\"\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0011\u001a\u0004\b\u0019\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "pageShapes", "m", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "pageBoxInfo", C4921e.f26528e, "", GoogleApiAvailabilityLight.f29016b, C6999h.f39688c, "Ljava/util/List;", "shapes", "", "i", Constants.HASIDCALL_INDEX_SIG, "addToCmdStack", "", "j", "getAddedShapes", "()Ljava/util/List;", "addedShapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAddShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1477#2:72\n1502#2,3:73\n1505#2,3:83\n288#2,2:86\n372#3,7:76\n1#4:88\n*S KotlinDebug\n*F\n+ 1 AddShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesAction\n*L\n39#1:72\n39#1:73,3\n39#1:83,3\n50#1:86,2\n39#1:76,7\n*E\n"})
/* loaded from: classes8.dex */
public final class AddShapesAction extends RxBaseAppAction<AddShapesAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> shapes;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean addToCmdStack;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> addedShapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9982a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map<String, List<Shape>> f50731f;

        /* JADX WARN: Multi-variable type inference failed */
        public C9982a(Map<String, ? extends List<? extends Shape>> map) {
            this.f50731f = map;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull String it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesAction.this.m40052m(it2, CollectionKt.ensureList(this.f50731f.get(it2)));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9983b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f50733f;

        /* renamed from: g */
        public final /* synthetic */ List<Shape> f50734g;

        /* JADX WARN: Multi-variable type inference failed */
        public C9983b(BoxInfo boxInfo, List<? extends Shape> list) {
            this.f50733f = boxInfo;
            this.f50734g = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesAction.this.m40054o(this.f50733f, this.f50734g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C9984c<T, R> implements Function {
        public C9984c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesAction.this.m40051l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C9985d<T> implements Consumer {
        public C9985d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddShapesAction.this.m40053n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesAction$e */
    /* loaded from: classes8.dex */
    public static final class C9986e<T, R> implements Function {
        public C9986e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddShapesAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.AddShapesAction$f */
    /* loaded from: classes8.dex */
    public static final class C9987f<T> implements Consumer {
        public C9987f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull QuitTransformAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AddShapesAction.this.getAddedShapes().addAll(it2.getTransformShapeList());
        }
    }

    public /* synthetic */ AddShapesAction(EditorBundle editorBundle, List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, list, (i & 4) != 0 ? true : z);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AddShapesAction> create() {
        Observable<AddShapesAction> map = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9984c()).doOnNext(new C9985d()).map(new C9986e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<Shape> getAddedShapes() {
        return this.addedShapes;
    }

    /* renamed from: l */
    public final Observable<?> m40051l() {
        List<Shape> list = this.shapes;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            String pageUniqueId = ((Shape) obj).getPageUniqueId();
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        if (linkedHashMap.isEmpty()) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(linkedHashMap.keySet()).concatMap(new C9982a(linkedHashMap));
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return RxjavaKt.takeLastOne(concatMap);
    }

    /* renamed from: m */
    public final Observable<?> m40052m(String pageId, List<? extends Shape> pageShapes) {
        Object obj;
        Iterator<T> it2 = EditorBundleKt.visibleBoxList(getEditorBundle()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            BoxInfo noteInfo = ((BoxInfo) next).getNoteInfo();
            if (Intrinsics.areEqual(noteInfo != null ? noteInfo.getId() : null, pageId)) {
                obj = next;
                break;
            }
        }
        Observable<?> flatMap = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9983b((BoxInfo) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<BoxInfo>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.AddShapesAction$addShapesForSinglePage$boxInfo$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BoxInfo invoke() {
                return EditorBundleKt.currentVisibleBoxInfo(AddShapesAction.this.getEditorBundle());
            }
        }), pageShapes));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final void m40053n() {
        EditorBundleKt.noteBundle(getEditorBundle()).postAddShapeEvent(this.addedShapes);
    }

    /* renamed from: o */
    public final Observable<?> m40054o(BoxInfo pageBoxInfo, List<? extends Shape> pageShapes) {
        RenderContext renderContext = new RenderContext(new Paint(), new Matrix());
        ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
        shapeTransformBean.setTransformShapes(pageShapes);
        shapeTransformBean.setForceUpdateOnQuit(true);
        QuitTransformAction quitTransformAction = new QuitTransformAction(getEditorBundle(), renderContext, pageBoxInfo, shapeTransformBean);
        quitTransformAction.setAddToCmdStack(this.addToCmdStack);
        Observable<QuitTransformAction> doOnNext = quitTransformAction.build().doOnNext(new C9987f());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AddShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
        this.addToCmdStack = z;
        this.addedShapes = new ArrayList();
    }
}
