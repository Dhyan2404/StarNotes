package com.onyx.android.sdk.universal.editor;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.request.LoadShapeListRequest;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.GotoShapeAction;
import com.onyx.android.sdk.universal.editor.action.excerpt.ShowRectHighlightAnimationAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.RxBaseAppActionKt;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\n¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\f\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\"\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0012¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "q", C4921e.f26528e, "m", "Landroid/graphics/RectF;", "l", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "transformShapeList", "Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;", AbstractLogger.REQUEST, "p", "", C6999h.f39688c, "Ljava/util/List;", "shapeIdList", "i", "shapeList", "j", "unifiedPageShapeList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGotoShapeAndHightLightAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GotoShapeAndHightLightAction.kt\ncom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n766#2:110\n857#2,2:111\n1360#2:113\n1446#2,5:114\n*S KotlinDebug\n*F\n+ 1 GotoShapeAndHightLightAction.kt\ncom/onyx/android/sdk/universal/editor/GotoShapeAndHighLightAction\n*L\n58#1:110\n58#1:111,2\n91#1:113\n91#1:114,5\n*E\n"})
/* loaded from: classes8.dex */
public final class GotoShapeAndHighLightAction extends RxBaseAppAction<GotoShapeAndHighLightAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<String> shapeIdList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapeList;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> unifiedPageShapeList;

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$a */
    /* loaded from: classes8.dex */
    public static final class C8150a<T, R> implements Function {
        public C8150a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoShapeAndHighLightAction> apply(@NotNull GotoShapeAndHighLightAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAndHighLightAction.this.m36692n();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$b */
    /* loaded from: classes8.dex */
    public static final class C8151b<T, R> implements Function {
        public C8151b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull GotoShapeAndHighLightAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAndHighLightAction.this.m36691m();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$c */
    /* loaded from: classes8.dex */
    public static final class C8152c<T, R> implements Function {
        public C8152c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GotoShapeAndHighLightAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAndHighLightAction.this.m36693o();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$d */
    /* loaded from: classes8.dex */
    public static final class C8153d<T, R> implements Function {
        public C8153d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoShapeAndHighLightAction apply(@NotNull GotoShapeAndHighLightAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAndHighLightAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$e */
    /* loaded from: classes8.dex */
    public static final class C8154e<T, R> implements Function {
        public C8154e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoShapeAndHighLightAction apply(@NotNull LoadShapeListRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoShapeAndHighLightAction.this.shapeList = CollectionKt.ensureList(it2.getShapeList());
            return GotoShapeAndHighLightAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$f */
    /* loaded from: classes8.dex */
    public static final class C8155f<T, R> implements Function {
        public C8155f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull GotoShapeAndHighLightAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAndHighLightAction.this.m36695q();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$g */
    /* loaded from: classes8.dex */
    public static final class C8156g<T, R> implements Function {
        public C8156g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RectF apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAndHighLightAction.this.m36690l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$h */
    /* loaded from: classes8.dex */
    public static final class C8157h<T, R> implements Function {
        public C8157h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull RectF it2) {
            Object first;
            List listOf;
            List listOf2;
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundle editorBundle = GotoShapeAndHighLightAction.this.getEditorBundle();
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) GotoShapeAndHighLightAction.this.shapeList);
            String pageUniqueId = ((Shape) first).getPageUniqueId();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(it2);
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(listOf);
            return new ShowRectHighlightAnimationAction(editorBundle, pageUniqueId, listOf2, 0L, 8, null).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$i */
    /* loaded from: classes8.dex */
    public static final class C8158i<T, R> implements Function {
        public C8158i() {
        }

        @NotNull
        /* renamed from: a */
        public final GotoShapeAndHighLightAction m36704a(boolean z) {
            return GotoShapeAndHighLightAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m36704a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$j */
    /* loaded from: classes8.dex */
    public static final class C8159j<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Shape> f47542f;

        /* JADX WARN: Multi-variable type inference failed */
        public C8159j(List<? extends Shape> list) {
            this.f47542f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull FindBoxInfoByNotePageIdRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoShapeAndHighLightAction.this.m36694p(this.f47542f, it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoShapeAndHighLightAction(@NotNull EditorBundle editorBundle, @NotNull List<String> shapeIdList) {
        super(editorBundle);
        List<? extends Shape> emptyList;
        List<? extends Shape> emptyList2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapeIdList, "shapeIdList");
        this.shapeIdList = shapeIdList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapeList = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.unifiedPageShapeList = emptyList2;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoShapeAndHighLightAction> create() {
        Observable<GotoShapeAndHighLightAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C8150a()).flatMap(new C8151b()).flatMap(new C8152c()).map(new C8153d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final RectF m36690l() {
        List<? extends Shape> list = this.unifiedPageShapeList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ShapeTypes.INSTANCE.queryShapeBoundingRect((Shape) it2.next()));
        }
        return RectFKt.boundingRectF(arrayList);
    }

    /* renamed from: m */
    public final Observable<?> m36691m() {
        Object first;
        if (this.shapeList.isEmpty()) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundle editorBundle = getEditorBundle();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.shapeList);
        return new GotoShapeAction(editorBundle, ((Shape) first).getShapeUniqueId(), false).build();
    }

    /* renamed from: n */
    public final Observable<GotoShapeAndHighLightAction> m36692n() {
        Observable<GotoShapeAndHighLightAction> map = RxBaseAppActionKt.submitRequestToNote(this, new LoadShapeListRequest(EditorBundleKt.noteBundle(getEditorBundle()), this.shapeIdList)).map(new C8154e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<GotoShapeAndHighLightAction> m36693o() {
        if (this.shapeList.isEmpty()) {
            Observable<GotoShapeAndHighLightAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<GotoShapeAndHighLightAction> map = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C8155f()).map(new C8156g()).observeOn(getMainUIScheduler()).flatMap(new C8157h()).map(new C8158i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<?> m36694p(final List<? extends Shape> transformShapeList, FindBoxInfoByNotePageIdRequest request) {
        final BoxInfo virtualPageBoxInfo = request.getVirtualPageBoxInfo();
        if (virtualPageBoxInfo == null) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<?> doOnNext = ComputeBoxListActionsKt.findBoxInfoListWithPageIdList$default(this, ShapeTypes.INSTANCE.toPageShapeMap(transformShapeList).keySet(), false, 2, null).doOnNext(new Consumer() { // from class: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$transformShapesMatrix$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull List<BoxInfo> boxList) {
                Intrinsics.checkNotNullParameter(boxList, "boxList");
                ShapeTransformBean shapeTransformBean = new ShapeTransformBean();
                List<Shape> list = transformShapeList;
                BoxInfo boxInfo = virtualPageBoxInfo;
                shapeTransformBean.setTransformShapes(list);
                shapeTransformBean.setTransformBoxInfoMap(CollectionKt.toMap(boxList, new Function1<BoxInfo, String>() { // from class: com.onyx.android.sdk.universal.editor.GotoShapeAndHighLightAction$transformShapesMatrix$1$1$1
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final String invoke(@NotNull BoxInfo it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return it2.getId();
                    }
                }));
                shapeTransformBean.buildSelectionRectShapes(boxInfo);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: q */
    public final Observable<?> m36695q() {
        Object first;
        if (this.shapeList.isEmpty()) {
            Observable<?> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        List<? extends Shape> list = this.shapeList;
        this.unifiedPageShapeList = list;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        Shape shape = (Shape) first;
        List<Shape> deepCopyList = ShapeCopyUtils.INSTANCE.deepCopyList(ShapeTypes.INSTANCE.filterNormalShapes(this.shapeList));
        this.unifiedPageShapeList = deepCopyList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : deepCopyList) {
            if (!Intrinsics.areEqual(shape.getPageUniqueId(), ((Shape) obj).getPageUniqueId())) {
                arrayList.add(obj);
            }
        }
        Observable flatMap = ComputeBoxListActionsKt.findBoxInfoByNotePageId(this, shape.getPageUniqueId()).flatMap(new C8159j(arrayList));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
