package com.onyx.android.sdk.genericshape.erase;

import android.graphics.Matrix;
import android.graphics.Path;
import com.alibaba.fastjson2.JSONObject;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.ArraysKt;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.Arc;
import com.onyx.android.sdk.genericshape.BidirectionalLine;
import com.onyx.android.sdk.genericshape.Curve;
import com.onyx.android.sdk.genericshape.DirectionLine;
import com.onyx.android.sdk.genericshape.Feature;
import com.onyx.android.sdk.genericshape.FeatureCollection;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoJsonKt;
import com.onyx.android.sdk.genericshape.Geometry;
import com.onyx.android.sdk.genericshape.IGeometry;
import com.onyx.android.sdk.genericshape.LineString;
import com.onyx.android.sdk.genericshape.MultiLineString;
import com.onyx.android.sdk.genericshape.MultiPoint;
import com.onyx.android.sdk.genericshape.Oval;
import com.onyx.android.sdk.genericshape.Polygon;
import com.onyx.android.sdk.genericshape.Polyline;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.genericshape.Rectangle;
import com.onyx.android.sdk.genericshape.SelectionPointType;
import com.onyx.android.sdk.genericshape.WaveAttr;
import com.onyx.android.sdk.genericshape.WaveLine;
import com.onyx.android.sdk.geometry.data.SplitResult;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.utils.BezierUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0098\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a=\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0002\u0010\u000b\u001a8\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002\u001a,\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017*\u00020\u00012\u001a\u0010\u0019\u001a\u0016\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0007j\u0002`\u001b0\u0006j\u0002`\u001c0\u001a\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020\u001f2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020\"2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020\u00102\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020#2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020$2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020%2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020&2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020'2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020(2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020)2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020*2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020+2\u0006\u0010 \u001a\u00020!\u001a\u0012\u0010\u001d\u001a\u00020\u001e*\u00020,2\u0006\u0010 \u001a\u00020!\u001a=\u0010-\u001a\u00020\u001e*\u00020\u00012\"\u0010\u0005\u001a\u001e\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0007j\u0002`\u001b0\u0006j\u0002`\u001c\u0018\u00010\u0006j\u0004\u0018\u0001`.2\u0006\u0010 \u001a\u00020!H\u0002¢\u0006\u0002\u0010/\u001a\u001e\u00100\u001a\u0016\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0007j\u0002`\u001b0\u0006j\u0002`\u001c0\u0017*\u000201¨\u00062"}, m61528d2 = {"createSplitArrowSegment", "Lcom/onyx/android/sdk/genericshape/Geometry;", GeoConstant.KEY_Geometry, PointConstant.POINT_FILE_END, "Lcom/onyx/android/sdk/base/data/TouchPointList;", "coordinates", "", "", "hasStartArrow", "", "hasEndArrow", "(Lcom/onyx/android/sdk/genericshape/Geometry;Lcom/onyx/android/sdk/base/data/TouchPointList;[[FZZ)Lcom/onyx/android/sdk/genericshape/Geometry;", "updateCurveFeatureSubType", "serializedFeature", "Lcom/alibaba/fastjson2/JSONObject;", "originFeature", "Lcom/onyx/android/sdk/genericshape/Curve;", "originStart", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "originEnd", "splitStart", "splitEnd", "joinConnectedLineString", "", "Lcom/onyx/android/sdk/genericshape/IGeometry;", "coordinateList", "", "Lcom/onyx/android/sdk/genericshape/Position;", "Lcom/onyx/android/sdk/genericshape/Line;", "splitShape", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "Lcom/onyx/android/sdk/genericshape/Arc;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "Lcom/onyx/android/sdk/genericshape/BidirectionalLine;", "Lcom/onyx/android/sdk/genericshape/DirectionLine;", "Lcom/onyx/android/sdk/genericshape/Feature;", "Lcom/onyx/android/sdk/genericshape/FeatureCollection;", "Lcom/onyx/android/sdk/genericshape/LineString;", "Lcom/onyx/android/sdk/genericshape/MultiLineString;", "Lcom/onyx/android/sdk/genericshape/Oval;", "Lcom/onyx/android/sdk/genericshape/Polygon;", "Lcom/onyx/android/sdk/genericshape/Polyline;", "Lcom/onyx/android/sdk/genericshape/Rectangle;", "Lcom/onyx/android/sdk/genericshape/WaveLine;", "splitShapeByLines", "Lcom/onyx/android/sdk/genericshape/Lines;", "(Lcom/onyx/android/sdk/genericshape/Geometry;[[[FLcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "toRectangleLines", "Lcom/onyx/android/sdk/genericshape/MultiPoint;", "sdk-genericshape_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nUniversalShapeSplitter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeSplitter.kt\ncom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 7 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,626:1\n13309#2:627\n13310#2:630\n13309#2,2:645\n13309#2:680\n13310#2:683\n1855#3,2:628\n1855#3,2:631\n1549#3:633\n1620#3,2:634\n1622#3:638\n1549#3:639\n1620#3,3:640\n1855#3,2:643\n1855#3,2:647\n1855#3,2:650\n1603#3,9:652\n1855#3:661\n1856#3:663\n1612#3:664\n1603#3,9:665\n1855#3:674\n1856#3:676\n1612#3:677\n1855#3,2:681\n1855#3,2:684\n673#4,2:636\n1#5:649\n1#5:662\n1#5:675\n37#6,2:678\n37#6,2:686\n37#6,2:689\n26#7:688\n*S KotlinDebug\n*F\n+ 1 UniversalShapeSplitter.kt\ncom/onyx/android/sdk/genericshape/erase/UniversalShapeSplitterKt\n*L\n211#1:627\n211#1:630\n388#1:645,2\n526#1:680\n526#1:683\n213#1:628,2\n241#1:631,2\n264#1:633\n264#1:634,2\n264#1:638\n323#1:639\n323#1:640,3\n369#1:643,2\n403#1:647,2\n497#1:650,2\n508#1:652,9\n508#1:661\n508#1:663\n508#1:664\n509#1:665,9\n509#1:674\n509#1:676\n509#1:677\n545#1:681,2\n569#1:684,2\n278#1:636,2\n508#1:662\n509#1:675\n510#1:678,2\n591#1:686,2\n609#1:689,2\n599#1:688\n*E\n"})
/* loaded from: classes7.dex */
public final class UniversalShapeSplitterKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Geometry createSplitArrowSegment(Geometry geometry, TouchPointList touchPointList, float[][] fArr, boolean z, boolean z2) {
        String str;
        if (z && z2) {
            str = GeoConstant.BidirectionalLine;
        } else if (z || z2) {
            if (z) {
                ArraysKt___ArraysKt.reverse(fArr);
            }
            str = GeoConstant.DirectionLine;
        } else {
            str = GeoConstant.LineString;
        }
        Geometry parseSegmentGeometry = UniversalShapeSplitter.INSTANCE.parseSegmentGeometry(geometry, touchPointList, str);
        LineString lineString = parseSegmentGeometry instanceof LineString ? (LineString) parseSegmentGeometry : null;
        if (lineString != null) {
            lineString.setCoordinates(fArr);
        }
        DirectionLine directionLine = parseSegmentGeometry instanceof DirectionLine ? (DirectionLine) parseSegmentGeometry : null;
        if (directionLine != null) {
            directionLine.setCoordinates(fArr);
            directionLine.setDrawStartArrow(false);
            directionLine.setDrawEndArrow(true);
        }
        BidirectionalLine bidirectionalLine = parseSegmentGeometry instanceof BidirectionalLine ? (BidirectionalLine) parseSegmentGeometry : null;
        if (bidirectionalLine != null) {
            bidirectionalLine.setCoordinates(fArr);
            bidirectionalLine.setDrawStartArrow(true);
            bidirectionalLine.setDrawEndArrow(true);
        }
        return parseSegmentGeometry;
    }

    @NotNull
    public static final List<IGeometry> joinConnectedLineString(@NotNull Geometry geometry, @NotNull List<float[][]> coordinateList) {
        Object lastOrNull;
        Object lastOrNull2;
        Intrinsics.checkNotNullParameter(geometry, "<this>");
        Intrinsics.checkNotNullParameter(coordinateList, "coordinateList");
        List<float[][]> resortLineCoordinateList = Polygon.INSTANCE.resortLineCoordinateList(coordinateList);
        ArrayList arrayList = new ArrayList();
        List<float[][]> list = resortLineCoordinateList;
        if (!list.isEmpty()) {
            Polyline polyline = new Polyline();
            polyline.setFromShapeType(geometry.getFromShapeType());
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) resortLineCoordinateList);
            float[][] fArr = (float[][]) lastOrNull;
            if (fArr != null) {
                lastOrNull2 = ArraysKt___ArraysKt.lastOrNull(fArr);
                float[] fArr2 = (float[]) lastOrNull2;
                if (fArr2 != null) {
                    float[][] fArr3 = new float[2];
                    for (int i = 0; i < 2; i++) {
                        fArr3[i] = fArr2;
                    }
                    CollectionKt.safeAdd(list, fArr3);
                }
            }
            polyline.setCoordinates((float[][][]) list.toArray(new float[0][]));
            CollectionKt.safeAdd(arrayList, polyline);
            coordinateList.removeAll(list);
        }
        return arrayList;
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull final Arc arc, @NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(arc, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return UniversalShapeSplitter.INSTANCE.split(arc, eraseBean, arc.loadRenderPath(), new Function3<IGeometry, List<? extends TouchPointList>, Integer, Geometry>() { // from class: com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt$splitShape$result$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Geometry invoke(IGeometry iGeometry, List<? extends TouchPointList> list, Integer num) {
                return invoke(iGeometry, (List<TouchPointList>) list, num.intValue());
            }

            @Nullable
            public final Geometry invoke(@NotNull IGeometry iGeometry, @NotNull List<TouchPointList> splitSegmentList, int i) {
                Arc createArc;
                Intrinsics.checkNotNullParameter(iGeometry, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(splitSegmentList, "splitSegmentList");
                TouchPointList touchPointList = splitSegmentList.get(i);
                if (touchPointList.size() <= 1) {
                    return null;
                }
                TouchPoint first = touchPointList.first();
                Intrinsics.checkNotNull(first);
                TouchPoint last = touchPointList.last();
                Intrinsics.checkNotNull(last);
                createArc = UniversalShapeSplitter.INSTANCE.createArc(TouchPointList.INSTANCE.getBoundingRect(Arc.this.loadSelectionPoints()), first, last, (r13 & 8) != 0 ? false : false, (r13 & 16) != 0 ? false : true);
                createArc.setFromShapeType(Arc.this.getFromShapeType());
                Properties properties = (Properties) JSONUtils.INSTANCE.clone(Arc.this.getProperties(), Properties.class);
                if (properties != null) {
                    createArc.setProperties(properties);
                }
                return createArc;
            }
        });
    }

    private static final SplitShapeResult splitShapeByLines(Geometry geometry, float[][][] fArr, EraseBean eraseBean) {
        float[][] coordinates;
        Object first;
        Object first2;
        Object last;
        Object last2;
        Object last3;
        Object first3;
        Object firstOrNull;
        ArrayList<float[][]> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (fArr != null) {
            for (float[][] fArr2 : fArr) {
                LineString lineString = new LineString();
                Object[] copyOf = Arrays.copyOf(fArr2, fArr2.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                lineString.setCoordinates((float[][]) copyOf);
                lineString.setFromShapeType(geometry.getFromShapeType());
                SplitShapeResult split = lineString.split(eraseBean);
                if (!split.getShapeErased()) {
                    IGeometry iGeometry = null;
                    if (CollectionKt.getSize(split.getSplitShapes()) == 1) {
                        List<IGeometry> splitShapes = split.getSplitShapes();
                        if (splitShapes != null) {
                            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) splitShapes);
                            iGeometry = (IGeometry) firstOrNull;
                        }
                        if (iGeometry instanceof LineString) {
                            CollectionKt.safeAdd(arrayList, ((LineString) iGeometry).getCoordinates());
                        } else {
                            CollectionKt.safeAdd(arrayList, fArr2);
                        }
                    } else {
                        List<IGeometry> splitShapes2 = split.getSplitShapes();
                        if (splitShapes2 != null) {
                            CollectionKt.safeAddAll(arrayList2, splitShapes2);
                            for (IGeometry iGeometry2 : splitShapes2) {
                                LineString lineString2 = iGeometry2 instanceof LineString ? (LineString) iGeometry2 : null;
                                if (lineString2 != null && (coordinates = lineString2.getCoordinates()) != null) {
                                    first = ArraysKt___ArraysKt.first(coordinates);
                                    float[] fArr3 = (float[]) first;
                                    if (fArr3 != null) {
                                        first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) splitShapes2);
                                        if (lineString2 == first2) {
                                            first3 = ArraysKt___ArraysKt.first(fArr2);
                                            if (GeoJsonKt.isApproximatelyEqual(fArr3, (float[]) first3)) {
                                                arrayList2.remove(lineString2);
                                                CollectionKt.safeAdd(arrayList, lineString2.getCoordinates());
                                            }
                                        }
                                        float[][] coordinates2 = lineString2.getCoordinates();
                                        if (coordinates2 != null) {
                                            last = ArraysKt___ArraysKt.last(coordinates2);
                                            float[] fArr4 = (float[]) last;
                                            if (fArr4 != null) {
                                                last2 = CollectionsKt___CollectionsKt.last((List<? extends Object>) splitShapes2);
                                                if (lineString2 == last2) {
                                                    last3 = ArraysKt___ArraysKt.last(fArr2);
                                                    if (GeoJsonKt.isApproximatelyEqual(fArr4, (float[]) last3)) {
                                                        arrayList2.remove(lineString2);
                                                        CollectionKt.safeAdd(arrayList, lineString2.getCoordinates());
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        ArrayList arrayList3 = new ArrayList();
        if (CollectionKt.isNonBlank(arrayList)) {
            CollectionKt.safeAddAll(arrayList3, joinConnectedLineString(geometry, arrayList));
            if (CollectionKt.isNonBlank(arrayList)) {
                CollectionKt.safeAddAll(arrayList3, joinConnectedLineString(geometry, arrayList));
            }
            for (float[][] fArr5 : arrayList) {
                LineString lineString3 = new LineString();
                lineString3.setFromShapeType(geometry.getFromShapeType());
                lineString3.setCoordinates(fArr5);
                CollectionKt.safeAdd(arrayList2, lineString3);
            }
        }
        CollectionKt.safeAddAll(arrayList3, arrayList2);
        splitShapeResult.setSplitShapes(arrayList3);
        splitShapeResult.setShapeErased(CollectionKt.isNullOrEmpty(arrayList3));
        return splitShapeResult;
    }

    @NotNull
    public static final List<float[][]> toRectangleLines(@NotNull MultiPoint multiPoint) {
        Intrinsics.checkNotNullParameter(multiPoint, "<this>");
        ArrayList arrayList = new ArrayList();
        float[][] coordinates = multiPoint.getCoordinates();
        if (coordinates == null) {
            return arrayList;
        }
        float[] fArr = coordinates[0];
        float[] fArr2 = coordinates[1];
        float[] fArr3 = {fArr2[0], fArr[1]};
        float[] fArr4 = {fArr[0], fArr2[1]};
        arrayList.add(new float[][]{fArr, fArr3});
        arrayList.add(new float[][]{fArr3, fArr2});
        arrayList.add(new float[][]{fArr2, fArr4});
        arrayList.add(new float[][]{fArr4, fArr});
        return arrayList;
    }

    private static final boolean updateCurveFeatureSubType(JSONObject jSONObject, Curve curve, TouchPoint touchPoint, TouchPoint touchPoint2, TouchPoint touchPoint3, TouchPoint touchPoint4) {
        String str;
        JSONObject jSONObject2 = jSONObject.getJSONObject(GeoConstant.KEY_Properties);
        boolean z = false;
        boolean z2 = curve.getDrawEndArrow() && TouchPoint.equalXYApproximately$default(touchPoint4, touchPoint2, null, 2, null);
        boolean z3 = curve.getDrawStartArrow() && TouchPoint.equalXYApproximately$default(touchPoint3, touchPoint, null, 2, null);
        if (z3 && z2) {
            str = GeoConstant.BidirectionalCurvyArrow;
        } else if (z3 || z2) {
            str = GeoConstant.CurvyArrow;
            z = z3;
        } else {
            str = "Curve";
        }
        jSONObject2.put(GeoConstant.KEY_SUB_TYPE, str);
        return z;
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull FeatureCollection featureCollection, @NotNull EraseBean eraseBean) {
        SelectionPointType selectionPointType;
        Intrinsics.checkNotNullParameter(featureCollection, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Feature feature : featureCollection.getFeatures()) {
            SplitShapeResult split = feature.split(eraseBean);
            List<IGeometry> splitShapes = split.getSplitShapes();
            if (splitShapes != null) {
                for (IGeometry iGeometry : splitShapes) {
                    JSONUtils jSONUtils = JSONUtils.INSTANCE;
                    JSONObject parseObject = jSONUtils.parseObject(jSONUtils.toJson(featureCollection));
                    parseObject.remove(GeoConstant.KEY_Features);
                    parseObject.put(GeoConstant.KEY_Universal_Shape_Type, "");
                    parseObject.put("version", 4);
                    CollectionKt.safeAdd(parseObject.putArray(GeoConstant.KEY_Features), iGeometry instanceof Feature ? (Feature) iGeometry : null);
                    FeatureCollection parseFeatureCollection = GeoFactory.INSTANCE.parseFeatureCollection(parseObject);
                    String featureType = FeatureCollection.INSTANCE.getFeatureType(parseFeatureCollection);
                    if (Intrinsics.areEqual(featureType, GeoConstant.LineString)) {
                        selectionPointType = SelectionPointType.DRAG;
                    } else {
                        selectionPointType = Intrinsics.areEqual(featureType, "Arc") ? SelectionPointType.SCALE : parseFeatureCollection.getProperties().getSelectionPointType();
                    }
                    parseFeatureCollection.getProperties().setSelectionPointType(selectionPointType);
                    if (ArraysKt.isNotEmpty(parseFeatureCollection.getFeatures())) {
                        CollectionKt.safeAdd(arrayList, parseFeatureCollection);
                    }
                }
            }
            CollectionKt.safeAddAll(arrayList2, split.getRemoveShapes());
        }
        return splitShapeResult.setSplitShapes(arrayList).setRemoveShapes(arrayList2);
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull Feature feature, @NotNull EraseBean eraseBean) {
        SplitShapeResult splitShapeResult;
        Intrinsics.checkNotNullParameter(feature, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        Geometry geometry = feature.getGeometry();
        if (geometry == null || (splitShapeResult = geometry.split(eraseBean)) == null) {
            splitShapeResult = new SplitShapeResult();
        }
        ArrayList arrayList = new ArrayList();
        List<IGeometry> splitShapes = splitShapeResult.getSplitShapes();
        if (splitShapes != null) {
            for (IGeometry iGeometry : splitShapes) {
                JSONUtils jSONUtils = JSONUtils.INSTANCE;
                Feature parseFeature = GeoFactory.INSTANCE.parseFeature(jSONUtils.parseObject(jSONUtils.toJson(feature)));
                parseFeature.setGeometry(iGeometry instanceof Geometry ? (Geometry) iGeometry : null);
                CollectionKt.safeAdd(arrayList, parseFeature);
            }
        }
        splitShapeResult.setSplitShapes(arrayList);
        return splitShapeResult;
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull Curve curve, @NotNull EraseBean eraseBean) {
        List<TouchPoint> loadSelectionPoints;
        int collectionSizeOrDefault;
        List<? extends IGeometry> filterNotNull;
        Object first;
        Object last;
        List<TouchPoint> listOf;
        Feature feature;
        Curve curve2 = curve;
        Intrinsics.checkNotNullParameter(curve2, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        Geometry geometry = curve.getGeometry();
        if (geometry != null && (loadSelectionPoints = geometry.loadSelectionPoints()) != null) {
            int i = 3;
            if (loadSelectionPoints.size() < 3) {
                return splitShapeResult;
            }
            TouchPoint touchPoint = loadSelectionPoints.get(0);
            int i2 = 2;
            TouchPoint touchPoint2 = loadSelectionPoints.get(2);
            TouchPoint touchPoint3 = loadSelectionPoints.get(1);
            Path firstSegment = PathKt.firstSegment(curve.loadRenderPath());
            Matrix targetShapeMatrix = eraseBean.getTargetShapeMatrix();
            List<List<TouchPoint>> splitSegmentList = PathKt.splitByPath$default(PathKt.concatTransform(firstSegment, targetShapeMatrix), eraseBean.getErasePath(), 0.0f, false, 6, null).getSplitSegmentList();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(splitSegmentList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = splitSegmentList.iterator();
            while (it2.hasNext()) {
                List<TouchPoint> transform = GeometryUtils.INSTANCE.transform((List) it2.next(), MatrixKt.invertMatrix(targetShapeMatrix));
                if (transform.size() < i) {
                    feature = null;
                } else {
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) transform);
                    TouchPoint touchPoint4 = (TouchPoint) first;
                    last = CollectionsKt___CollectionsKt.last((List<? extends Object>) transform);
                    TouchPoint touchPoint5 = (TouchPoint) last;
                    BezierUtils bezierUtils = BezierUtils.INSTANCE;
                    Float positionByPoint = bezierUtils.getPositionByPoint(touchPoint, touchPoint3, touchPoint2, touchPoint4);
                    float floatValue = positionByPoint != null ? positionByPoint.floatValue() : 0.0f;
                    Float positionByPoint2 = bezierUtils.getPositionByPoint(touchPoint, touchPoint3, touchPoint2, touchPoint5);
                    TouchPoint pointByPosition = bezierUtils.getPointByPosition(touchPoint, touchPoint3, touchPoint2, (floatValue + (positionByPoint2 != null ? positionByPoint2.floatValue() : 1.0f)) / i2);
                    JSONUtils jSONUtils = JSONUtils.INSTANCE;
                    JSONObject parseObject = jSONUtils.parseObject(jSONUtils.toJson(curve2));
                    boolean updateCurveFeatureSubType = updateCurveFeatureSubType(parseObject, curve, touchPoint, touchPoint2, touchPoint4, touchPoint5);
                    Feature parseFeature = GeoFactory.INSTANCE.parseFeature(parseObject);
                    listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint4, pointByPosition, touchPoint5});
                    if (Boolean.valueOf(updateCurveFeatureSubType).booleanValue()) {
                        listOf = CollectionsKt___CollectionsKt.reversed(listOf);
                    }
                    parseFeature.updateBySelectionPoints(listOf);
                    feature = parseFeature;
                }
                arrayList.add(feature);
                i = 3;
                i2 = 2;
                curve2 = curve;
            }
            filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList);
            splitShapeResult.setSplitShapes(filterNotNull);
        }
        return splitShapeResult;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, java.lang.Number] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.onyx.android.sdk.genericshape.Feature] */
    @NotNull
    public static final SplitShapeResult splitShape(@NotNull WaveLine waveLine, @NotNull EraseBean eraseBean) {
        Object firstOrNull;
        Object lastOrNull;
        TouchPoint lastPoint;
        int collectionSizeOrDefault;
        List<? extends IGeometry> filterNotNull;
        Object firstOrNull2;
        Object lastOrNull2;
        List listOf;
        Intrinsics.checkNotNullParameter(waveLine, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        Geometry geometry = waveLine.getGeometry();
        ?? r5 = 0;
        LineString lineString = geometry instanceof LineString ? (LineString) geometry : null;
        if (lineString == null) {
            return splitShapeResult;
        }
        Path loadRenderPath = waveLine.loadRenderPath();
        Matrix targetShapeMatrix = eraseBean.getTargetShapeMatrix();
        SplitResult splitByPath$default = PathKt.splitByPath$default(PathKt.concatTransform(loadRenderPath, targetShapeMatrix), eraseBean.getErasePath(), 0.0f, false, 6, null);
        List<TouchPoint> loadSelectionPoints = lineString.loadSelectionPoints();
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadSelectionPoints);
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return splitShapeResult;
        }
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) loadSelectionPoints);
        TouchPoint touchPoint2 = (TouchPoint) lastOrNull;
        if (touchPoint2 == null) {
            return splitShapeResult;
        }
        WaveAttr waveAttr = waveLine.getProperties().getWaveAttr();
        if (waveAttr == null) {
            waveAttr = new WaveAttr();
        }
        TouchPointPair touchPointPair = new TouchPointPair(touchPoint, touchPoint2);
        TouchPoint firstPoint = PathKt.getFirstPoint(loadRenderPath);
        if (firstPoint == null || (lastPoint = PathKt.getLastPoint(loadRenderPath)) == null) {
            return splitShapeResult;
        }
        List<List<TouchPoint>> splitSegmentList = splitByPath$default.getSplitSegmentList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(splitSegmentList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (List<TouchPoint> list : splitSegmentList) {
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            List<TouchPoint> transform = geometryUtils.transform(list, MatrixKt.invertMatrix(targetShapeMatrix));
            firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) transform);
            TouchPoint touchPoint3 = (TouchPoint) firstOrNull2;
            if (touchPoint3 != null) {
                lastOrNull2 = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) transform);
                TouchPoint touchPoint4 = (TouchPoint) lastOrNull2;
                if (touchPoint4 != null) {
                    TouchPoint findCrossPoint = TouchPoint.equalXYApproximately$default(touchPoint3, firstPoint, r5, 2, r5) ? touchPoint : touchPointPair.findCrossPoint(touchPoint3);
                    TouchPoint findCrossPoint2 = TouchPoint.equalXYApproximately$default(touchPoint4, lastPoint, r5, 2, r5) ? touchPoint2 : touchPointPair.findCrossPoint(touchPoint4);
                    float distanceTo = geometryUtils.distanceTo(findCrossPoint, touchPoint) % waveAttr.getWavyLength();
                    JSONUtils jSONUtils = JSONUtils.INSTANCE;
                    r5 = GeoFactory.INSTANCE.parseFeature(jSONUtils.parseObject(jSONUtils.toJson(waveLine)));
                    listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{findCrossPoint, findCrossPoint2});
                    r5.updateBySelectionPoints(listOf);
                    Properties properties = r5.getProperties();
                    WaveAttr waveAttr2 = new WaveAttr();
                    waveAttr2.setWavyLength(waveAttr.getWavyLength());
                    waveAttr2.setWavyPeak(waveAttr.getWavyPeak());
                    waveAttr2.setWavyOffset(((distanceTo * 6.2831855f) / waveAttr2.getWavyLength()) + waveAttr.getWavyOffset());
                    properties.setWaveAttr(waveAttr2);
                }
            }
            arrayList.add(r5);
            r5 = 0;
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList);
        splitShapeResult.setSplitShapes(filterNotNull);
        return splitShapeResult;
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull Oval oval, @NotNull EraseBean eraseBean) {
        List reversed;
        List<? extends IGeometry> listOf;
        Intrinsics.checkNotNullParameter(oval, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        Path loadRenderPath = oval.loadRenderPath();
        final ArrayList arrayList = new ArrayList();
        SplitShapeResult split = UniversalShapeSplitter.INSTANCE.split(oval, eraseBean, loadRenderPath, new Function3<IGeometry, List<? extends TouchPointList>, Integer, Geometry>() { // from class: com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt$splitShape$splitResult$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Geometry invoke(IGeometry iGeometry, List<? extends TouchPointList> list, Integer num) {
                return invoke(iGeometry, (List<TouchPointList>) list, num.intValue());
            }

            @Nullable
            public final Geometry invoke(@NotNull IGeometry iGeometry, @NotNull List<TouchPointList> segmentList, int i) {
                Intrinsics.checkNotNullParameter(iGeometry, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(segmentList, "segmentList");
                TouchPointList touchPointList = segmentList.get(i);
                if (touchPointList.size() <= 1) {
                    return null;
                }
                arrayList.add(touchPointList);
                return null;
            }
        });
        if (!split.getShapeErased() && (!arrayList.isEmpty())) {
            TouchPointList touchPointList = new TouchPointList();
            reversed = CollectionsKt___CollectionsKt.reversed(arrayList);
            Iterator it2 = reversed.iterator();
            while (it2.hasNext()) {
                touchPointList.addAll((TouchPointList) it2.next());
            }
            TouchPoint first = touchPointList.first();
            Intrinsics.checkNotNull(first);
            TouchPoint last = touchPointList.last();
            Intrinsics.checkNotNull(last);
            Arc createArc$default = UniversalShapeSplitter.createArc$default(UniversalShapeSplitter.INSTANCE, oval.getBoundingRect(), first, last, true, false, 16, null);
            createArc$default.setFromShapeType(oval.getFromShapeType());
            Properties properties = (Properties) JSONUtils.INSTANCE.clone(oval.getProperties(), Properties.class);
            if (properties != null) {
                createArc$default.setProperties(properties);
                createArc$default.getProperties().setSubType("Arc");
            }
            listOf = CollectionsKt__CollectionsJVMKt.listOf(createArc$default);
            split.setSplitShapes(listOf);
        }
        return split;
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull MultiLineString multiLineString, @NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(multiLineString, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        ArrayList arrayList = new ArrayList();
        float[][][] coordinates = multiLineString.getCoordinates();
        if (coordinates != null) {
            for (float[][] fArr : coordinates) {
                LineString lineString = new LineString();
                Object[] copyOf = Arrays.copyOf(fArr, fArr.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                lineString.setCoordinates((float[][]) copyOf);
                lineString.setFromShapeType(multiLineString.getFromShapeType());
                CollectionKt.safeAddAll(arrayList, lineString.split(eraseBean).getSplitShapes());
            }
        }
        splitShapeResult.setSplitShapes(arrayList);
        splitShapeResult.setShapeErased(CollectionKt.isNullOrEmpty(arrayList));
        return splitShapeResult;
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull LineString lineString, @NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(lineString, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult split$default = UniversalShapeSplitter.split$default(UniversalShapeSplitter.INSTANCE, lineString, eraseBean, lineString.loadRenderPath(), null, 8, null);
        ArrayList arrayList = new ArrayList();
        List<IGeometry> splitShapes = split$default.getSplitShapes();
        if (splitShapes != null) {
            for (IGeometry iGeometry : splitShapes) {
                LineString lineString2 = iGeometry instanceof LineString ? (LineString) iGeometry : null;
                if (lineString2 != null && !LineString.INSTANCE.isPoint(lineString2.getCoordinates())) {
                    arrayList.add(iGeometry);
                }
            }
        }
        split$default.setSplitShapes(arrayList);
        return split$default;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.onyx.android.sdk.genericshape.erase.SplitShapeResult splitShape(@org.jetbrains.annotations.NotNull final com.onyx.android.sdk.genericshape.DirectionLine r6, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.genericshape.erase.EraseBean r7) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "eraseBean"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            float[][] r0 = r6.getCoordinates()
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L25
            java.lang.Object r0 = kotlin.collections.ArraysKt.firstOrNull(r0)
            float[] r0 = (float[]) r0
            if (r0 == 0) goto L25
            com.onyx.android.sdk.base.data.TouchPoint r4 = new com.onyx.android.sdk.base.data.TouchPoint
            r5 = r0[r2]
            r0 = r0[r1]
            r4.<init>(r5, r0)
            goto L26
        L25:
            r4 = r3
        L26:
            float[][] r0 = r6.getCoordinates()
            if (r0 == 0) goto L3d
            java.lang.Object r0 = kotlin.collections.ArraysKt.lastOrNull(r0)
            float[] r0 = (float[]) r0
            if (r0 == 0) goto L3d
            com.onyx.android.sdk.base.data.TouchPoint r3 = new com.onyx.android.sdk.base.data.TouchPoint
            r2 = r0[r2]
            r0 = r0[r1]
            r3.<init>(r2, r0)
        L3d:
            com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitter r0 = com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitter.INSTANCE
            com.onyx.android.sdk.genericshape.LineString$Companion r1 = com.onyx.android.sdk.genericshape.LineString.INSTANCE
            float[][] r2 = r6.getCoordinates()
            android.graphics.Path r1 = r1.loadRenderPath(r2)
            com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt$splitShape$7 r2 = new com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt$splitShape$7
            r2.<init>()
            com.onyx.android.sdk.genericshape.erase.SplitShapeResult r6 = r0.split(r6, r7, r1, r2)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt.splitShape(com.onyx.android.sdk.genericshape.DirectionLine, com.onyx.android.sdk.genericshape.erase.EraseBean):com.onyx.android.sdk.genericshape.erase.SplitShapeResult");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.onyx.android.sdk.genericshape.erase.SplitShapeResult splitShape(@org.jetbrains.annotations.NotNull final com.onyx.android.sdk.genericshape.BidirectionalLine r6, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.genericshape.erase.EraseBean r7) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "eraseBean"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            float[][] r0 = r6.getCoordinates()
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L25
            java.lang.Object r0 = kotlin.collections.ArraysKt.firstOrNull(r0)
            float[] r0 = (float[]) r0
            if (r0 == 0) goto L25
            com.onyx.android.sdk.base.data.TouchPoint r4 = new com.onyx.android.sdk.base.data.TouchPoint
            r5 = r0[r2]
            r0 = r0[r1]
            r4.<init>(r5, r0)
            goto L26
        L25:
            r4 = r3
        L26:
            float[][] r0 = r6.getCoordinates()
            if (r0 == 0) goto L3d
            java.lang.Object r0 = kotlin.collections.ArraysKt.lastOrNull(r0)
            float[] r0 = (float[]) r0
            if (r0 == 0) goto L3d
            com.onyx.android.sdk.base.data.TouchPoint r3 = new com.onyx.android.sdk.base.data.TouchPoint
            r2 = r0[r2]
            r0 = r0[r1]
            r3.<init>(r2, r0)
        L3d:
            com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitter r0 = com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitter.INSTANCE
            com.onyx.android.sdk.genericshape.LineString$Companion r1 = com.onyx.android.sdk.genericshape.LineString.INSTANCE
            float[][] r2 = r6.getCoordinates()
            android.graphics.Path r1 = r1.loadRenderPath(r2)
            com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt$splitShape$result$2 r2 = new com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt$splitShape$result$2
            r2.<init>()
            com.onyx.android.sdk.genericshape.erase.SplitShapeResult r6 = r0.split(r6, r7, r1, r2)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt.splitShape(com.onyx.android.sdk.genericshape.BidirectionalLine, com.onyx.android.sdk.genericshape.erase.EraseBean):com.onyx.android.sdk.genericshape.erase.SplitShapeResult");
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull Rectangle rectangle, @NotNull EraseBean eraseBean) {
        List<? extends IGeometry> listOf;
        Intrinsics.checkNotNullParameter(rectangle, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        ArrayList arrayList = new ArrayList();
        for (float[][] fArr : toRectangleLines(rectangle.getMultiPoint())) {
            LineString lineString = new LineString();
            lineString.setCoordinates(fArr);
            SplitShapeResult split = lineString.split(eraseBean);
            if (CollectionKt.getSize(split.getSplitShapes()) == 1) {
                CollectionKt.safeAdd(arrayList, lineString);
            }
            if (CollectionKt.getSize(split.getSplitShapes()) == 2) {
                CollectionKt.safeAddAll(arrayList, split.getSplitShapes());
            }
        }
        Polyline polyline = new Polyline();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            IGeometry iGeometry = (IGeometry) it2.next();
            LineString lineString2 = iGeometry instanceof LineString ? (LineString) iGeometry : null;
            if (lineString2 != null) {
                arrayList2.add(lineString2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            float[][] coordinates = ((LineString) it3.next()).getCoordinates();
            if (coordinates != null) {
                arrayList3.add(coordinates);
            }
        }
        polyline.setCoordinates((float[][][]) arrayList3.toArray(new float[0][]));
        if (ArraysKt.isNotEmpty(polyline.getCoordinates())) {
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            Feature parseFeature = GeoFactory.INSTANCE.parseFeature(jSONUtils.parseObject(jSONUtils.toJson(rectangle)));
            parseFeature.getProperties().setFillAttr(null);
            parseFeature.getProperties().setSubType("");
            parseFeature.setGeometry(polyline);
            parseFeature.setFromShapeType(rectangle.getFromShapeType());
            listOf = CollectionsKt__CollectionsJVMKt.listOf(parseFeature);
            splitShapeResult.setSplitShapes(listOf);
        }
        return splitShapeResult;
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull Polyline polyline, @NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(polyline, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        float[][][] coordinates = polyline.getCoordinates();
        if (coordinates == null) {
            coordinates = new float[0][];
        }
        ArrayList arrayList = new ArrayList();
        int length = coordinates.length;
        for (int i = 1; i < length; i++) {
            float[] fArr = coordinates[i - 1][0];
            float[] fArr2 = {fArr[0], fArr[1]};
            float[] fArr3 = coordinates[i][0];
            arrayList.add(new float[][]{fArr2, new float[]{fArr3[0], fArr3[1]}});
        }
        return splitShapeByLines(polyline, (float[][][]) arrayList.toArray(new float[0][]), eraseBean);
    }

    @NotNull
    public static final SplitShapeResult splitShape(@NotNull Polygon polygon, @NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(polygon, "<this>");
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return splitShapeByLines(polygon, polygon.getCoordinates(), eraseBean);
    }
}
