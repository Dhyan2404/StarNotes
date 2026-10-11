package com.onyx.android.sdk.universal.editor.action.shape;

import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.ComputeBoxListActionsKt;
import com.onyx.android.sdk.universal.editor.request.page.FindBoxInfoByNotePageIdRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "l", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6999h.f39688c, "Ljava/util/List;", "shapes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCopyShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CopyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1549#2:60\n1620#2,3:61\n1002#2,2:65\n1855#2,2:67\n1#3:64\n*S KotlinDebug\n*F\n+ 1 CopyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction\n*L\n42#1:60\n42#1:61,3\n47#1:65,2\n49#1:67,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CopyShapesAction extends RxBaseAppAction<Boolean> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> shapes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.CopyShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C10039a<T> implements Consumer {
        public C10039a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.copyShapesDirectly(CopyShapesAction.this.shapes);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.CopyShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C10040b<T, R> implements Function {
        public C10040b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(!CopyShapesAction.this.shapes.isEmpty());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.CopyShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C10041c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ BoxInfo f50825f;

        public C10041c(BoxInfo boxInfo) {
            this.f50825f = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShapeTypes.INSTANCE.updatePageId(CopyShapesAction.this.shapes, this.f50825f.getId());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.CopyShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C10042d<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ BoxInfo f50826e;

        public C10042d(BoxInfo boxInfo) {
            this.f50826e = boxInfo;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final BoxInfo apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f50826e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CopyShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends Shape> shapes) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        this.shapes = shapes;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.shapes);
        Shape shape = (Shape) firstOrNull;
        if (shape == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable map = RxjavaKt.flatMapIf(ComputeBoxListActionsKt.findBoxInfoByNotePageId(this, shape.getPageUniqueId()), new Function1<FindBoxInfoByNotePageIdRequest, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.CopyShapesAction$create$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull FindBoxInfoByNotePageIdRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getVirtualPageBoxInfo() != null);
            }
        }, new Function1<FindBoxInfoByNotePageIdRequest, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.CopyShapesAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull FindBoxInfoByNotePageIdRequest it2) {
                Observable<? extends Object> m40138l;
                Intrinsics.checkNotNullParameter(it2, "it");
                CopyShapesAction copyShapesAction = CopyShapesAction.this;
                BoxInfo virtualPageBoxInfo = it2.getVirtualPageBoxInfo();
                Intrinsics.checkNotNull(virtualPageBoxInfo);
                m40138l = copyShapesAction.m40138l(virtualPageBoxInfo);
                return m40138l;
            }
        }).doOnNext(new C10039a()).map(new C10040b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<BoxInfo> m40138l(BoxInfo virtualBoxInfo) {
        int collectionSizeOrDefault;
        List<? extends Shape> distinct;
        List<? extends Shape> list = this.shapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(ShapeTypes.INSTANCE.getTargetShape((Shape) it2.next()));
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        List<Shape> cloneNewShapes = ShapeCopyUtils.INSTANCE.cloneNewShapes(distinct, true);
        this.shapes = cloneNewShapes;
        List<Shape> copy = CollectionKt.copy(cloneNewShapes);
        if (copy.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(copy, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.shape.CopyShapesAction$normalizeShapesMatrix$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    Date date = ((Shape) t).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                    Long valueOf = Long.valueOf(date != null ? date.getTime() : 0L);
                    Date date2 = ((Shape) t2).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Long.valueOf(date2 != null ? date2.getTime() : 0L));
                    return compareValues;
                }
            });
        }
        long millisOfNow = DateTimeUtil.INSTANCE.millisOfNow();
        for (Shape shape : copy) {
            shape.setCreatedAt(new Date(millisOfNow));
            shape.setUpdatedAt(new Date(millisOfNow));
            millisOfNow++;
        }
        Observable map = new NormalizeShapesMatrixAction(getEditorBundle(), virtualBoxInfo, this.shapes).build().doOnNext(new C10041c(virtualBoxInfo)).map(new C10042d(virtualBoxInfo));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
