package com.onyx.android.sdk.note.common.data.option;

import android.graphics.Matrix;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 E2\u00020\u0001:\u0001EB\u0007¢\u0006\u0004\bC\u0010DJ0\u0010\u0007\u001a\u00020\u00042\u001e\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u00020\u0003\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bJ\u0014\u0010\f\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bJ \u0010\u000e\u001a\u00020\u00002\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\b0\u0002J\u0014\u0010\u0010\u001a\u00020\u00002\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\bJ\u0014\u0010\u000f\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011J\u0014\u0010\u0016\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014J\u001c\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0006\u001a\u00020\u00042\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00030\bJ\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014J\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014J\u0006\u0010\u001e\u001a\u00020\u0011J\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014J\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00140 J\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00030\"J\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020$0 J\u0014\u0010'\u001a\u00020\u001a2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00040\u0014J\u0010\u0010)\u001a\u00020\u001a2\b\u0010(\u001a\u0004\u0018\u00010\u0000J\u0006\u0010*\u001a\u00020\u0000J\u0006\u0010+\u001a\u00020\u0003R\u001c\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R(\u00102\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\b0\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R&\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u001503j\b\u0012\u0004\u0012\u00020\u0015`48\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u00105R\"\u00109\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b\u0013\u0010;R.\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$0 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u00101\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0011\u0010B\u001a\u00020\u00118F¢\u0006\u0006\u001a\u0004\bB\u0010:¨\u0006F"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "pageShapeMap", "shape", "d", "", "list", "setRemoveShapeList", "", "addRemoveShapeList", Constant.MAP_TAG, "setShapeTagMap", "addShapeList", "setAddShapeList", "", "applyAllLayer", "setApplyAllLayer", "", "", "setChangedLayerList", "getChangedLayerList", "getAddShapeList", "tagIds", "", "addShapeTag", "updateTagShapeList", "getRemoveShapeList", "hasRemovedShapeList", "getChangedShapeList", "", "getShapeTagMap", "", "getChangedPageSet", "Landroid/graphics/Matrix;", "getTransformShapeIdMatrixMap", "shapes", "applyTransformShapeMatrix", "bean", "merge", "deepFullCopy", "getDebugString", "a", "Ljava/util/List;", "removeShapeList", "b", "c", "Ljava/util/Map;", "shapeTagMap", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "changedLayerList", "e", Constants.HASIDCALL_INDEX_SIG, "isApplyAllLayer", Constants.BOOLEAN_VALUE_SIG, "(Z)V", C6997f.f39671c, "getTransformShapeMatrixMap", "()Ljava/util/Map;", "setTransformShapeMatrixMap", "(Ljava/util/Map;)V", "transformShapeMatrixMap", "isEmpty", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nChangedShapeBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangedShapeBean.kt\ncom/onyx/android/sdk/note/common/data/option/ChangedShapeBean\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n215#2,2:192\n1855#3,2:194\n1549#3:196\n1620#3,3:197\n1549#3:201\n1620#3,3:202\n1#4:200\n*S KotlinDebug\n*F\n+ 1 ChangedShapeBean.kt\ncom/onyx/android/sdk/note/common/data/option/ChangedShapeBean\n*L\n110#1:192,2\n121#1:194,2\n145#1:196\n145#1:197,3\n148#1:201\n148#1:202,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ChangedShapeBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<Shape> removeShapeList = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<Shape> addShapeList = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, List<String>> shapeTagMap = new HashMap();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public ArrayList<Integer> changedLayerList = new ArrayList<>();

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isApplyAllLayer;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, ? extends Matrix> transformShapeMatrixMap;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\b\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00040\t¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion;", "", "()V", "addRemovedShapesToChangedShapeBean", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "addShapesToChangedShapeBean", "merge", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nChangedShapeBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangedShapeBean.kt\ncom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n*S KotlinDebug\n*F\n+ 1 ChangedShapeBean.kt\ncom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion\n*L\n187#1:192,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ChangedShapeBean addRemovedShapesToChangedShapeBean(@NotNull Collection<? extends Shape> collection) {
            List<Shape> mutableList;
            Intrinsics.checkNotNullParameter(collection, "<this>");
            ChangedShapeBean changedShapeBean = new ChangedShapeBean();
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) collection);
            return changedShapeBean.setRemoveShapeList(mutableList);
        }

        @NotNull
        public final ChangedShapeBean addShapesToChangedShapeBean(@NotNull Collection<? extends Shape> collection) {
            List<Shape> mutableList;
            Intrinsics.checkNotNullParameter(collection, "<this>");
            ChangedShapeBean changedShapeBean = new ChangedShapeBean();
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) collection);
            return changedShapeBean.setAddShapeList(mutableList);
        }

        @NotNull
        public final ChangedShapeBean merge(@NotNull List<ChangedShapeBean> list) {
            Intrinsics.checkNotNullParameter(list, "<this>");
            ChangedShapeBean changedShapeBean = new ChangedShapeBean();
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                changedShapeBean.merge((ChangedShapeBean) it2.next());
            }
            return changedShapeBean;
        }

        public Companion() {
        }
    }

    public ChangedShapeBean() {
        Map<Shape, ? extends Matrix> emptyMap;
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.transformShapeMatrixMap = emptyMap;
    }

    /* renamed from: e */
    public static final Map m33638e(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Map) tmp0.invoke(obj);
    }

    /* renamed from: f */
    public static final Shape m33639f(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Shape) tmp0.invoke(obj);
    }

    /* renamed from: g */
    public static final Map m33640g(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Map) tmp0.invoke(obj);
    }

    @NotNull
    public final ChangedShapeBean addRemoveShapeList(@NotNull Collection<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        CollectionKt.safeAddAll(this.removeShapeList, list);
        return this;
    }

    @NotNull
    public final ChangedShapeBean addShapeList(@NotNull Collection<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        CollectionKt.addIfNotContains((Collection) this.addShapeList, (Collection) list);
        return this;
    }

    public final void addShapeTag(@NotNull Shape shape, @NotNull List<String> tagIds) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        this.shapeTagMap.put(shape, tagIds);
    }

    public final void applyTransformShapeMatrix(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Map<String, Matrix> transformShapeIdMatrixMap = getTransformShapeIdMatrixMap();
        if (CollectionKt.isNullOrEmpty(transformShapeIdMatrixMap)) {
            return;
        }
        for (Shape shape : shapes) {
            Matrix matrix = transformShapeIdMatrixMap.get(shape.getShapeUniqueId());
            if (matrix != null) {
                shape.postConcat(MatrixKt.invertMatrix(matrix));
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [T, java.lang.Object] */
    /* renamed from: d */
    public final Shape m33641d(Map<String, Map<String, Shape>> pageShapeMap, final Shape shape) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        String pageUniqueId = shape.getPageUniqueId();
        final ChangedShapeBean$deepFullCopyShape$shapeMap$1 changedShapeBean$deepFullCopyShape$shapeMap$1 = new Function1<String, Map<String, Shape>>() { // from class: com.onyx.android.sdk.note.common.data.option.ChangedShapeBean$deepFullCopyShape$shapeMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Map<String, Shape> invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return new LinkedHashMap();
            }
        };
        ?? computeIfAbsent = pageShapeMap.computeIfAbsent(pageUniqueId, new Function() { // from class: com.sunia.HTREnginev2.pqd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map m33638e;
                m33638e = ChangedShapeBean.m33638e(Function1.this, obj);
                return m33638e;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        objectRef.element = computeIfAbsent;
        String shapeUniqueId = shape.getShapeUniqueId();
        final Function1<String, Shape> function1 = new Function1<String, Shape>() { // from class: com.onyx.android.sdk.note.common.data.option.ChangedShapeBean$deepFullCopyShape$copyShape$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ShapeCopyUtils.INSTANCE.deepFullCopy(Shape.this);
            }
        };
        Object computeIfAbsent2 = ((Map) computeIfAbsent).computeIfAbsent(shapeUniqueId, new Function() { // from class: com.sunia.HTREnginev2.qqd
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Shape m33639f;
                m33639f = ChangedShapeBean.m33639f(Function1.this, obj);
                return m33639f;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent2, "computeIfAbsent(...)");
        Shape shape2 = (Shape) computeIfAbsent2;
        final ReferenceShape referenceShape = shape2 instanceof ReferenceShape ? (ReferenceShape) shape2 : null;
        final Shape targetShape = referenceShape != null ? referenceShape.getTargetShape() : null;
        if (referenceShape != null && targetShape != null) {
            String pageUniqueId2 = targetShape.getPageUniqueId();
            final ChangedShapeBean$deepFullCopyShape$1 changedShapeBean$deepFullCopyShape$1 = new Function1<String, Map<String, Shape>>() { // from class: com.onyx.android.sdk.note.common.data.option.ChangedShapeBean$deepFullCopyShape$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Map<String, Shape> invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new LinkedHashMap();
                }
            };
            ?? computeIfAbsent3 = pageShapeMap.computeIfAbsent(pageUniqueId2, new Function() { // from class: com.sunia.HTREnginev2.rqd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Map m33640g;
                    m33640g = ChangedShapeBean.m33640g(Function1.this, obj);
                    return m33640g;
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent3, "computeIfAbsent(...)");
            objectRef.element = computeIfAbsent3;
            AnyKt.whenNull(AnyKt.whenNotNull(((Map) computeIfAbsent3).get(targetShape.getShapeUniqueId()), new Function1<Shape, Unit>() { // from class: com.onyx.android.sdk.note.common.data.option.ChangedShapeBean$deepFullCopyShape$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Shape shape3) {
                    invoke2(shape3);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Shape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    ReferenceShape.this.setTargetShape(it2);
                }
            }), new Function1<Shape, Unit>() { // from class: com.onyx.android.sdk.note.common.data.option.ChangedShapeBean$deepFullCopyShape$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Shape shape3) {
                    invoke2(shape3);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Shape shape3) {
                    objectRef.element.put(targetShape.getShapeUniqueId(), targetShape);
                }
            });
        }
        return shape2;
    }

    @NotNull
    public final ChangedShapeBean deepFullCopy() {
        int collectionSizeOrDefault;
        List<Shape> mutableList;
        int collectionSizeOrDefault2;
        List<Shape> mutableList2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        changedShapeBean.transformShapeMatrixMap = this.transformShapeMatrixMap;
        List<Shape> addShapeList = getAddShapeList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(addShapeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = addShapeList.iterator();
        while (it2.hasNext()) {
            arrayList.add(m33641d(linkedHashMap, (Shape) it2.next()));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        changedShapeBean.setAddShapeList(mutableList);
        List<Shape> removeShapeList = getRemoveShapeList();
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(removeShapeList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = removeShapeList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(m33641d(linkedHashMap, (Shape) it3.next()));
        }
        mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        changedShapeBean.setRemoveShapeList(mutableList2);
        return changedShapeBean;
    }

    @NotNull
    public final List<Shape> getAddShapeList() {
        return this.addShapeList;
    }

    @NotNull
    public final List<Integer> getChangedLayerList() {
        return this.changedLayerList;
    }

    @NotNull
    public final Set<String> getChangedPageSet() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        CollectionKt.safeAddAll(linkedHashSet, shapeTypes.toPageIdSet(this.removeShapeList));
        CollectionKt.safeAddAll(linkedHashSet, shapeTypes.toPageIdSet(this.addShapeList));
        return linkedHashSet;
    }

    @NotNull
    public final List<Shape> getChangedShapeList() {
        List<Shape> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.addShapeList);
        mutableList.addAll(this.removeShapeList);
        return mutableList;
    }

    @NotNull
    public final String getDebugString() {
        return "addShapeList:" + this.addShapeList.size() + ", removeShapeList:" + this.removeShapeList.size() + ", changedLayerList:" + this.changedLayerList;
    }

    @NotNull
    public final List<Shape> getRemoveShapeList() {
        return this.removeShapeList;
    }

    @NotNull
    public final Map<Shape, List<String>> getShapeTagMap() {
        return this.shapeTagMap;
    }

    @NotNull
    public final Map<String, Matrix> getTransformShapeIdMatrixMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Shape, ? extends Matrix> entry : this.transformShapeMatrixMap.entrySet()) {
            linkedHashMap.put(entry.getKey().getShapeUniqueId(), entry.getValue());
        }
        return linkedHashMap;
    }

    @NotNull
    public final Map<Shape, Matrix> getTransformShapeMatrixMap() {
        return this.transformShapeMatrixMap;
    }

    public final boolean hasRemovedShapeList() {
        return CollectionKt.isNonBlank(this.removeShapeList);
    }

    /* renamed from: isApplyAllLayer, reason: from getter */
    public final boolean getIsApplyAllLayer() {
        return this.isApplyAllLayer;
    }

    public final boolean isEmpty() {
        return this.addShapeList.isEmpty() && this.removeShapeList.isEmpty();
    }

    public final void merge(@Nullable ChangedShapeBean bean) {
        if (bean == null) {
            return;
        }
        this.addShapeList.addAll(bean.addShapeList);
        this.removeShapeList.addAll(bean.removeShapeList);
        this.shapeTagMap.putAll(bean.shapeTagMap);
    }

    @NotNull
    public final ChangedShapeBean setAddShapeList(@NotNull List<Shape> addShapeList) {
        Intrinsics.checkNotNullParameter(addShapeList, "addShapeList");
        this.addShapeList = addShapeList;
        return this;
    }

    /* renamed from: setApplyAllLayer, reason: collision with other method in class */
    public final void m72298setApplyAllLayer(boolean z) {
        this.isApplyAllLayer = z;
    }

    @NotNull
    public final ChangedShapeBean setChangedLayerList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.changedLayerList.clear();
        this.changedLayerList.addAll(list);
        return this;
    }

    @NotNull
    public final ChangedShapeBean setRemoveShapeList(@NotNull List<Shape> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.removeShapeList = list;
        return this;
    }

    @NotNull
    public final ChangedShapeBean setShapeTagMap(@NotNull Map<Shape, List<String>> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.shapeTagMap = map;
        return this;
    }

    public final void setTransformShapeMatrixMap(@NotNull Map<Shape, ? extends Matrix> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.transformShapeMatrixMap = map;
    }

    @Nullable
    public final List<Shape> updateTagShapeList() {
        if (this.shapeTagMap.isEmpty()) {
            return null;
        }
        return new ArrayList(this.shapeTagMap.keySet());
    }

    @NotNull
    public final ChangedShapeBean setApplyAllLayer(boolean applyAllLayer) {
        this.isApplyAllLayer = applyAllLayer;
        return this;
    }
}
