package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.genericshape.Polygon;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0016\u0010\u001e\u001a\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0016R8\u0010\u0003\u001a\u001e\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0005j\u0002`\u00060\u0004j\u0002`\u0007\u0018\u00010\u0004j\u0004\u0018\u0001`\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\""}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Polygon;", "Lcom/onyx/android/sdk/genericshape/Geometry;", "()V", "coordinates", "", "", "Lcom/onyx/android/sdk/genericshape/Position;", "Lcom/onyx/android/sdk/genericshape/Line;", "Lcom/onyx/android/sdk/genericshape/Lines;", "getCoordinates", "()[[[F", "setCoordinates", "([[[F)V", "[[[F", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "getFillPath", "Landroid/graphics/Path;", "loadRenderPath", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "", "list", "Companion", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Polygon\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n13309#2,2:1559\n37#3,2:1561\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Polygon\n*L\n1040#1:1559,2\n1056#1:1561,2\n*E\n"})
/* loaded from: classes7.dex */
public class Polygon extends Geometry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private float[][][] coordinates;

    @NotNull
    private String type = "Polygon";

    @Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J?\u0010\u0003\u001a\u00020\u00042\u0018\u0010\u0005\u001a\u0014\u0012\b\u0012\u00060\u0007j\u0002`\b\u0018\u00010\u0006j\u0004\u0018\u0001`\t2\u0018\u0010\n\u001a\u0014\u0012\b\u0012\u00060\u0007j\u0002`\b\u0018\u00010\u0006j\u0004\u0018\u0001`\t¢\u0006\u0002\u0010\u000bJ6\u0010\f\u001a\u0016\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0006j\u0002`\t0\r2\u001a\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0006j\u0002`\t0\u000fJ\f\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u0012¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/Polygon$Companion;", "", "()V", "isConnected", "", "firstLine", "", "", "Lcom/onyx/android/sdk/genericshape/Position;", "Lcom/onyx/android/sdk/genericshape/Line;", "secondLine", "([[F[[F)Z", "resortLineCoordinateList", "", "coordinateList", "", "getFeatureType", "", "Lcom/onyx/android/sdk/genericshape/Polygon;", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Polygon$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1558:1\n1855#2:1559\n1856#2:1561\n766#2:1562\n857#2,2:1563\n1963#2,14:1565\n1#3:1560\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/Polygon$Companion\n*L\n1104#1:1559\n1104#1:1561\n1119#1:1562\n1119#1:1563,2\n1120#1:1565,14\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AtomicInteger resortLineCoordinateList$lambda$3$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (AtomicInteger) tmp0.invoke(obj);
        }

        @Nullable
        public final String getFeatureType(@NotNull Polygon polygon) {
            Intrinsics.checkNotNullParameter(polygon, "<this>");
            float[][][] coordinates = polygon.getCoordinates();
            boolean z = false;
            if (coordinates != null && coordinates.length == 3) {
                z = true;
            }
            if (z) {
                return "Triangle";
            }
            return null;
        }

        public final boolean isConnected(@Nullable float[][] firstLine, @Nullable float[][] secondLine) {
            float[] fArr;
            Object lastOrNull;
            Object firstOrNull;
            if ((firstLine != null ? firstLine.hashCode() : 0) == (secondLine != null ? secondLine.hashCode() : 0)) {
                return false;
            }
            float[] fArr2 = null;
            if (firstLine != null) {
                firstOrNull = ArraysKt___ArraysKt.firstOrNull(firstLine);
                fArr = (float[]) firstOrNull;
            } else {
                fArr = null;
            }
            if (secondLine != null) {
                lastOrNull = ArraysKt___ArraysKt.lastOrNull(secondLine);
                fArr2 = (float[]) lastOrNull;
            }
            return GeoJsonKt.isApproximatelyEqual(fArr, fArr2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v15, types: [T, java.lang.Object, float[][]] */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object] */
        @NotNull
        public final List<float[][]> resortLineCoordinateList(@NotNull List<float[][]> coordinateList) {
            Object next;
            List distinct;
            List<float[][]> mutableList;
            boolean contains;
            T t;
            boolean contains2;
            Intrinsics.checkNotNullParameter(coordinateList, "coordinateList");
            ArrayList arrayList = new ArrayList();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            List<float[][]> list = coordinateList;
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ?? r2 = (float[][]) it2.next();
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = r2;
                ArrayList arrayList2 = new ArrayList();
                while (objectRef.element != 0) {
                    final Polygon$Companion$resortLineCoordinateList$1$1 polygon$Companion$resortLineCoordinateList$1$1 = new Function1<float[][], AtomicInteger>() { // from class: com.onyx.android.sdk.genericshape.Polygon$Companion$resortLineCoordinateList$1$1
                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final AtomicInteger invoke(@NotNull float[][] it3) {
                            Intrinsics.checkNotNullParameter(it3, "it");
                            return new AtomicInteger(-1);
                        }
                    };
                    ((AtomicInteger) linkedHashMap.computeIfAbsent(r2, new Function() { // from class: com.sunia.HTREnginev2.d5l
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            AtomicInteger resortLineCoordinateList$lambda$3$lambda$0;
                            resortLineCoordinateList$lambda$3$lambda$0 = Polygon.Companion.resortLineCoordinateList$lambda$3$lambda$0(Function1.this, obj);
                            return resortLineCoordinateList$lambda$3$lambda$0;
                        }
                    })).incrementAndGet();
                    Iterator<T> it3 = list.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            t = 0;
                            break;
                        }
                        t = it3.next();
                        if (Polygon.INSTANCE.isConnected((float[][]) t, (float[][]) objectRef.element)) {
                            break;
                        }
                    }
                    objectRef.element = t;
                    contains2 = CollectionsKt___CollectionsKt.contains(arrayList2, t);
                    if (contains2) {
                        break;
                    }
                    CollectionKt.safeAdd(arrayList2, objectRef.element);
                }
            }
            Set entrySet = linkedHashMap.entrySet();
            Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : entrySet) {
                if (((AtomicInteger) ((Map.Entry) obj).getValue()).get() > 0) {
                    arrayList3.add(obj);
                }
            }
            Iterator it4 = arrayList3.iterator();
            if (it4.hasNext()) {
                next = it4.next();
                if (it4.hasNext()) {
                    int i = ((AtomicInteger) ((Map.Entry) next).getValue()).get();
                    do {
                        Object next2 = it4.next();
                        int i2 = ((AtomicInteger) ((Map.Entry) next2).getValue()).get();
                        if (i < i2) {
                            next = next2;
                            i = i2;
                        }
                    } while (it4.hasNext());
                }
            } else {
                next = null;
            }
            Map.Entry entry = (Map.Entry) next;
            Object key = entry != null ? entry.getKey() : null;
            while (key != null) {
                CollectionKt.safeAdd(arrayList, key);
                Iterator<T> it5 = list.iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        key = null;
                        break;
                    }
                    Object next3 = it5.next();
                    if (Polygon.INSTANCE.isConnected((float[][]) next3, (float[][]) key)) {
                        key = next3;
                        break;
                    }
                }
                contains = CollectionsKt___CollectionsKt.contains(arrayList, key);
                if (contains) {
                    break;
                }
            }
            distinct = CollectionsKt___CollectionsKt.distinct(arrayList);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) distinct);
            return mutableList;
        }

        private Companion() {
        }
    }

    @Nullable
    public final float[][][] getCoordinates() {
        return this.coordinates;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path getFillPath() {
        Object orNull;
        Object orNull2;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Path path = new Path();
        float[][][] fArr = this.coordinates;
        if (fArr == null) {
            return path;
        }
        int length = fArr.length - 1;
        if (length >= 0) {
            int i = 0;
            while (true) {
                float[][] fArr2 = fArr[i];
                StringBuilder sb = new StringBuilder();
                sb.append(fArr2[0][0]);
                sb.append(NameUtil.USCORE);
                sb.append(fArr2[0][1]);
                String sb2 = sb.toString();
                if (!linkedHashSet.contains(sb2)) {
                    if (CollectionKt.isNullOrEmpty(linkedHashSet)) {
                        float[] fArr3 = fArr2[0];
                        path.moveTo(fArr3[0], fArr3[1]);
                    } else {
                        float[] fArr4 = fArr2[0];
                        path.lineTo(fArr4[0], fArr4[1]);
                    }
                    linkedHashSet.add(sb2);
                }
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        orNull = ArraysKt___ArraysKt.getOrNull(fArr, length);
        float[][] fArr5 = (float[][]) orNull;
        if (fArr5 != null) {
            orNull2 = ArraysKt___ArraysKt.getOrNull(fArr5, 1);
            float[] fArr6 = (float[]) orNull2;
            if (fArr6 != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(fArr6[0]);
                sb3.append(NameUtil.USCORE);
                sb3.append(fArr6[1]);
                if (!linkedHashSet.contains(sb3.toString())) {
                    path.lineTo(fArr6[0], fArr6[1]);
                }
            }
        }
        path.close();
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        Object lastOrNull;
        Path path = new Path();
        float[][][] fArr = this.coordinates;
        if (fArr == null) {
            return path;
        }
        int length = fArr.length;
        float[] fArr2 = fArr[0][0];
        path.moveTo(fArr2[0], fArr2[1]);
        for (int i = 1; i < length; i++) {
            float[] fArr3 = fArr[i][0];
            path.lineTo(fArr3[0], fArr3[1]);
        }
        lastOrNull = ArraysKt___ArraysKt.lastOrNull(fArr);
        float[][] fArr4 = (float[][]) lastOrNull;
        if (fArr4 != null && fArr4.length >= 2) {
            float[] fArr5 = fArr4[0];
            float f = fArr5[0];
            float[] fArr6 = fArr4[1];
            float f2 = fArr6[0];
            if (f == f2) {
                float f3 = fArr5[1];
                float f4 = fArr6[1];
                if (f3 == f4) {
                    float f5 = 1;
                    path.lineTo(f2 + f5, f4 + f5);
                }
            }
            path.lineTo(f2, fArr6[1]);
        }
        return path;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        ArrayList arrayList = new ArrayList();
        float[][][] fArr = this.coordinates;
        if (fArr == null) {
            return arrayList;
        }
        for (float[][] fArr2 : fArr) {
            float[] fArr3 = fArr2[0];
            arrayList.add(new TouchPoint(fArr3[0], fArr3[1]));
        }
        return arrayList;
    }

    public final void setCoordinates(@Nullable float[][][] fArr) {
        this.coordinates = fArr;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    public void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry, com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        return UniversalShapeSplitterKt.splitShape(this, eraseBean);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    public void updateBySelectionPoints(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            int i3 = i2 >= size ? 0 : i2;
            arrayList.add(new float[][]{new float[]{list.get(i).getX(), list.get(i).getY()}, new float[]{list.get(i3).getX(), list.get(i3).getY()}});
            i = i2;
        }
        this.coordinates = (float[][][]) arrayList.toArray(new float[0][]);
    }
}
