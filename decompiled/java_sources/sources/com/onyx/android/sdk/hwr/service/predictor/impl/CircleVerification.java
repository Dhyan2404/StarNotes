package com.onyx.android.sdk.hwr.service.predictor.impl;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0002¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/service/predictor/impl/CircleVerification;", "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;", "", "shapeName", "", "similarObjectTypes", "", "verify", "b", Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCircleVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/CircleVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,41:1\n1549#2:42\n1620#2,3:43\n1549#2:46\n1620#2,3:47\n1855#2,2:50\n*S KotlinDebug\n*F\n+ 1 CircleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/CircleVerification\n*L\n28#1:42\n28#1:43,3\n29#1:46\n29#1:47,3\n32#1:50,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CircleVerification extends BaseShapeVerification {
    /* renamed from: b */
    public final boolean m33377b() {
        int collectionSizeOrDefault;
        double averageOfFloat;
        int collectionSizeOrDefault2;
        double averageOfFloat2;
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(getPointerEvents());
        List<TouchPoint> list = touchPointList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(Float.valueOf(((TouchPoint) it2.next()).getX()));
        }
        averageOfFloat = CollectionsKt___CollectionsKt.averageOfFloat(arrayList);
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list.iterator();
        while (it3.hasNext()) {
            arrayList2.add(Float.valueOf(((TouchPoint) it3.next()).getY()));
        }
        averageOfFloat2 = CollectionsKt___CollectionsKt.averageOfFloat(arrayList2);
        TouchPoint touchPoint = new TouchPoint((float) averageOfFloat, (float) averageOfFloat2);
        float averageDistance = GeometryUtils.INSTANCE.averageDistance(touchPoint, touchPointList);
        Iterator<T> it4 = list.iterator();
        while (it4.hasNext()) {
            if (MathUtils.INSTANCE.differRateTo(Float.valueOf(averageDistance), Double.valueOf(TouchPoint.INSTANCE.distance(touchPoint, (TouchPoint) it4.next()))) > 0.25f) {
                return false;
            }
        }
        return true;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public String shapeName() {
        return "Circle";
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    @NotNull
    public List<String> similarObjectTypes() {
        List<String> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Circle", "circle", UniversalShapeTypeConst.OVAL, "football", "potato", "unicycle", "blueberry"});
        return listOf;
    }

    @Override // com.onyx.android.sdk.hwr.service.predictor.BaseShapeVerification, com.onyx.android.sdk.hwr.service.predictor.IShapeVerification
    public boolean verify() {
        return m33377b();
    }
}
