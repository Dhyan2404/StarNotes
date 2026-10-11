package com.onyx.android.sdk.hwr.utils;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.NetworkUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.hwr.C7404R;
import com.onyx.android.sdk.hwr.data.bean.HWRException;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.constant.HWRPointerEventType;
import com.onyx.android.sdk.hwr.data.constant.HWRPointerType;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0013\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b:\u0010;J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J(\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rJ$\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011J\u0012\u0010\u0013\u001a\u00020\u0014*\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J=\u0010\u001d\u001a\u00020\u00142\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00150\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00150\u00182\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00150\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0016\u0010#\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!J\u0016\u0010(\u001a\u00020'2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J\u0016\u0010*\u001a\u00020)2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J\u0010\u0010,\u001a\u00020)2\u0006\u0010+\u001a\u00020)H\u0002R\u001c\u0010/\u001a\n -*\u0004\u0018\u00010\u00150\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010.R\u0014\u00100\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u00102\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u00101R\u0014\u00103\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b3\u00101R\u0014\u00104\u001a\u00020)8\u0006X\u0086T¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u00106\u001a\u00020)8\u0006X\u0086T¢\u0006\u0006\n\u0004\b6\u00105R\u0014\u00107\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u00101R\u0014\u00108\u001a\u00020)8\u0006X\u0086T¢\u0006\u0006\n\u0004\b8\u00105R\u0014\u00109\u001a\u00020)8\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u00105¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;", "eventType", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "hwrPointerEvent", "", NotificationCompat.CarExtender.f4980p, "", "pointerId", "pointerEvent", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "", "inputPointerEvents", "Landroid/graphics/Matrix;", "matrix", "applyMatrix", "", "", CouchFieldKey.KEY_CONTENT_TYPE, "getLimitPointCount", "", "shapeIds", "itemIds", "", "itemIdMap", "fillItemIdMap", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)V", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;", "exceptionType", "handleHWRException", "Landroid/graphics/RectF;", "gestureRect", "targetRect", "", "isIntersectByAreaThreshold", "", "getRectIntersectArea", "widthOrHeight", "a", "kotlin.jvm.PlatformType", Constants.STRING_SIG, "TAG", "MAX_HWR_RAW_SHAPE_POINT_COUNT", "I", "MAX_HWR_GESTURE_POINT_COUNT", "MAX_HWR_DIAGRAM_POINT_COUNT", "ERASE_GESTURE_SHAPE_POINT_FILTER_AREA", "F", "PEN_UP_GESTURE_RECOGNIZE_FILTER_TIME_MS", "HWR_ERASE_INTERSECT_STEP_POINT_COUNT", "HWR_MIN_SIZE", "HWR_MIN_SCALE", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRStrokeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRStrokeUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRStrokeUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1855#2,2:158\n*S KotlinDebug\n*F\n+ 1 HWRStrokeUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRStrokeUtils\n*L\n73#1:158,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRStrokeUtils {
    public static final float ERASE_GESTURE_SHAPE_POINT_FILTER_AREA = 0.5f;
    public static final int HWR_ERASE_INTERSECT_STEP_POINT_COUNT = 25;
    public static final float HWR_MIN_SCALE = 3.0f;
    public static final float HWR_MIN_SIZE = 50.0f;
    public static final int MAX_HWR_DIAGRAM_POINT_COUNT = 3000;
    public static final int MAX_HWR_GESTURE_POINT_COUNT = 1000;
    public static final int MAX_HWR_RAW_SHAPE_POINT_COUNT = 3000;
    public static final float PEN_UP_GESTURE_RECOGNIZE_FILTER_TIME_MS = 1000.0f;

    @NotNull
    public static final HWRStrokeUtils INSTANCE = new HWRStrokeUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final String TAG = HWRStrokeUtils.class.getSimpleName();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HWRException.ExceptionType.values().length];
            try {
                iArr[HWRException.ExceptionType.RECOGNIZER_INIT_FAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HWRException.ExceptionType.CONVERT_FAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HWRException.ExceptionType.INPUT_DATA_FALSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ HWRPointerEvent pointerEvent$default(HWRStrokeUtils hWRStrokeUtils, TouchPoint touchPoint, HWRPointerEventType hWRPointerEventType, long j, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            i = -1;
        }
        return hWRStrokeUtils.pointerEvent(touchPoint, hWRPointerEventType, j, i);
    }

    /* renamed from: a */
    public final float m33405a(float widthOrHeight) {
        return Math.max(1.0f, widthOrHeight);
    }

    @Nullable
    public final List<HWRPointerEvent> applyMatrix(@Nullable List<HWRPointerEvent> list, @Nullable Matrix matrix) {
        if (list == null) {
            return null;
        }
        if (matrix == null) {
            return list;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            INSTANCE.applyMatrix((HWRPointerEvent) it2.next(), matrix);
        }
        return list;
    }

    public final void fillItemIdMap(@NotNull String[] shapeIds, @NotNull String[] itemIds, @NotNull Map<String, String> itemIdMap) {
        Intrinsics.checkNotNullParameter(shapeIds, "shapeIds");
        Intrinsics.checkNotNullParameter(itemIds, "itemIds");
        Intrinsics.checkNotNullParameter(itemIdMap, "itemIdMap");
        if (itemIds.length == 0) {
            return;
        }
        if (!(shapeIds.length == 0) && itemIds.length == shapeIds.length) {
            itemIdMap.clear();
            int length = shapeIds.length;
            for (int i = 0; i < length; i++) {
                itemIdMap.put(shapeIds[i], itemIds[i]);
            }
        }
    }

    public final int getLimitPointCount(@NotNull String contentType) {
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        if (Intrinsics.areEqual(contentType, HWRValues.PART_TYPE_DIAGRAM)) {
            return 3000;
        }
        Intrinsics.areEqual(contentType, HWRValues.PART_TYPE_GESTURE);
        return 1000;
    }

    public final float getRectIntersectArea(@NotNull RectF gestureRect, @NotNull RectF targetRect) {
        Intrinsics.checkNotNullParameter(gestureRect, "gestureRect");
        Intrinsics.checkNotNullParameter(targetRect, "targetRect");
        RectF rectF = new RectF(targetRect);
        if (rectF.intersect(gestureRect)) {
            return (m33405a(rectF.width()) * m33405a(rectF.height())) / (m33405a(targetRect.width()) * m33405a(targetRect.height()));
        }
        return 0.0f;
    }

    @NotNull
    public final String handleHWRException(@NotNull Context context, @NotNull HWRException.ExceptionType exceptionType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(exceptionType, "exceptionType");
        ResManager resManager = ResManager.INSTANCE;
        String string = resManager.getString(C7404R.string.unknown_error);
        int i = WhenMappings.$EnumSwitchMapping$0[exceptionType.ordinal()];
        if (i == 1) {
            if (NetworkUtils.INSTANCE.isWifiConnected(context)) {
                String string2 = resManager.getString(C7404R.string.recong_init_failed);
                Intrinsics.checkNotNull(string2);
                return string2;
            }
            String string3 = resManager.getString(C7404R.string.open_wifi_recognize);
            Intrinsics.checkNotNull(string3);
            return string3;
        }
        if (i == 2) {
            String string4 = resManager.getString(C7404R.string.convert_fail);
            Intrinsics.checkNotNull(string4);
            return string4;
        }
        if (i != 3) {
            Intrinsics.checkNotNull(string);
            return string;
        }
        String string5 = resManager.getString(C7404R.string.data_error);
        Intrinsics.checkNotNull(string5);
        return string5;
    }

    @NotNull
    public final HWRPointerEvent hwrPointerEvent(@NotNull TouchPoint point, @NotNull HWRPointerEventType eventType) {
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return new HWRPointerEvent(eventType, point.getX(), point.getY(), point.getTimestamp(), point.getPressure(), HWRPointerType.PEN, -1);
    }

    @Nullable
    public final List<HWRPointerEvent> inputPointerEvents(@NotNull TouchPointList pointList) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        if (pointList.size() < 3) {
            return null;
        }
        int size = pointList.size();
        ArrayList arrayList = new ArrayList();
        arrayList.add(hwrPointerEvent(pointList.get(0), HWRPointerEventType.DOWN));
        int i = size - 1;
        for (int i2 = 1; i2 < i; i2++) {
            arrayList.add(hwrPointerEvent(pointList.get(i2), HWRPointerEventType.MOVE));
        }
        arrayList.add(hwrPointerEvent(pointList.get(i), HWRPointerEventType.f42542UP));
        return arrayList;
    }

    public final boolean isIntersectByAreaThreshold(@NotNull RectF gestureRect, @NotNull RectF targetRect) {
        Intrinsics.checkNotNullParameter(gestureRect, "gestureRect");
        Intrinsics.checkNotNullParameter(targetRect, "targetRect");
        if (!new RectF(targetRect).intersect(gestureRect)) {
            return false;
        }
        float rectIntersectArea = getRectIntersectArea(gestureRect, targetRect);
        Debug.INSTANCE.m32035d(HWRStrokeUtils.class, "intersectArea = " + rectIntersectArea, new Object[0]);
        return rectIntersectArea >= 0.5f;
    }

    @NotNull
    public final HWRPointerEvent pointerEvent(@NotNull TouchPoint point, @NotNull HWRPointerEventType eventType, long timestamp, int pointerId) {
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return new HWRPointerEvent(eventType, point.getX(), point.getY(), timestamp, point.getPressure(), HWRPointerType.PEN, pointerId);
    }

    public final void applyMatrix(@NotNull HWRPointerEvent hWRPointerEvent, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(hWRPointerEvent, "<this>");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        float[] fArr = {hWRPointerEvent.getX(), hWRPointerEvent.getY()};
        matrix.mapPoints(fArr);
        hWRPointerEvent.setX(fArr[0]);
        hWRPointerEvent.setY(fArr[1]);
    }
}
