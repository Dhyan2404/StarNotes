package com.onyx.android.sdk.genericshape;

import android.graphics.Path;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.genericshape.erase.EraseBean;
import com.onyx.android.sdk.genericshape.erase.SplitShapeResult;
import com.onyx.android.sdk.genericshape.erase.UniversalShapeSplitterKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u000e\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0016\u0010\u001c\u001a\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0016R.\u0010\u0003\u001a\u0014\u0012\b\u0012\u00060\u0005j\u0002`\u0006\u0018\u00010\u0004j\u0004\u0018\u0001`\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\r\u001a\u00020\u000eX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/LineString;", "Lcom/onyx/android/sdk/genericshape/Geometry;", "()V", "coordinates", "", "", "Lcom/onyx/android/sdk/genericshape/Position;", "Lcom/onyx/android/sdk/genericshape/Line;", "getCoordinates", "()[[F", "setCoordinates", "([[F)V", "[[F", "type", "", "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "loadRenderPath", "Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "split", "Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;", "eraseBean", "Lcom/onyx/android/sdk/genericshape/erase/EraseBean;", "updateBySelectionPoints", "", "list", "Companion", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class LineString extends Geometry {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private float[][] coordinates;

    @NotNull
    private String type = GeoConstant.LineString;

    @Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0018\u0010\u0005\u001a\u0014\u0012\b\u0012\u00060\u0007j\u0002`\b\u0018\u00010\u0006j\u0004\u0018\u0001`\t¢\u0006\u0002\u0010\nJ%\u0010\u000b\u001a\u00020\f2\u0018\u0010\u0005\u001a\u0014\u0012\b\u0012\u00060\u0007j\u0002`\b\u0018\u00010\u0006j\u0004\u0018\u0001`\t¢\u0006\u0002\u0010\rJ+\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0018\u0010\u0005\u001a\u0014\u0012\b\u0012\u00060\u0007j\u0002`\b\u0018\u00010\u0006j\u0004\u0018\u0001`\t¢\u0006\u0002\u0010\u0011JE\u0010\u0012\u001a\u0014\u0012\b\u0012\u00060\u0007j\u0002`\b\u0018\u00010\u0006j\u0004\u0018\u0001`\t2\u0018\u0010\u0013\u001a\u0014\u0012\b\u0012\u00060\u0007j\u0002`\b\u0018\u00010\u0006j\u0004\u0018\u0001`\t2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0002\u0010\u0015¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/genericshape/LineString$Companion;", "", "()V", "isPoint", "", "coordinates", "", "", "Lcom/onyx/android/sdk/genericshape/Position;", "Lcom/onyx/android/sdk/genericshape/Line;", "([[F)Z", "loadRenderPath", "Landroid/graphics/Path;", "([[F)Landroid/graphics/Path;", "loadSelectionPoints", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "([[F)Ljava/util/List;", "updateBySelectionPoints", "originCoordinates", "list", "([[FLjava/util/List;)[[F", "sdk-genericshape_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nGeoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/LineString$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1558:1\n1549#2:1559\n1620#2,3:1560\n37#3,2:1563\n*S KotlinDebug\n*F\n+ 1 GeoJson.kt\ncom/onyx/android/sdk/genericshape/LineString$Companion\n*L\n960#1:1559\n960#1:1560,3\n960#1:1563,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isPoint(@Nullable float[][] coordinates) {
            Object firstOrNull;
            Object lastOrNull;
            if (coordinates == null || coordinates.length <= 1) {
                return true;
            }
            if (coordinates.length != 2) {
                return false;
            }
            firstOrNull = ArraysKt___ArraysKt.firstOrNull(coordinates);
            lastOrNull = ArraysKt___ArraysKt.lastOrNull(coordinates);
            return Arrays.equals((float[]) firstOrNull, (float[]) lastOrNull);
        }

        @NotNull
        public final Path loadRenderPath(@Nullable float[][] coordinates) {
            Path path = new Path();
            if (coordinates == null) {
                return path;
            }
            int length = coordinates.length;
            float[] fArr = coordinates[0];
            path.moveTo(fArr[0], fArr[1]);
            for (int i = 1; i < length; i++) {
                float[] fArr2 = coordinates[i];
                path.lineTo(fArr2[0], fArr2[1]);
            }
            return path;
        }

        @NotNull
        public final List<TouchPoint> loadSelectionPoints(@Nullable float[][] coordinates) {
            ArrayList arrayList = new ArrayList();
            if (coordinates == null) {
                return arrayList;
            }
            for (float[] fArr : coordinates) {
                arrayList.add(new TouchPoint(fArr[0], fArr[1]));
            }
            return arrayList;
        }

        @Nullable
        public final float[][] updateBySelectionPoints(@Nullable float[][] originCoordinates, @NotNull List<TouchPoint> list) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(list, "list");
            if (originCoordinates == null) {
                return null;
            }
            Iterable<TouchPoint> iterable = (Iterable) AnyKt.transform(list, new Function1<List<? extends TouchPoint>, List<? extends TouchPoint>>() { // from class: com.onyx.android.sdk.genericshape.LineString$Companion$updateBySelectionPoints$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ List<? extends TouchPoint> invoke(List<? extends TouchPoint> list2) {
                    return invoke2((List<TouchPoint>) list2);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final List<TouchPoint> invoke2(@NotNull List<TouchPoint> it2) {
                    Object firstOrNull;
                    Object lastOrNull;
                    List<TouchPoint> listOfNotNull;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) it2);
                    lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) it2);
                    listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new TouchPoint[]{firstOrNull, lastOrNull});
                    return listOfNotNull;
                }
            });
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TouchPoint touchPoint : iterable) {
                arrayList.add(new float[]{touchPoint.getX(), touchPoint.getY()});
            }
            return (float[][]) arrayList.toArray(new float[0]);
        }

        private Companion() {
        }
    }

    @Nullable
    public final float[][] getCoordinates() {
        return this.coordinates;
    }

    @Override // com.onyx.android.sdk.genericshape.Geometry
    @NotNull
    public String getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public Path loadRenderPath() {
        return INSTANCE.loadRenderPath(this.coordinates);
    }

    @Override // com.onyx.android.sdk.genericshape.IGeometry
    @NotNull
    public List<TouchPoint> loadSelectionPoints() {
        return INSTANCE.loadSelectionPoints(this.coordinates);
    }

    public final void setCoordinates(@Nullable float[][] fArr) {
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
        this.coordinates = INSTANCE.updateBySelectionPoints(this.coordinates, list);
    }
}
