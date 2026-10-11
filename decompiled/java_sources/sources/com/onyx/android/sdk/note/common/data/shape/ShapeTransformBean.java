package com.onyx.android.sdk.note.common.data.shape;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010%\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bc\u0010dJ\u001a\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007J\u0014\u0010\u000b\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tJ\u0006\u0010\r\u001a\u00020\fJ\u001a\u0010\u0013\u001a\u00020\u00122\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eJ\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000eJ\u0016\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u000eJ\u0014\u0010\u0019\u001a\u00020\u00122\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tJ\u0014\u0010\u001b\u001a\u00020\u00122\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\tJ \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u000e2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\tJ\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020 J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\fJ\u0006\u0010%\u001a\u00020\fJ\u0006\u0010&\u001a\u00020 J\u0006\u0010'\u001a\u00020\fJ\u000e\u0010)\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\fJ\u0006\u0010*\u001a\u00020\fJ\u000e\u0010,\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\fJ\u000e\u0010/\u001a\u00020\u00002\u0006\u0010.\u001a\u00020-J\u0006\u00100\u001a\u00020-J\u0006\u00101\u001a\u00020\fJ\u000e\u00103\u001a\u00020\u00002\u0006\u00102\u001a\u00020\fJ\u0014\u00105\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u00104\u001a\u00020\u0010J\f\u00106\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007R\u001c\u00109\u001a\b\u0012\u0004\u0012\u00020\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u00108R\"\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\"\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010<R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010(\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010E\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010CR\u0016\u0010H\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u00101\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010CR\u0016\u0010M\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010CR$\u0010U\u001a\u0004\u0018\u00010N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\"\u0010W\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010C\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\"\u0010^\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010C\u001a\u0004\b\\\u0010X\"\u0004\b]\u0010ZR\"\u0010b\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b_\u0010C\u001a\u0004\b`\u0010X\"\u0004\ba\u0010Z¨\u0006e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Landroid/graphics/Matrix;", "crossPageMatrix", "b", "", "getTransformShapes", "", "transformShapes", "setTransformShapes", "", "hasTransformShapes", "", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", Constant.MAP_TAG, "", "setTransformBoxInfoMap", "getTransformBoxInfoMap", "matrix", "addTransformShapeMatrix", "getTransformShapeMatrix", "getTransformShapeMatrixMap", "replaceShapes", "shapes", "updateTransformShapeMatrix", "Landroid/graphics/RectF;", "getLimitRect", "limitRect", "setLimitRect", "", "type", "setSelectionType", "isExpand", "setExpandSelectionRect", "isExpandSelectionRect", "getSelectionType", "isRenderPageShapes", "renderPageShapes", "setRenderPageShapes", "isRenderTransformShapes", "render", "setRenderTransformShapes", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "selectionTrackPoints", "setSelectionTrackPoints", "getSelectionTrackPoints", "isSelectAll", "selectAll", "setSelectAll", "virtualBoxInfo", "buildSelectionRectShapes", "getSelectionRectShapes", "a", "Ljava/util/List;", "selectionRectShapes", "", "c", "Ljava/util/Map;", "transformBoxInfoMap", "d", "transformShapeMatrixMap", "e", "Landroid/graphics/RectF;", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, C6998g.f39679a, "renderTransformShapes", C6999h.f39688c, "I", "selectionType", "i", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "j", C4921e.f26537n, "isExpandRect", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "l", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getLastCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "setLastCompositeCommand", "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V", "lastCompositeCommand", "m", "isUpdateDisplayAfterQuit", Constants.BOOLEAN_VALUE_SIG, "setUpdateDisplayAfterQuit", "(Z)V", GoogleApiAvailabilityLight.f29016b, "getForceUpdateOnQuit", "setForceUpdateOnQuit", "forceUpdateOnQuit", C4921e.f26528e, "getUseAddTransformedMethod", "setUseAddTransformedMethod", "useAddTransformedMethod", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeTransformBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeTransformBean.kt\ncom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,220:1\n215#2,2:221\n766#3:223\n857#3,2:224\n1855#3,2:226\n1477#3:228\n1502#3,3:229\n1505#3,3:239\n1238#3,4:244\n1603#3,9:248\n1855#3:257\n1549#3:258\n1620#3,3:259\n1856#3:263\n1612#3:264\n372#4,7:232\n453#4:242\n403#4:243\n1#5:262\n*S KotlinDebug\n*F\n+ 1 ShapeTransformBean.kt\ncom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean\n*L\n78#1:221,2\n87#1:223\n87#1:224,2\n88#1:226,2\n165#1:228\n165#1:229,3\n165#1:239,3\n166#1:244,4\n169#1:248,9\n169#1:257\n175#1:258\n175#1:259,3\n169#1:263\n169#1:264\n165#1:232,7\n166#1:242\n166#1:243\n169#1:262\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeTransformBean {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public RectF limitRect;

    /* renamed from: h, reason: from kotlin metadata */
    public int selectionType;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isSelectAll;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public CompositeCommand lastCompositeCommand;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean forceUpdateOnQuit;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<Shape> selectionRectShapes = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<Shape> transformShapes = new ArrayList();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public Map<String, BoxInfo> transformBoxInfoMap = new LinkedHashMap();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, Matrix> transformShapeMatrixMap = new LinkedHashMap();

    /* renamed from: f, reason: from kotlin metadata */
    public boolean renderPageShapes = true;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean renderTransformShapes = true;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public TouchPointList selectionTrackPoints = new TouchPointList();

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isExpandRect = true;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isUpdateDisplayAfterQuit = true;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean useAddTransformedMethod = true;

    /* renamed from: c */
    public static final Matrix m33696c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Matrix) tmp0.invoke(obj);
    }

    public final void addTransformShapeMatrix(@NotNull Shape shape, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.transformShapeMatrixMap.put(shape, matrix);
    }

    /* renamed from: b */
    public final Shape m33697b(Shape shape, Matrix crossPageMatrix) {
        Shape targetShape = ShapeTypes.INSTANCE.getTargetShape(shape);
        Matrix matrix = new Matrix();
        if (crossPageMatrix != null) {
            matrix.postConcat(crossPageMatrix);
        }
        ShapeReferenceBean shapeReferenceBean = shape.getShapeReferenceBean();
        if (shapeReferenceBean != null) {
            matrix.postConcat(MatrixKt.getMatrixByValues(shapeReferenceBean.getMatrixValues()));
        }
        targetShape.postConcat(matrix);
        addTransformShapeMatrix(targetShape, matrix);
        return targetShape;
    }

    @NotNull
    public final List<Shape> buildSelectionRectShapes(@NotNull final BoxInfo virtualBoxInfo) {
        int mapCapacity;
        List distinct;
        List<Shape> mutableList;
        ArrayList arrayList;
        Matrix matrix;
        List<ShapeReferenceBean> referenceShapeBeanList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(virtualBoxInfo, "virtualBoxInfo");
        List<Shape> transformShapes = getTransformShapes();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<Shape> filterReferenceShapes = ShapeTypes.INSTANCE.filterReferenceShapes(transformShapes);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = filterReferenceShapes.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            ShapeReferenceBean shapeReferenceBean = ((Shape) next).getShapeReferenceBean();
            String shapeId = shapeReferenceBean != null ? shapeReferenceBean.getShapeId() : null;
            Object obj = linkedHashMap.get(shapeId);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(shapeId, obj);
            }
            ((List) obj).add(next);
        }
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(linkedHashMap.size());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry.getKey(), ShapeTypes.INSTANCE.toShapeIdSet((List) entry.getValue()));
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        for (Shape shape : transformShapes) {
            if (linkedHashSet.contains(shape.getShapeUniqueId())) {
                shape = null;
            } else {
                Shape targetShape = ShapeTypes.INSTANCE.getTargetShape(shape);
                ShapeReferenceBean shapeReferenceBean2 = shape.getShapeReferenceBean();
                CollectionKt.safeAdd(linkedHashSet, shapeReferenceBean2 != null ? shapeReferenceBean2.getShapeId() : null);
                ShapeSourceBean shapeSrcBean = targetShape.getShapeSrcBean();
                if (shapeSrcBean == null || (referenceShapeBeanList = shapeSrcBean.getReferenceShapeBeanList()) == null) {
                    arrayList = null;
                } else {
                    List<ShapeReferenceBean> list = referenceShapeBeanList;
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                    arrayList = new ArrayList(collectionSizeOrDefault);
                    Iterator<T> it3 = list.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(((ShapeReferenceBean) it3.next()).getShapeId());
                    }
                }
                CollectionKt.safeAddAll(linkedHashSet, arrayList);
                CollectionKt.safeAddAll(linkedHashSet, (Collection) linkedHashMap2.get(targetShape.getShapeUniqueId()));
                final BoxInfo boxInfo = getTransformBoxInfoMap().get(shape.getPageUniqueId());
                if (boxInfo != null) {
                    if (Intrinsics.areEqual(boxInfo.getId(), virtualBoxInfo.getId())) {
                        matrix = null;
                    } else {
                        String id = boxInfo.getId();
                        final Function1<String, Matrix> function1 = new Function1<String, Matrix>() { // from class: com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean$buildSelectionRectShapes$1$crossPageMatrix$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            @NotNull
                            public final Matrix invoke(@NotNull String it4) {
                                Intrinsics.checkNotNullParameter(it4, "it");
                                return BoxInfo.INSTANCE.getCrossPageMatrix(BoxInfo.this, virtualBoxInfo);
                            }
                        };
                        matrix = (Matrix) linkedHashMap3.computeIfAbsent(id, new Function() { // from class: com.sunia.HTREnginev2.qmm
                            @Override // java.util.function.Function
                            public final Object apply(Object obj2) {
                                Matrix m33696c;
                                m33696c = ShapeTransformBean.m33696c(Function1.this, obj2);
                                return m33696c;
                            }
                        });
                    }
                    if (ShapeTypes.INSTANCE.isReferenceShape(shape)) {
                        shape = m33697b(shape, matrix);
                    } else if (matrix != null) {
                        shape = m33697b(shape, matrix);
                    }
                }
            }
            if (shape != null) {
                arrayList2.add(shape);
            }
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) distinct);
        this.selectionRectShapes = mutableList;
        return mutableList;
    }

    public final boolean getForceUpdateOnQuit() {
        return this.forceUpdateOnQuit;
    }

    @Nullable
    public final CompositeCommand getLastCompositeCommand() {
        return this.lastCompositeCommand;
    }

    @Nullable
    public final RectF getLimitRect() {
        return this.limitRect;
    }

    @NotNull
    public final List<Shape> getSelectionRectShapes() {
        return this.selectionRectShapes;
    }

    @NotNull
    public final TouchPointList getSelectionTrackPoints() {
        return this.selectionTrackPoints;
    }

    public final int getSelectionType() {
        return this.selectionType;
    }

    @NotNull
    public final Map<String, BoxInfo> getTransformBoxInfoMap() {
        return this.transformBoxInfoMap;
    }

    @Nullable
    public final Matrix getTransformShapeMatrix(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return this.transformShapeMatrixMap.get(shape);
    }

    @NotNull
    public final Map<Shape, Matrix> getTransformShapeMatrixMap() {
        return this.transformShapeMatrixMap;
    }

    @NotNull
    public final List<Shape> getTransformShapes() {
        return this.transformShapes;
    }

    public final boolean getUseAddTransformedMethod() {
        return this.useAddTransformedMethod;
    }

    public final boolean hasTransformShapes() {
        return CollectionKt.isNonBlank(this.transformShapes);
    }

    /* renamed from: isExpandSelectionRect, reason: from getter */
    public final boolean getIsExpandRect() {
        return this.isExpandRect;
    }

    /* renamed from: isRenderPageShapes, reason: from getter */
    public final boolean getRenderPageShapes() {
        return this.renderPageShapes;
    }

    /* renamed from: isRenderTransformShapes, reason: from getter */
    public final boolean getRenderTransformShapes() {
        return this.renderTransformShapes;
    }

    /* renamed from: isSelectAll, reason: from getter */
    public final boolean getIsSelectAll() {
        return this.isSelectAll;
    }

    /* renamed from: isUpdateDisplayAfterQuit, reason: from getter */
    public final boolean getIsUpdateDisplayAfterQuit() {
        return this.isUpdateDisplayAfterQuit;
    }

    public final void replaceShapes(@NotNull List<? extends Shape> transformShapes) {
        Intrinsics.checkNotNullParameter(transformShapes, "transformShapes");
        setTransformShapes(transformShapes);
        this.transformShapeMatrixMap.clear();
    }

    @NotNull
    public final ShapeTransformBean setExpandSelectionRect(boolean isExpand) {
        this.isExpandRect = isExpand;
        return this;
    }

    public final void setForceUpdateOnQuit(boolean z) {
        this.forceUpdateOnQuit = z;
    }

    public final void setLastCompositeCommand(@Nullable CompositeCommand compositeCommand) {
        this.lastCompositeCommand = compositeCommand;
    }

    @NotNull
    public final ShapeTransformBean setLimitRect(@Nullable RectF limitRect) {
        this.limitRect = limitRect;
        return this;
    }

    @NotNull
    public final ShapeTransformBean setRenderPageShapes(boolean renderPageShapes) {
        this.renderPageShapes = renderPageShapes;
        return this;
    }

    @NotNull
    public final ShapeTransformBean setRenderTransformShapes(boolean render) {
        this.renderTransformShapes = render;
        return this;
    }

    @NotNull
    public final ShapeTransformBean setSelectAll(boolean selectAll) {
        this.isSelectAll = selectAll;
        return this;
    }

    @NotNull
    public final ShapeTransformBean setSelectionTrackPoints(@NotNull TouchPointList selectionTrackPoints) {
        Intrinsics.checkNotNullParameter(selectionTrackPoints, "selectionTrackPoints");
        this.selectionTrackPoints = selectionTrackPoints;
        return this;
    }

    @NotNull
    public final ShapeTransformBean setSelectionType(int type) {
        this.selectionType = type;
        return this;
    }

    public final void setTransformBoxInfoMap(@NotNull Map<String, BoxInfo> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.transformBoxInfoMap.putAll(map);
    }

    @NotNull
    public final ShapeTransformBean setTransformShapes(@NotNull List<? extends Shape> transformShapes) {
        List<Shape> mutableList;
        Intrinsics.checkNotNullParameter(transformShapes, "transformShapes");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) transformShapes);
        this.transformShapes = mutableList;
        return this;
    }

    public final void setUpdateDisplayAfterQuit(boolean z) {
        this.isUpdateDisplayAfterQuit = z;
    }

    public final void setUseAddTransformedMethod(boolean z) {
        this.useAddTransformedMethod = z;
    }

    public final void updateTransformShapeMatrix(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        for (Map.Entry<Shape, Matrix> entry : getTransformShapeMatrix(shapes).entrySet()) {
            entry.getKey().postConcat(MatrixKt.invertMatrix(entry.getValue()));
        }
    }

    @NotNull
    public final Map<Shape, Matrix> getTransformShapeMatrix(@NotNull List<? extends Shape> shapes) {
        Matrix matrix;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map map = CollectionKt.toMap(shapes, new Function1<Shape, String>() { // from class: com.onyx.android.sdk.note.common.data.shape.ShapeTransformBean$getTransformShapeMatrix$shapeMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getShapeUniqueId();
            }
        });
        Set<Shape> keySet = this.transformShapeMatrixMap.keySet();
        ArrayList<Shape> arrayList = new ArrayList();
        for (Object obj : keySet) {
            if (map.containsKey(((Shape) obj).getShapeUniqueId())) {
                arrayList.add(obj);
            }
        }
        for (Shape shape : arrayList) {
            Shape shape2 = (Shape) map.get(shape.getShapeUniqueId());
            if (shape2 != null && (matrix = this.transformShapeMatrixMap.get(shape)) != null) {
                linkedHashMap.put(shape2, matrix);
            }
        }
        return linkedHashMap;
    }
}
