package com.onyx.android.sdk.note.common.utils;

import android.graphics.Matrix;
import com.blankj.utilcode.util.ScreenUtils;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.FloatKt;
import com.onyx.android.sdk.base.extension.IntKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.extension.PhysiceExtKt;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeCreateArgs;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000fJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014J\u0016\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\r2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0004J\u0014\u0010\u001e\u001a\u00020\u001f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000fJ\u0016\u0010 \u001a\u00020\u001f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000fJ\u0016\u0010!\u001a\u00020\u001f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000fJ\u0014\u0010\"\u001a\u00020\u001f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000fJ\u0016\u0010#\u001a\u00020\u001f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000fJ.\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020\u00142\u0006\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0014J\u0014\u0010*\u001a\u00020\u001f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000fJ\u0014\u0010+\u001a\u00020\u001f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000fJ\u001e\u0010,\u001a\u00020\u001f2\b\u0010-\u001a\u0004\u0018\u00010\u00122\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040\u000fJ\u000e\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\nJ\u0016\u00101\u001a\u00020\u001f2\u0006\u00102\u001a\u0002032\u0006\u0010\u001d\u001a\u00020\u0004J\u001e\u00104\u001a\u0002052\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u00106\u001a\u0002052\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u00102\u001a\u000203J\u001e\u00106\u001a\u0002052\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001072\u0006\u00102\u001a\u000203J\u001e\u00108\u001a\u0002052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f2\b\b\u0002\u00109\u001a\u00020\u001fJ\u0014\u0010:\u001a\u0002052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000407J\u0010\u0010;\u001a\u00020\u0012*\b\u0012\u0004\u0012\u00020\u00040\u000f¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;", "", "()V", "createFreeShape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "drawingArgs", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "renderContext", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "shapeType", "", "createShape", "pointList", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "filterResourceExistImageShape", "", "shapes", "generateUniqueId", "", "getRenderStrokeWidth", "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "scale", "getShapeStrokeWidth", "getShapeVertices", "", "touchPointList", "matrix", "Landroid/graphics/Matrix;", "shape", "hasAttachShapes", "", "hasExcerptShape", "hasImageShape", "hasLocked", "hasTextShape", "inCircle", "cx", "cy", "radius", "x", "y", "isAllPenType", "isAllSameType", "isAllShapeInPage", CouchFieldKey.KEY_PAGE_ID, "shapeList", "isIgnoreFill", "color", "isShapeOnCurrentLayer", "notePage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "setShapeArgs", "", "setShapeZOrder", "", "transparentShapes", "transparent", "updateShapesTimes", "getTargetShapeTypeHistogramString", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n1549#2:285\n1620#2,3:286\n766#2:289\n857#2,2:290\n1747#2,3:292\n766#2:295\n857#2,2:296\n766#2:298\n857#2,2:299\n1477#2:301\n1502#2,3:302\n1505#2,3:312\n372#3,7:305\n215#4:315\n216#4:317\n1#5:316\n*S KotlinDebug\n*F\n+ 1 ShapeUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeUtils\n*L\n199#1:285\n199#1:286,3\n205#1:289\n205#1:290,2\n222#1:292,3\n241#1:295\n241#1:296,2\n242#1:298\n242#1:299,2\n264#1:301\n264#1:302,3\n264#1:312,3\n264#1:305,7\n267#1:315\n267#1:317\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeUtils {

    @NotNull
    public static final ShapeUtils INSTANCE = new ShapeUtils();

    public static /* synthetic */ void transparentShapes$default(ShapeUtils shapeUtils, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        shapeUtils.transparentShapes(list, z);
    }

    @NotNull
    public final Shape createFreeShape(@NotNull NoteDrawingArgs drawingArgs, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(drawingArgs, "drawingArgs");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return createFreeShape(drawingArgs, renderContext, drawingArgs.getCurrentShapeType());
    }

    @NotNull
    public final Shape createShape(@NotNull NoteDrawingArgs drawingArgs, @NotNull RenderContext renderContext, @NotNull TouchPointList pointList) {
        Intrinsics.checkNotNullParameter(drawingArgs, "drawingArgs");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        Shape createFreeShape = createFreeShape(drawingArgs, renderContext);
        createFreeShape.addPoints(pointList);
        createFreeShape.ensureShapeUniqueId();
        createFreeShape.updateShapeRect();
        return createFreeShape;
    }

    @NotNull
    public final List<Shape> filterResourceExistImageShape(@Nullable List<? extends Shape> shapes) {
        List<Shape> emptyList;
        if (CollectionKt.isNullOrEmpty(shapes)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapes) {
            if (ShapeTypes.INSTANCE.isImageShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            ShapeResource resource = ShapeOptions.INSTANCE.getResource((Shape) obj2);
            if (resource != null ? resource.isLocalExist() : false) {
                arrayList2.add(obj2);
            }
        }
        return arrayList2;
    }

    @NotNull
    public final String generateUniqueId() {
        return UUIDUtils.INSTANCE.rawUUID();
    }

    public final float getRenderStrokeWidth(@NotNull NoteDrawingArgs drawingArgs, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(drawingArgs, "drawingArgs");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return getRenderStrokeWidth(PhysiceExtKt.toScreenStrokeWidth(drawingArgs.getStrokeWidth()), renderContext.getViewPortScale());
    }

    public final float getShapeStrokeWidth(@NotNull NoteDrawingArgs drawingArgs, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(drawingArgs, "drawingArgs");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return getRenderStrokeWidth(drawingArgs, renderContext) / renderContext.getViewPortScale();
    }

    @NotNull
    public final float[] getShapeVertices(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return getShapeVertices(shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String(), shape.getShapeMatrix());
    }

    @NotNull
    public final String getTargetShapeTypeHistogramString(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Integer valueOf = Integer.valueOf(ShapeTypes.INSTANCE.getTargetType((Shape) obj));
            Object obj2 = linkedHashMap.get(valueOf);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(valueOf, obj2);
            }
            ((List) obj2).add(obj);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("-- ShapeTypeHistogram start --\n");
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            int intValue = ((Number) entry.getKey()).intValue();
            List list2 = (List) entry.getValue();
            List list3 = list2;
            Iterator it2 = list3.iterator();
            int i = 0;
            int i2 = 0;
            while (it2.hasNext()) {
                i2 += ShapeTypes.INSTANCE.getTargetShape((Shape) it2.next()).getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size();
            }
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                i += ShapeTypes.INSTANCE.getTargetShape((Shape) it3.next()).getRenderPointSize();
            }
            sb.append("type = " + intValue + ", size = " + list2.size() + ", pointSize = " + i2 + ", renderPointSize = " + i + ", pointSizePerShape = " + IntKt.safeDivide(i2, list2.size()) + ", renderPointSizePerShape = " + IntKt.safeDivide(i, list2.size()) + ", renderPointPerTouchPoint = " + FloatKt.safeDivide(i, Integer.valueOf(i2)) + " \n");
        }
        sb.append("-- ShapeTypeHistogram end --\n");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public final boolean hasAttachShapes(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            if (ShapeTypes.INSTANCE.isAttachShape(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasExcerptShape(@Nullable List<? extends Shape> shapes) {
        if (shapes == null) {
            return false;
        }
        List<? extends Shape> list = shapes;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (Shape shape : list) {
            if (shape.getType() == 41 || shape.getType() == 44) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasImageShape(@Nullable List<? extends Shape> shapes) {
        if (CollectionKt.isNullOrEmpty(shapes)) {
            return false;
        }
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            if (it2.next().getType() == 19) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasLocked(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            if (ShapePersistOptionsKt.isLocked(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public final boolean hasTextShape(@Nullable List<? extends Shape> shapes) {
        if (CollectionKt.isNullOrEmpty(shapes)) {
            return false;
        }
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            if (it2.next().getType() == 16) {
                return true;
            }
        }
        return false;
    }

    public final boolean inCircle(float cx, float cy, float radius, float x, float y) {
        return Math.sqrt(Math.pow((double) (cx - x), 2.0d) + Math.pow((double) (cy - y), 2.0d)) < ((double) radius);
    }

    public final boolean isAllPenType(@NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapes) {
            if (ShapeTypes.INSTANCE.isPenShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        return CollectionKt.getSize(arrayList) == CollectionKt.getSize(shapes);
    }

    public final boolean isAllSameType(@NotNull List<? extends Shape> shapes) {
        int collectionSizeOrDefault;
        List distinct;
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        List<? extends Shape> list = shapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((Shape) it2.next()).getType()));
        }
        distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        return CollectionKt.getSize(distinct) <= 1;
    }

    public final boolean isAllShapeInPage(@Nullable String pageUniqueId, @NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Iterator<? extends Shape> it2 = shapeList.iterator();
        while (it2.hasNext()) {
            if (!StringKt.safelyEqualsIgnoreCase(it2.next().getPageUniqueId(), pageUniqueId)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isIgnoreFill(int color) {
        return color == 0;
    }

    public final boolean isShapeOnCurrentLayer(@NotNull NotePage notePage, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return notePage.getPageInfo().getCurrentLayerId() == shape.getLayerId();
    }

    public final void setShapeArgs(@NotNull Shape shape, @NotNull RenderContext renderContext, @NotNull NoteDrawingArgs drawingArgs) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(drawingArgs, "drawingArgs");
        ShapeCreateArgs shapeCreateArgs = new ShapeCreateArgs(0.0f, 0.0f, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, false, 0, 32767, null);
        shapeCreateArgs.setDisplayScale(renderContext.getDisplayScaleAndShapeScale(shape));
        shapeCreateArgs.setPenAttrs(drawingArgs.copyPenAttrs());
        PenArgs penArgs = drawingArgs.getPenArgs();
        shapeCreateArgs.setPressureSensitivity(DeviceFactory.INSTANCE.getCurrentDevice().getDevicePressureSensitivity(penArgs != null ? penArgs.getPressureSensitivity() : DeviceFactory.INSTANCE.getCurrentDevice().getDefaultPressureSensitivity(0.375f), 0.15f, 0.6f, 10));
        PenArgs penArgs2 = drawingArgs.getPenArgs();
        shapeCreateArgs.setVelocityAmplifier(penArgs2 != null ? penArgs2.getVelocityAmplifier() : com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.getDEFAULT_VELOCITY_AMPLIFIER());
        float f = 0.0f;
        if (!(shapeCreateArgs.getVelocityAmplifier() == 0.0f)) {
            PenArgs penArgs3 = drawingArgs.getPenArgs();
            f = penArgs3 != null ? penArgs3.getVelocitySensitivity() : com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.getDEFAULT_VELOCITY_SENSITIVITY();
        }
        shapeCreateArgs.setVelocitySensitivity(f);
        PenArgs penArgs4 = drawingArgs.getPenArgs();
        shapeCreateArgs.setVelocityIgnoreThreshold(penArgs4 != null ? penArgs4.getVelocityIgnoreThreshold() : com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.getDEFAULT_VELOCITY_IGNORE_THRESHOLD());
        PenArgs penArgs5 = drawingArgs.getPenArgs();
        shapeCreateArgs.setVelocityLowerBound(penArgs5 != null ? penArgs5.getVelocityLowerBound() : com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.getDEFAULT_VELOCITY_LOWER_BOUND());
        PenArgs penArgs6 = drawingArgs.getPenArgs();
        shapeCreateArgs.setVelocityUpperBound(penArgs6 != null ? penArgs6.getVelocityUpperBound() : com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.getDEFAULT_VELOCITY_UPPER_BOUND());
        PenArgs penArgs7 = drawingArgs.getPenArgs();
        shapeCreateArgs.setAlphaFactor(penArgs7 != null ? penArgs7.getAlphaFactor() : 1.0f);
        shapeCreateArgs.setDpi((ScreenUtils.getScreenXDpi() + ScreenUtils.getScreenYDpi()) / 2.0f);
        PenArgs penArgs8 = drawingArgs.getPenArgs();
        shapeCreateArgs.setSmoothLevel(penArgs8 != null ? penArgs8.getSmoothLevel() : 0.2f);
        PenArgs penArgs9 = drawingArgs.getPenArgs();
        shapeCreateArgs.setDirectionEnabled(penArgs9 != null ? penArgs9.getDirectionEnabled() : true);
        PenArgs penArgs10 = drawingArgs.getPenArgs();
        shapeCreateArgs.setBrushShape(penArgs10 != null ? penArgs10.getBrushShape() : 1);
        shape.setShapeCreateArgs(shapeCreateArgs);
        ShapeOptions.INSTANCE.setShapeLineStyle(shape, drawingArgs.getShapeLineStyle());
    }

    public final void setShapeZOrder(@Nullable Collection<? extends Shape> shapeList, @NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        if (CollectionKt.isNullOrEmpty(shapeList)) {
            return;
        }
        Iterator<? extends Shape> it2 = shapeList.iterator();
        while (it2.hasNext()) {
            setShapeZOrder(it2.next(), notePage);
        }
    }

    public final void transparentShapes(@NotNull List<? extends Shape> shapes, boolean transparent) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            ShapeOptions.INSTANCE.setTransparent(it2.next(), transparent);
        }
    }

    public final void updateShapesTimes(@NotNull Collection<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            it2.next().updateShapeTime();
        }
    }

    @NotNull
    public final Shape createFreeShape(@NotNull NoteDrawingArgs drawingArgs, @NotNull RenderContext renderContext, int shapeType) {
        Intrinsics.checkNotNullParameter(drawingArgs, "drawingArgs");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Shape create = ShapeFactory.INSTANCE.create(shapeType);
        create.setStrokeColor(drawingArgs.getStrokeColor());
        create.setStrokeWidth(getShapeStrokeWidth(drawingArgs, renderContext));
        setShapeArgs(create, renderContext, drawingArgs);
        return create;
    }

    public final float getRenderStrokeWidth(float strokeWidth, @NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return getRenderStrokeWidth(strokeWidth, renderContext.getScale());
    }

    @NotNull
    public final float[] getShapeVertices(@Nullable TouchPointList touchPointList, @Nullable Matrix matrix) {
        if (touchPointList == null) {
            return new float[0];
        }
        List<TouchPoint> points = touchPointList.getPoints();
        float[] fArr = new float[points.size() * 2];
        int size = points.size();
        for (int i = 0; i < size; i++) {
            int i2 = i * 2;
            fArr[i2] = points.get(i).getX();
            fArr[i2 + 1] = points.get(i).getY();
        }
        if (matrix != null) {
            matrix.mapPoints(fArr);
        }
        return fArr;
    }

    public final float getRenderStrokeWidth(float strokeWidth, float scale) {
        return Math.min(strokeWidth * scale, PhysiceExtKt.toScreenStrokeWidth(120.0f));
    }

    public final void setShapeZOrder(@NotNull Shape shape, @NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        shape.setLayerId(notePage.getLayerIndex());
    }
}
