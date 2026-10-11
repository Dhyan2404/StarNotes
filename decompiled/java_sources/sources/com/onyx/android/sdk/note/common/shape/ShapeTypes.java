package com.onyx.android.sdk.note.common.shape;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.Range;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010$\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0006J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006J\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001aJ\n\u0010\u001b\u001a\u00020\u0004*\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u001a*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\n\u0010\u001f\u001a\u00020\u0004*\u00020\u001cJ$\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001e2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001a0\"J\u0016\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0016\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0016\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0016\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\"J\u0016\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\"J\u0016\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0016\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0012\u0010.\u001a\u0004\u0018\u00010\u001a*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0012\u0010/\u001a\u0004\u0018\u00010\u001c*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0012\u00100\u001a\u000201*\u00020\u001c2\u0006\u00102\u001a\u000203J\n\u00104\u001a\u00020\u0006*\u00020\u001cJ\f\u00105\u001a\u0004\u0018\u000106*\u00020\u001cJ\u0010\u00107\u001a\b\u0012\u0004\u0012\u00020908*\u00020\u001cJ\n\u0010:\u001a\u00020\u001c*\u00020\u001cJ\u0016\u0010;\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001e*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\n\u0010<\u001a\u00020\u0006*\u00020\u001cJ\u0010\u0010=\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0010\u0010>\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\n\u0010\u0003\u001a\u00020\u0004*\u00020\u001cJ\n\u0010?\u001a\u00020\u0004*\u00020\u001cJ\n\u0010@\u001a\u00020\u0004*\u00020\u001cJ\n\u0010A\u001a\u00020\u0004*\u00020\u001cJ\n\u0010B\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u0007\u001a\u00020\u0004*\u00020\u001cJ\n\u0010C\u001a\u00020\u0004*\u00020\u001cJ\n\u0010D\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\t\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\n\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u000b\u001a\u00020\u0004*\u00020\u001cJ\n\u0010E\u001a\u00020\u0004*\u00020\u001cJ\n\u0010F\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\f\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\r\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u000f\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u0011\u001a\u00020\u0004*\u00020\u001cJ\n\u0010G\u001a\u00020\u0004*\u00020\u001cJ\n\u0010H\u001a\u00020\u0004*\u00020\u001cJ\n\u0010I\u001a\u00020\u0004*\u00020\u001cJ\n\u0010J\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u0012\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u0013\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u0014\u001a\u00020\u0004*\u00020\u001cJ\n\u0010K\u001a\u00020\u0004*\u00020\u001cJ\n\u0010L\u001a\u00020\u0004*\u00020\u001cJ\n\u0010M\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u0016\u001a\u00020\u0004*\u00020\u001cJ\n\u0010N\u001a\u00020\u0004*\u00020\u001cJ\n\u0010O\u001a\u00020\u0004*\u00020\u001cJ\n\u0010\u0017\u001a\u00020\u0004*\u00020\u001cJ\n\u0010P\u001a\u00020\u0004*\u00020\u001cJ\u0010\u0010Q\u001a\b\u0012\u0004\u0012\u00020R0\u001e*\u00020\u001cJ\u001e\u0010S\u001a\u00020T*\b\u0012\u0004\u0012\u00020\u001c0U2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0010\u0010W\u001a\u00020T*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ(\u0010X\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001e0Y*\b\u0012\u0004\u0012\u00020\u001c0\"J\u0016\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u001a0[*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\"\u0010\\\u001a\u0014\u0012\u0004\u0012\u00020\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001e0]*\b\u0012\u0004\u0012\u00020\u001c0\"J\u0016\u0010^\u001a\b\u0012\u0004\u0012\u00020\u001a0[*\b\u0012\u0004\u0012\u00020\u001c0\u001eJ\u0018\u0010_\u001a\u00020T*\b\u0012\u0004\u0012\u00020\u001c0\u001e2\u0006\u0010`\u001a\u00020\u0006J\u0018\u0010a\u001a\u00020T*\b\u0012\u0004\u0012\u00020\u001c0\u001e2\u0006\u0010b\u001a\u00020\u001aJ\u0010\u0010c\u001a\u00020T*\b\u0012\u0004\u0012\u00020\u001c0\u001e¨\u0006d"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;", "", "()V", "isAnnotationShape", "", "type", "", "isEraseShape", "shapeType", "isGraphicalShape", "isHwrTextShape", "isImageShape", "isMarkerPenShape", "isPenShape", "shape", "isPencilShape", "isPressurePenType", "isQuoteShape", "isSupportFillColor", "isSupportHWR", "isSupportLineStyle", "isTapeShape", "isTextExcerptShape", "isUniversalShape", "isUniversalShapeLineStyleEditable", GeoConstant.KEY_Universal_Shape_Type, "", "canErase", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "concatText", "", "disableThicknessStyle", "filterByShapeIds", "ids", "", "filterExcerptShapes", "filterImageShapes", "filterMarkerShapes", "filterNonUnderContentBottomShapes", "filterNormalShapes", "filterQuoteShapes", "filterReferenceShapes", "filterSubTypeMarkerShapes", "filterSupportHWRShapes", "filterTapesShapes", "filterUnderContentBottomShapes", "firstNormalShapePageId", "firstTargetShape", "getCenterTouchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "boxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getPrimaryColor", "getShapeLinkBean", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "getStrokeWidthRange", "Landroid/util/Range;", "", "getTargetShape", "getTargetShapes", "getTargetType", "hasSameStrokeRange", "hasSameStrokeWidth", "isAreaEraseShape", "isAttachShape", "isAttachmentShape", "isAudioShape", "isExcerptShape", "isFillColorShape", "isLinkAudioType", "isLinkShape", "isReferenceShape", "isRichTextShape", "isSearchableShape", "isStampShape", "isSupportOCR", "isTagShape", "isTargetTapeShape", "isTextShape", "isTimestampShape", "needLoadTouchPoints", "queryShapeBoundingRect", "Landroid/graphics/RectF;", "removeByShapeId", "", "", "shapes", "resetTransformMatrix", "splitShapes", "Lkotlin/Pair;", "toPageIdSet", "", "toPageShapeMap", "", "toShapeIdSet", "updateLayerId", "layerId", "updatePageId", CouchFieldKey.KEY_TOC_PAGE_ID, "updateReferenceShapeRect", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nShapeTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeTypes.kt\ncom/onyx/android/sdk/note/common/shape/ShapeTypes\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,508:1\n637#2:509\n1855#3,2:510\n766#3:512\n857#3,2:513\n766#3:515\n857#3,2:516\n1855#3,2:518\n766#3:520\n857#3,2:521\n766#3:523\n857#3,2:524\n766#3:526\n857#3,2:527\n766#3:529\n857#3,2:530\n766#3:532\n857#3,2:533\n766#3:535\n857#3,2:536\n766#3:538\n857#3,2:539\n1603#3,9:541\n1855#3:550\n1856#3:552\n1612#3:553\n1603#3,9:554\n1855#3:563\n1856#3:565\n1612#3:566\n1620#3,3:567\n1620#3,3:570\n1855#3,2:573\n1855#3,2:575\n288#3,2:577\n1855#3,2:579\n1855#3,2:581\n1855#3,2:583\n1549#3:585\n1620#3,3:586\n2661#3,7:589\n766#3:596\n857#3,2:597\n766#3:599\n857#3,2:600\n766#3:602\n857#3,2:603\n1#4:551\n1#4:564\n*S KotlinDebug\n*F\n+ 1 ShapeTypes.kt\ncom/onyx/android/sdk/note/common/shape/ShapeTypes\n*L\n154#1:509\n335#1:510,2\n360#1:512\n360#1:513,2\n364#1:515\n364#1:516,2\n370#1:518,2\n381#1:520\n381#1:521,2\n385#1:523\n385#1:524,2\n389#1:526\n389#1:527,2\n396#1:529\n396#1:530,2\n403#1:532\n403#1:533,2\n407#1:535\n407#1:536,2\n411#1:538\n411#1:539,2\n415#1:541,9\n415#1:550\n415#1:552\n415#1:553\n416#1:554,9\n416#1:563\n416#1:565\n416#1:566\n424#1:567,3\n428#1:570,3\n432#1:573,2\n442#1:575,2\n462#1:577,2\n466#1:579,2\n470#1:581,2\n474#1:583,2\n483#1:585\n483#1:586,3\n483#1:589,7\n487#1:596\n487#1:597,2\n500#1:599\n500#1:600,2\n504#1:602\n504#1:603,2\n415#1:551\n416#1:564\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeTypes {

    @NotNull
    public static final ShapeTypes INSTANCE = new ShapeTypes();

    public final boolean canErase(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        int targetType = getTargetType(shape);
        if (targetType == 9 || targetType == 16 || targetType == 19 || targetType == 29) {
            return false;
        }
        if (targetType != 39) {
            if (targetType == 41 || targetType == 42 || targetType == 44 || targetType == 45) {
                return false;
            }
            switch (targetType) {
                case 33:
                case 34:
                case 35:
                    return false;
            }
        }
        if (ShapeOptions.INSTANCE.isTapeStrokeStyle(getTargetShape(shape))) {
            return false;
        }
        return true;
    }

    @NotNull
    public final String concatText(@NotNull List<? extends Shape> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (CollectionKt.isNullOrEmpty(list)) {
            return "";
        }
        List<? extends Shape> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            String text = ((Shape) it2.next()).getText();
            if (text == null) {
                text = "";
            }
            arrayList.add(text);
        }
        Iterator it3 = arrayList.iterator();
        if (!it3.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object next = it3.next();
        while (it3.hasNext()) {
            next = ((String) next) + ((String) it3.next());
        }
        return (String) next;
    }

    public final boolean disableThicknessStyle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Shape targetShape = getTargetShape(shape);
        if (targetShape.getType() == 48) {
            return true;
        }
        return targetShape.getType() == 39 && ShapePersistOptionsKt.getSubShapeType$default(targetShape, 0, 1, null) == 1;
    }

    @NotNull
    public final List<Shape> filterByShapeIds(@NotNull List<? extends Shape> list, @NotNull Collection<String> ids) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(ids, "ids");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ids.contains(((Shape) obj).getShapeUniqueId())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterExcerptShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (INSTANCE.isExcerptShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterImageShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            ShapeTypes shapeTypes = INSTANCE;
            if (shapeTypes.isImageShape(shapeTypes.getTargetShape((Shape) obj))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterMarkerShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            ShapeTypes shapeTypes = INSTANCE;
            if (shapeTypes.isMarkerPenShape(shapeTypes.getTargetShape((Shape) obj))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterNonUnderContentBottomShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Shape targetShape = INSTANCE.getTargetShape((Shape) obj);
            if (!targetShape.underContent() && ShapePersistOptionsKt.isBottom(targetShape)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterNormalShapes(@NotNull Collection<? extends Shape> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (!INSTANCE.isReferenceShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterQuoteShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (INSTANCE.isQuoteShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterReferenceShapes(@NotNull Collection<? extends Shape> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (INSTANCE.isReferenceShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterSubTypeMarkerShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (ShapePersistOptionsKt.getSubShapeType$default(INSTANCE.getTargetShape((Shape) obj), 0, 1, null) == 15) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterSupportHWRShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (INSTANCE.isSupportHWR((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterTapesShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (INSTANCE.isTargetTapeShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> filterUnderContentBottomShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Shape targetShape = INSTANCE.getTargetShape((Shape) obj);
            if (targetShape.underContent() && ShapePersistOptionsKt.isBottom(targetShape)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Nullable
    public final String firstNormalShapePageId(@NotNull List<? extends Shape> list) {
        Object obj;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!INSTANCE.isReferenceShape((Shape) obj)) {
                break;
            }
        }
        Shape shape = (Shape) obj;
        if (shape != null) {
            return shape.getPageUniqueId();
        }
        return null;
    }

    @Nullable
    public final Shape firstTargetShape(@NotNull List<? extends Shape> list) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(list, "<this>");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list);
        Shape shape = (Shape) firstOrNull;
        if (shape != null) {
            return getTargetShape(shape);
        }
        return null;
    }

    @NotNull
    public final TouchPoint getCenterTouchPoint(@NotNull Shape shape, @NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        TouchPoint touchPoint = new TouchPoint(shape.getBoundingRect().centerX(), shape.getBoundingRect().centerY());
        touchPoint.mapMatrix(BoxInfoUtils.INSTANCE.renderMatrix(boxInfo));
        return touchPoint;
    }

    public final int getPrimaryColor(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isFillColorShape(shape) ? shape.getFillColor() : shape.getStrokeColor();
    }

    @Nullable
    public final ShapeLinkBean getShapeLinkBean(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Shape targetShape = getTargetShape(shape);
        if (isLinkShape(targetShape)) {
            return (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(targetShape.getText(), ShapeLinkBean.class);
        }
        return null;
    }

    @NotNull
    public final Range<Float> getStrokeWidthRange(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        int targetType = getTargetType(shape);
        PenUtils penUtils = PenUtils.INSTANCE;
        return new Range<>(Float.valueOf(penUtils.getMinStrokeWidth(targetType)), Float.valueOf(penUtils.getMaxStrokeWidth(targetType)));
    }

    @NotNull
    public final Shape getTargetShape(@NotNull Shape shape) {
        Shape targetShape;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return (!(shape instanceof ReferenceShape) || (targetShape = ((ReferenceShape) shape).getTargetShape()) == null) ? shape : targetShape;
    }

    @NotNull
    public final List<Shape> getTargetShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Shape shape : list) {
            ReferenceShape referenceShape = shape instanceof ReferenceShape ? (ReferenceShape) shape : null;
            if (referenceShape != null) {
                arrayList.add(referenceShape);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Shape targetShape = ((ReferenceShape) it2.next()).getTargetShape();
            if (targetShape != null) {
                arrayList2.add(targetShape);
            }
        }
        return arrayList2;
    }

    public final int getTargetType(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return getTargetShape(shape).getType();
    }

    public final boolean hasSameStrokeRange(@NotNull List<? extends Shape> list) {
        Object first;
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends Shape> list2 = list;
        if (CollectionKt.isNullOrEmpty(list2)) {
            return false;
        }
        if (CollectionKt.isSingle(list2)) {
            return true;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
        final Range<Float> strokeWidthRange = getStrokeWidthRange((Shape) first);
        return !CollectionKt.contains(list, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.common.shape.ShapeTypes$hasSameStrokeRange$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!Intrinsics.areEqual(strokeWidthRange, ShapeTypes.INSTANCE.getStrokeWidthRange(it2)));
            }
        });
    }

    public final boolean hasSameStrokeWidth(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Shape firstTargetShape = firstTargetShape(list);
        if (firstTargetShape == null) {
            return false;
        }
        float strokeWidth = firstTargetShape.getStrokeWidth();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!MathUtils.INSTANCE.floatCompare(((Shape) it2.next()).getStrokeWidth(), strokeWidth)) {
                return false;
            }
        }
        return true;
    }

    public final boolean isAnnotationShape(int type) {
        return type == 9;
    }

    public final boolean isAreaEraseShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 20;
    }

    public final boolean isAttachShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isAudioShape(shape) || isAttachmentShape(shape) || isLinkShape(shape) || isTimestampShape(shape);
    }

    public final boolean isAttachmentShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 34;
    }

    public final boolean isAudioShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 23;
    }

    public final boolean isEraseShape(int shapeType) {
        return shapeType == 14 || shapeType == 20;
    }

    public final boolean isExcerptShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        int type = shape.getType();
        return type == 41 || type == 44;
    }

    public final boolean isFillColorShape(@NotNull Shape shape) {
        List listOf;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(48);
        return listOf.contains(Integer.valueOf(shape.getType()));
    }

    public final boolean isGraphicalShape(int shapeType) {
        return shapeType == 7 || shapeType == 31 || shapeType == 17 || shapeType == 25 || shapeType == 8 || shapeType == 0 || shapeType == 1 || shapeType == 26 || shapeType == 24 || shapeType == 27 || shapeType == 28;
    }

    public final boolean isHwrTextShape(int type) {
        return type == 48;
    }

    public final boolean isImageShape(int type) {
        return type == 19 || type == 35 || type == 42 || type == 32;
    }

    public final boolean isLinkAudioType(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        ShapeLinkBean shapeLinkBean = getShapeLinkBean(shape);
        if (shapeLinkBean != null) {
            return shapeLinkBean.isLinkAudioType();
        }
        return false;
    }

    public final boolean isLinkShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 33;
    }

    public final boolean isMarkerPenShape(int type) {
        return type == 15;
    }

    public final boolean isPenShape(int shape) {
        return shape == 2 || shape == 5 || shape == 21 || shape == 3 || shape == 4 || shape == 22 || shape == 46 || shape == 15 || shape == 47 || shape == 49;
    }

    public final boolean isPencilShape(int type) {
        return type == 46 || type == 22;
    }

    public final boolean isPressurePenType(int shapeType) {
        return shapeType == 5 || shapeType == 46;
    }

    public final boolean isQuoteShape(int type) {
        return type == 42;
    }

    public final boolean isReferenceShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 2000;
    }

    public final boolean isRichTextShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 29;
    }

    public final boolean isSearchableShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Shape targetShape = getTargetShape(shape);
        return isTextShape(targetShape) || isSupportHWR(targetShape);
    }

    public final boolean isStampShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 32;
    }

    public final boolean isSupportFillColor(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Shape targetShape = getTargetShape(shape);
        if (targetShape instanceof UniversalShape) {
            return ((UniversalShape) targetShape).isFillColorSupported();
        }
        return isSupportFillColor(targetShape.getType());
    }

    public final boolean isSupportHWR(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isSupportHWR(getTargetShape(shape).getType());
    }

    public final boolean isSupportLineStyle(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        Shape targetShape = getTargetShape(shape);
        if (targetShape instanceof UniversalShape) {
            return ((UniversalShape) targetShape).isLineStyleEditable();
        }
        return isSupportLineStyle(targetShape.getType());
    }

    public final boolean isSupportOCR(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isImageShape(getTargetShape(shape).getType());
    }

    public final boolean isTagShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 45;
    }

    public final boolean isTapeShape(int shapeType) {
        return shapeType == 39;
    }

    public final boolean isTargetTapeShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return ShapeKt.isTapeShape(getTargetShape(shape));
    }

    public final boolean isTextExcerptShape(int type) {
        return type == 44;
    }

    public final boolean isTextShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 6 || shape.getType() == 16;
    }

    public final boolean isTimestampShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 38;
    }

    public final boolean isUniversalShape(int shapeType) {
        return shapeType == 40;
    }

    public final boolean isUniversalShapeLineStyleEditable(@NotNull String universalShapeType) {
        List listOf;
        Intrinsics.checkNotNullParameter(universalShapeType, "universalShapeType");
        listOf = CollectionsKt__CollectionsJVMKt.listOf(UniversalShapeTypeConst.DASH_LINE);
        return !listOf.contains(universalShapeType);
    }

    public final boolean needLoadTouchPoints(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return (isReferenceShape(shape) || isUniversalShape(shape) || isRichTextShape(shape)) ? false : true;
    }

    @NotNull
    public final List<RectF> queryShapeBoundingRect(@NotNull Shape shape) {
        Object orNull;
        Intrinsics.checkNotNullParameter(shape, "<this>");
        ArrayList<RectF> arrayList = new ArrayList();
        if (isTextExcerptShape(shape)) {
            List<TouchPoint> points = shape.getPoints().getPoints();
            int i = 0;
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, points.size() - 1, 2);
            if (progressionLastElement >= 0) {
                while (true) {
                    TouchPoint touchPoint = points.get(i);
                    orNull = CollectionsKt___CollectionsKt.getOrNull(points, i + 1);
                    TouchPoint touchPoint2 = (TouchPoint) orNull;
                    if (touchPoint2 == null) {
                        break;
                    }
                    arrayList.add(new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY()));
                    if (i == progressionLastElement) {
                        break;
                    }
                    i += 2;
                }
            }
        } else {
            arrayList.add(shape.getPoints().getBoundingRect());
        }
        for (RectF rectF : arrayList) {
            Matrix shapeMatrix = shape.getShapeMatrix();
            if (shapeMatrix != null) {
                shapeMatrix.mapRect(rectF);
            }
        }
        return arrayList;
    }

    public final void removeByShapeId(@NotNull List<Shape> list, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        CollectionKt.removeItemsByKey(list, shapes, new Function1<Shape, String>() { // from class: com.onyx.android.sdk.note.common.shape.ShapeTypes$removeByShapeId$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getShapeUniqueId();
            }
        });
    }

    public final void resetTransformMatrix(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ShapeOptions.INSTANCE.resetTransformMatrix((Shape) it2.next());
        }
    }

    @NotNull
    public final Pair<List<Shape>, List<Shape>> splitShapes(@NotNull Collection<? extends Shape> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Shape shape : collection) {
            if (INSTANCE.isReferenceShape(shape)) {
                arrayList2.add(shape);
            } else {
                arrayList.add(shape);
            }
        }
        return TuplesKt.m61535to(arrayList, arrayList2);
    }

    @NotNull
    public final Set<String> toPageIdSet(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(((Shape) it2.next()).getPageUniqueId());
        }
        return linkedHashSet;
    }

    @NotNull
    public final Map<String, List<Shape>> toPageShapeMap(@NotNull Collection<? extends Shape> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        return CollectionKt.toMapList(collection, new Function1<Shape, String>() { // from class: com.onyx.android.sdk.note.common.shape.ShapeTypes$toPageShapeMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getPageUniqueId();
            }
        }, new Function1<Shape, Shape>() { // from class: com.onyx.android.sdk.note.common.shape.ShapeTypes$toPageShapeMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
    }

    @NotNull
    public final Set<String> toShapeIdSet(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            linkedHashSet.add(((Shape) it2.next()).getShapeUniqueId());
        }
        return linkedHashSet;
    }

    public final void updateLayerId(@NotNull List<? extends Shape> list, int i) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).setLayerId(i);
        }
    }

    public final void updatePageId(@NotNull List<? extends Shape> list, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).setPageUniqueId(pageId);
        }
    }

    public final void updateReferenceShapeRect(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Iterator<T> it2 = filterReferenceShapes(list).iterator();
        while (it2.hasNext()) {
            ((Shape) it2.next()).updateShapeRect();
        }
    }

    public final boolean isAnnotationShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isAnnotationShape(shape.getType());
    }

    public final boolean isEraseShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isEraseShape(shape.getType());
    }

    public final boolean isGraphicalShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isGraphicalShape(shape.getType());
    }

    public final boolean isHwrTextShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 48;
    }

    public final boolean isImageShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isImageShape(shape.getType());
    }

    public final boolean isMarkerPenShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isMarkerPenShape(shape.getType());
    }

    public final boolean isPenShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isPenShape(shape.getType()) || shape.getType() == 36;
    }

    public final boolean isPencilShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isPencilShape(shape.getType());
    }

    public final boolean isQuoteShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isQuoteShape(shape.getType());
    }

    public final boolean isTextExcerptShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return isTextExcerptShape(shape.getType());
    }

    public final boolean isUniversalShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.getType() == 40;
    }

    public final boolean isSupportHWR(int shapeType) {
        return (isPenShape(shapeType) && !isMarkerPenShape(shapeType)) || isHwrTextShape(shapeType);
    }

    public final boolean isSupportFillColor(int shapeType) {
        return isUniversalShape(shapeType);
    }

    public final boolean isSupportLineStyle(int shapeType) {
        return isUniversalShape(shapeType);
    }
}
