package com.onyx.android.sdk.base.data;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.view.MotionEvent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.lite.utils.MathUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 P2\u00020\u00012\u00020\u0002:\u0001PB\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006B/\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bB\u000f\b\u0016\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eB\u000f\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u0000¢\u0006\u0002\u0010\u0010BK\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0016\u001a\u00020\n¢\u0006\u0002\u0010\u0017J\u0010\u0010,\u001a\u00020\u00002\b\u0010-\u001a\u0004\u0018\u00010.J\b\u0010/\u001a\u00020\u0000H\u0016J#\u00100\u001a\u00020\u00002\u0016\u00101\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010.02\"\u0004\u0018\u00010.¢\u0006\u0002\u00103J\u0006\u00104\u001a\u00020\u0000J\u000e\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0000J\u0018\u00108\u001a\u0002062\u0006\u00109\u001a\u00020\u00002\b\b\u0002\u0010:\u001a\u00020;J\u0013\u0010<\u001a\u0002062\b\u00107\u001a\u0004\u0018\u00010=H\u0096\u0002J\b\u0010>\u001a\u00020\u0014H\u0016J\u0010\u0010?\u001a\u00020@2\b\u0010-\u001a\u0004\u0018\u00010.J\u0006\u0010A\u001a\u000206J\u0010\u0010B\u001a\u00020@2\b\u0010-\u001a\u0004\u0018\u00010.J\u0016\u0010C\u001a\u00020@2\u0006\u0010D\u001a\u00020\u00042\u0006\u0010E\u001a\u00020\u0004J\u0016\u0010C\u001a\u00020@2\u0006\u0010D\u001a\u00020\u00142\u0006\u0010E\u001a\u00020\u0014J\u0010\u0010F\u001a\u0004\u0018\u00010\u00002\u0006\u0010G\u001a\u00020\u0004J\u0016\u0010F\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u0004J\u000e\u0010J\u001a\u00020@2\u0006\u0010K\u001a\u00020\u0000J\u0016\u0010J\u001a\u00020@2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010&\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0016\u001a\u00020\nJ\b\u0010L\u001a\u00020MH\u0016J\u0010\u0010N\u001a\u00020\u00002\b\u0010-\u001a\u0004\u0018\u00010.J\u0016\u0010O\u001a\u00020@2\u0006\u0010D\u001a\u00020\u00042\u0006\u0010E\u001a\u00020\u0004R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0019\"\u0004\b\u001d\u0010\u001bR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u0015\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!R\u001a\u0010\u0016\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0019\"\u0004\b)\u0010\u001bR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0019\"\u0004\b+\u0010\u001b¨\u0006Q"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/TouchPoint;", "Ljava/io/Serializable;", "", "x", "", "y", "(FF)V", "p", "s", "t", "", "(FFFFJ)V", "motionEvent", "Landroid/view/MotionEvent;", "(Landroid/view/MotionEvent;)V", "source", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "pressure", "size", "tiltX", "", "tiltY", NotificationCompat.CarExtender.f4980p, "(FFFFIIJ)V", "getPressure", "()F", "setPressure", "(F)V", "getSize", "setSize", "getTiltX", "()I", "setTiltX", "(I)V", "getTiltY", "setTiltY", "getTimestamp", "()J", "setTimestamp", "(J)V", "getX", "setX", "getY", "setY", "applyMatrix", "matrix", "Landroid/graphics/Matrix;", "clone", "concatTransform", "matrixs", "", "([Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;", "copy", "equalXY", "", C4921e.f26528e, "equalXYApproximately", Constants.ATTRVAL_OTHER, SymmLQ.f108603e, "", "equals", "", "hashCode", "invertMatrix", "", "isEmpty", "mapMatrix", TypedValues.CycleType.S_WAVE_OFFSET, "dx", "dy", "scale", "scaleValue", "scaleX", "scaleY", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "point", "toString", "", Constants.ELEMNAME_TRANSFORM_STRING, "translate", "Companion", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTouchPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPoint.kt\ncom/onyx/android/sdk/base/data/TouchPoint\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,601:1\n13309#2,2:602\n*S KotlinDebug\n*F\n+ 1 TouchPoint.kt\ncom/onyx/android/sdk/base/data/TouchPoint\n*L\n139#1:602,2\n*E\n"})
/* loaded from: classes7.dex */
public final class TouchPoint implements Serializable, Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final TouchPoint Empty = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0, 127, null);
    public static final int OBJECT_BYTE_COUNT = 32;
    private float pressure;
    private float size;
    private int tiltX;
    private int tiltY;
    private long timestamp;
    private float x;
    private float y;

    @Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fJ\u0016\u0010\u000e\u001a\u00020\b2\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0010J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\fH\u0002J\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\bJ\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\fJ\u0016\u0010\u001f\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004J&\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0004J&\u0010'\u001a\u00020\f2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0004J\u0016\u0010(\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004J&\u0010)\u001a\u00020\f2\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020\f2\u0006\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020\fJ\u0014\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010/\u001a\u000200J\u001e\u00101\u001a\u00020\b2\u0006\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u00020\b2\u0006\u00104\u001a\u00020\bJ\u001a\u00105\u001a\u0004\u0018\u0001062\u0006\u00107\u001a\u0002002\b\u00108\u001a\u0004\u0018\u000109J\u001e\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010;\u001a\u00020<2\b\b\u0002\u0010=\u001a\u00020\bJ\u0016\u0010>\u001a\u0004\u0018\u0001062\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010J\u001e\u0010>\u001a\u0004\u0018\u0001062\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010@\u001a\u00020\fJ$\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\b\u00108\u001a\u0004\u0018\u0001092\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010J\u0016\u0010A\u001a\u0004\u0018\u0001062\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010J\u001c\u0010A\u001a\u0002062\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010@\u001a\u00020\fJ\"\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010@\u001a\u00020\fJ\u0016\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u001d2\u0006\u0010G\u001a\u00020\u0004J\u0016\u0010H\u001a\u00020E2\u0006\u0010F\u001a\u00020\u00042\u0006\u0010G\u001a\u00020\u001dJ \u0010I\u001a\u00020\u001d2\u0006\u0010J\u001a\u00020\u00042\u0006\u0010K\u001a\u00020L2\b\b\u0002\u0010\u001e\u001a\u00020\fJ\u0012\u0010M\u001a\u00020N*\u00020\u00042\u0006\u00102\u001a\u00020\u0004R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006O"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;", "", "()V", "Empty", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getEmpty", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "OBJECT_BYTE_COUNT", "", "computeAndroidTiltXY", "Lkotlin/Pair;", "tilt", "", "orientation", "computePointByteSize", "touchPointList", "", "floatEquals", "", "lhs", "rhs", "tolerance", "fromHistorical", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "motionEvent", "i", "fromTinyPoint", "tinyPoint", "Lcom/onyx/android/sdk/base/data/TinyPoint;", "maxPressure", "getHorizontalAngle", gon.f71290o0, "end", "getIntersection", "a", "b", "c", "d", "getIntersectionAngle", "getPointAngle", "getPointDistance", "x1", "y1", "x2", "y2", "getRectPoints", "rectF", "Landroid/graphics/RectF;", "getTouchPointCoordinatesHashCode", "touchPoint", "maxXY", "blockSize", "getTransformRectPoints", "", "originRect", "matrix", "Landroid/graphics/Matrix;", "parseTouchPointsFromPath", "path", "Landroid/graphics/Path;", "step", "realPointArray", PointConstant.POINT_FILE_END, "pointScale", "renderPointArray", "touchPoints", "scalePointList", "size2Tilt", "", "srcPoint", "dstPoint", "tilt2Size", "toTinyPoint", "point", "compareTime", "", "distance", "", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nTouchPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPoint.kt\ncom/onyx/android/sdk/base/data/TouchPoint$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,601:1\n1549#2:602\n1620#2,3:603\n1549#2:606\n1620#2,3:607\n*S KotlinDebug\n*F\n+ 1 TouchPoint.kt\ncom/onyx/android/sdk/base/data/TouchPoint$Companion\n*L\n239#1:602\n239#1:603,3\n442#1:606\n442#1:607,3\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean floatEquals(float lhs, float rhs, float tolerance) {
            return Math.abs(lhs - rhs) < tolerance;
        }

        public static /* synthetic */ TouchPoint fromTinyPoint$default(Companion companion, TinyPoint tinyPoint, float f, int i, Object obj) {
            if ((i & 2) != 0) {
                f = 1.0f;
            }
            return companion.fromTinyPoint(tinyPoint, f);
        }

        public static /* synthetic */ List parseTouchPointsFromPath$default(Companion companion, Path path, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 2;
            }
            return companion.parseTouchPointsFromPath(path, i);
        }

        public static /* synthetic */ TinyPoint toTinyPoint$default(Companion companion, TouchPoint touchPoint, long j, float f, int i, Object obj) {
            if ((i & 4) != 0) {
                f = 1.0f;
            }
            return companion.toTinyPoint(touchPoint, j, f);
        }

        @NotNull
        public final Pair<Integer, Integer> computeAndroidTiltXY(float tilt, float orientation) {
            if (floatEquals(orientation, 0.0f, 0.001f)) {
                return new Pair<>(0, Integer.valueOf((int) Math.rint(Math.toDegrees((float) Math.acos((float) Math.cos(tilt))))));
            }
            if (floatEquals(orientation, 1.5707964f, 0.001f)) {
                return new Pair<>(Integer.valueOf((int) Math.rint(-Math.toDegrees((float) Math.acos((float) Math.cos(tilt))))), 0);
            }
            if (floatEquals(orientation, -1.5707964f, 0.001f)) {
                return new Pair<>(Integer.valueOf((int) Math.rint(Math.toDegrees((float) Math.acos((float) Math.cos(tilt))))), 0);
            }
            if (floatEquals(orientation, -3.1415927f, 0.001f)) {
                return new Pair<>(0, Integer.valueOf((int) Math.rint(-Math.toDegrees((float) Math.acos((float) Math.cos(tilt))))));
            }
            float cos = (float) Math.cos(tilt);
            double d = orientation;
            float tan = (float) Math.tan(d);
            float f = 1 - (tan * tan);
            double acos = (float) Math.acos((float) Math.sqrt(((-f) + ((float) Math.sqrt((f * f) - ((4 * r8) * (-(cos * cos)))))) / (2 * r8)));
            float acos2 = (float) Math.acos(cos / ((float) Math.cos(acos)));
            int rint = (int) Math.rint(Math.toDegrees(acos));
            int rint2 = (int) Math.rint(Math.toDegrees(acos2));
            if (-3.141592653589793d > d || d > -1.5707963267948966d) {
                if (-1.5707963267948966d >= d || orientation > 0.0f) {
                    if (0.0f < orientation && d <= 1.5707963267948966d) {
                        rint2 = -rint2;
                    } else if (1.5707963267948966d < d && d <= 3.141592653589793d) {
                        rint2 = -rint2;
                    }
                }
                return new Pair<>(Integer.valueOf(rint2), Integer.valueOf(rint));
            }
            rint = -rint;
            return new Pair<>(Integer.valueOf(rint2), Integer.valueOf(rint));
        }

        public final int computePointByteSize(@NotNull List<TouchPoint> touchPointList) {
            Intrinsics.checkNotNullParameter(touchPointList, "touchPointList");
            if (touchPointList.isEmpty()) {
                return 0;
            }
            return touchPointList.size() * 32;
        }

        public final double distance(@NotNull TouchPoint touchPoint, @NotNull TouchPoint touchPoint2) {
            Intrinsics.checkNotNullParameter(touchPoint, "<this>");
            Intrinsics.checkNotNullParameter(touchPoint2, "touchPoint");
            return MathUtils.INSTANCE.distance(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY());
        }

        @NotNull
        public final List<TouchPoint> fromHistorical(@NotNull MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            int historySize = event.getHistorySize();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < historySize; i++) {
                arrayList.add(fromHistorical(event, i));
            }
            arrayList.add(new TouchPoint(event));
            return arrayList;
        }

        @NotNull
        public final TouchPoint fromTinyPoint(@NotNull TinyPoint tinyPoint, float maxPressure) {
            Intrinsics.checkNotNullParameter(tinyPoint, "tinyPoint");
            TouchPoint touchPoint = new TouchPoint(tinyPoint.getX(), tinyPoint.getY(), Math.min((((float) tinyPoint.getPressure()) < 0.0f ? tinyPoint.getPressure() & 65535 : tinyPoint.getPressure()) / maxPressure, 1.0f), tinyPoint.getSize(), tinyPoint.getTime());
            size2Tilt(tinyPoint, touchPoint);
            return touchPoint;
        }

        @NotNull
        public final TouchPoint getEmpty() {
            return TouchPoint.Empty;
        }

        public final float getHorizontalAngle(@NotNull TouchPoint start, @NotNull TouchPoint end) {
            Intrinsics.checkNotNullParameter(start, "start");
            Intrinsics.checkNotNullParameter(end, "end");
            return 0.0f;
        }

        @NotNull
        public final TouchPoint getIntersection(@NotNull TouchPoint a, @NotNull TouchPoint b, @NotNull TouchPoint c, @NotNull TouchPoint d) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            Intrinsics.checkNotNullParameter(c, "c");
            Intrinsics.checkNotNullParameter(d, "d");
            TouchPoint touchPoint = new TouchPoint(a);
            if (((Math.abs(b.getY() - a.getY()) + Math.abs(b.getX() - a.getX())) + Math.abs(d.getY() - c.getY())) + Math.abs(d.getX() - c.getX()) == 0.0f) {
                return touchPoint;
            }
            if (Math.abs(b.getY() - a.getY()) + Math.abs(b.getX() - a.getX()) == 0.0f) {
                return touchPoint;
            }
            if (Math.abs(d.getY() - c.getY()) + Math.abs(d.getX() - c.getX()) == 0.0f) {
                return touchPoint;
            }
            if (((b.getY() - a.getY()) * (c.getX() - d.getX())) - ((b.getX() - a.getX()) * (c.getY() - d.getY())) == 0.0f) {
                return touchPoint;
            }
            touchPoint.setX((((((b.getX() - a.getX()) * (c.getX() - d.getX())) * (c.getY() - a.getY())) - ((c.getX() * (b.getX() - a.getX())) * (c.getY() - d.getY()))) + ((a.getX() * (b.getY() - a.getY())) * (c.getX() - d.getX()))) / (((b.getY() - a.getY()) * (c.getX() - d.getX())) - ((b.getX() - a.getX()) * (c.getY() - d.getY()))));
            touchPoint.setY((((((b.getY() - a.getY()) * (c.getY() - d.getY())) * (c.getX() - a.getX())) - ((c.getY() * (b.getY() - a.getY())) * (c.getX() - d.getX()))) + ((a.getY() * (b.getX() - a.getX())) * (c.getY() - d.getY()))) / (((b.getX() - a.getX()) * (c.getY() - d.getY())) - ((b.getY() - a.getY()) * (c.getX() - d.getX()))));
            return touchPoint;
        }

        public final float getIntersectionAngle(@NotNull TouchPoint a, @NotNull TouchPoint b, @NotNull TouchPoint c, @NotNull TouchPoint d) {
            Intrinsics.checkNotNullParameter(a, "a");
            Intrinsics.checkNotNullParameter(b, "b");
            Intrinsics.checkNotNullParameter(c, "c");
            Intrinsics.checkNotNullParameter(d, "d");
            float x = b.getX() - a.getX();
            float y = b.getY() - a.getY();
            float x2 = d.getX() - c.getX();
            float y2 = (x * (d.getY() - c.getY())) - (y * x2);
            double degrees = Math.toDegrees((float) Math.acos(Math.max(-1.0f, Math.min(1.0f, ((x * x2) + (y * r7)) / (((float) Math.sqrt((x * x) + (y * y))) * ((float) Math.sqrt((x2 * x2) + (r7 * r7))))))));
            if (y2 < 0.0f) {
                degrees = -degrees;
            }
            return (float) degrees;
        }

        public final float getPointAngle(@NotNull TouchPoint start, @NotNull TouchPoint end) {
            Intrinsics.checkNotNullParameter(start, "start");
            Intrinsics.checkNotNullParameter(end, "end");
            return (float) ((180 * Math.atan2(end.getX() - start.getX(), start.getY() - end.getY())) / 3.141592653589793d);
        }

        public final float getPointDistance(float x1, float y1, float x2, float y2) {
            return (float) Math.sqrt(Math.pow(x1 - x2, 2.0d) + Math.pow(y1 - y2, 2.0d));
        }

        @NotNull
        public final List<TouchPoint> getRectPoints(@NotNull RectF rectF) {
            Intrinsics.checkNotNullParameter(rectF, "rectF");
            ArrayList arrayList = new ArrayList();
            arrayList.add(new TouchPoint(rectF.left, rectF.top));
            arrayList.add(new TouchPoint(rectF.right, rectF.top));
            arrayList.add(new TouchPoint(rectF.right, rectF.bottom));
            arrayList.add(new TouchPoint(rectF.left, rectF.bottom));
            return arrayList;
        }

        public final int getTouchPointCoordinatesHashCode(@NotNull TouchPoint touchPoint, int maxXY, int blockSize) {
            Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
            return (int) ((maxXY * ((int) (touchPoint.getX() / r3))) + (touchPoint.getY() / blockSize));
        }

        @Nullable
        public final float[] getTransformRectPoints(@NotNull RectF originRect, @Nullable Matrix matrix) {
            Intrinsics.checkNotNullParameter(originRect, "originRect");
            float[] fArr = new float[8];
            float[] fArr2 = new float[8];
            float[] fArr3 = new float[8];
            float f = originRect.left;
            float f2 = originRect.top;
            float f3 = originRect.right;
            float f4 = originRect.bottom;
            float[] fArr4 = {f, f2, f3, f2, f3, f4, f, f4};
            if (matrix == null) {
                return fArr4;
            }
            matrix.mapPoints(fArr, fArr4);
            matrix.mapRect(originRect);
            Matrix matrix2 = new Matrix();
            matrix2.postRotate(90.0f, fArr[0], fArr[1]);
            matrix2.mapPoints(fArr2, fArr);
            TouchPoint intersection = getIntersection(new TouchPoint(fArr[0], fArr[1]), new TouchPoint(fArr2[2], fArr2[3]), new TouchPoint(fArr[4], fArr[5]), new TouchPoint(fArr[6], fArr[7]));
            Matrix matrix3 = new Matrix();
            float[] fArr5 = new float[8];
            matrix3.postRotate(90.0f, fArr[4], fArr[5]);
            matrix3.mapPoints(fArr5, fArr);
            TouchPoint intersection2 = getIntersection(new TouchPoint(fArr[4], fArr[5]), new TouchPoint(fArr5[6], fArr5[7]), new TouchPoint(fArr[0], fArr[1]), new TouchPoint(fArr[2], fArr[3]));
            if (!originRect.contains(intersection.getX(), intersection.getY()) && !originRect.contains(intersection2.getX(), intersection2.getY())) {
                fArr3[0] = fArr[0];
                fArr3[1] = fArr[1];
                fArr3[2] = intersection2.getX();
                fArr3[3] = intersection2.getY();
                fArr3[4] = fArr[4];
                fArr3[5] = fArr[5];
                fArr3[6] = intersection.getX();
                fArr3[7] = intersection.getY();
                return fArr3;
            }
            Matrix matrix4 = new Matrix();
            float[] fArr6 = new float[8];
            matrix4.postRotate(90.0f, fArr[2], fArr[3]);
            matrix4.mapPoints(fArr6, fArr);
            TouchPoint intersection3 = getIntersection(new TouchPoint(fArr6[4], fArr6[5]), new TouchPoint(fArr[2], fArr[3]), new TouchPoint(fArr[6], fArr[7]), new TouchPoint(fArr[0], fArr[1]));
            Matrix matrix5 = new Matrix();
            float[] fArr7 = new float[8];
            matrix5.postRotate(90.0f, fArr[6], fArr[7]);
            matrix5.mapPoints(fArr7, fArr);
            TouchPoint intersection4 = getIntersection(new TouchPoint(fArr[6], fArr[7]), new TouchPoint(fArr7[0], fArr7[1]), new TouchPoint(fArr[2], fArr[3]), new TouchPoint(fArr[4], fArr[5]));
            fArr3[0] = intersection3.getX();
            fArr3[1] = intersection3.getY();
            fArr3[2] = fArr[2];
            fArr3[3] = fArr[3];
            fArr3[4] = intersection4.getX();
            fArr3[5] = intersection4.getY();
            fArr3[6] = fArr[6];
            fArr3[7] = fArr[7];
            return fArr3;
        }

        @NotNull
        public final List<TouchPoint> parseTouchPointsFromPath(@NotNull Path path, int step) {
            Object lastOrNull;
            Intrinsics.checkNotNullParameter(path, "path");
            ArrayList arrayList = new ArrayList();
            float[] fArr = new float[2];
            PathMeasure pathMeasure = new PathMeasure(path, false);
            do {
                float length = pathMeasure.getLength();
                float f = 0.0f;
                while (true) {
                    if (length <= 0.0f || f > length) {
                        break;
                    }
                    if (pathMeasure.getPosTan(f, fArr, null)) {
                        arrayList.add(new TouchPoint(fArr[0], fArr[1], 1.0f, 0.0f, 0, 0, 0L, 120, null));
                    }
                    float f2 = step;
                    f += f2;
                    if (f > length) {
                        if (!(f == f2 + length)) {
                            f = length;
                        }
                    }
                }
                if (pathMeasure.getPosTan(length, fArr, null)) {
                    TouchPoint touchPoint = new TouchPoint(fArr[0], fArr[1]);
                    lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) arrayList);
                    TouchPoint touchPoint2 = (TouchPoint) lastOrNull;
                    if (touchPoint2 != null && !touchPoint2.equalXY(touchPoint)) {
                        arrayList.add(touchPoint);
                    }
                }
            } while (pathMeasure.nextContour());
            return arrayList;
        }

        @Nullable
        public final float[] realPointArray(@NotNull List<TouchPoint> points) {
            Intrinsics.checkNotNullParameter(points, "points");
            return realPointArray(points, 1.0f);
        }

        @NotNull
        public final List<TouchPoint> renderPointArray(@Nullable Matrix matrix, @NotNull List<TouchPoint> touchPoints) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(touchPoints, "touchPoints");
            List<TouchPoint> list = touchPoints;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(((TouchPoint) it2.next()).copy().applyMatrix(matrix));
            }
            return arrayList;
        }

        @NotNull
        public final List<TouchPoint> scalePointList(@NotNull List<TouchPoint> points, float pointScale) {
            int collectionSizeOrDefault;
            List<TouchPoint> list;
            Intrinsics.checkNotNullParameter(points, "points");
            List<TouchPoint> list2 = points;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TouchPoint touchPoint : list2) {
                arrayList.add(new TouchPoint(touchPoint.getX() * pointScale, touchPoint.getY() * pointScale, touchPoint.getPressure(), touchPoint.getSize(), touchPoint.getTimestamp()));
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            return list;
        }

        public final void size2Tilt(@NotNull TinyPoint srcPoint, @NotNull TouchPoint dstPoint) {
            Intrinsics.checkNotNullParameter(srcPoint, "srcPoint");
            Intrinsics.checkNotNullParameter(dstPoint, "dstPoint");
            dstPoint.setTiltX((byte) srcPoint.getSize());
            dstPoint.setTiltY((byte) (srcPoint.getSize() >> 8));
        }

        public final void tilt2Size(@NotNull TouchPoint srcPoint, @NotNull TinyPoint dstPoint) {
            Intrinsics.checkNotNullParameter(srcPoint, "srcPoint");
            Intrinsics.checkNotNullParameter(dstPoint, "dstPoint");
            dstPoint.setSize((short) ((srcPoint.getTiltY() << 8) | (srcPoint.getTiltX() & 255)));
        }

        @NotNull
        public final TinyPoint toTinyPoint(@NotNull TouchPoint point, long compareTime, float maxPressure) {
            Intrinsics.checkNotNullParameter(point, "point");
            TinyPoint tinyPoint = new TinyPoint(point.getX(), point.getY(), (short) (point.getPressure() * maxPressure), (short) point.getSize(), (int) (point.getTimestamp() - compareTime));
            tilt2Size(point, tinyPoint);
            return tinyPoint;
        }

        private Companion() {
        }

        @Nullable
        public final float[] realPointArray(@NotNull List<TouchPoint> points, float pointScale) {
            Intrinsics.checkNotNullParameter(points, "points");
            if (points.isEmpty()) {
                return new float[0];
            }
            long timestamp = points.get(0).getTimestamp();
            float[] fArr = new float[points.size() * 5];
            int size = points.size();
            for (int i = 0; i < size; i++) {
                int i2 = i * 5;
                TouchPoint touchPoint = points.get(i);
                fArr[i2] = touchPoint.getX() * pointScale;
                fArr[i2 + 1] = touchPoint.getY() * pointScale;
                fArr[i2 + 2] = touchPoint.getSize();
                fArr[i2 + 3] = touchPoint.getPressure();
                fArr[i2 + 4] = (float) (touchPoint.getTimestamp() - timestamp);
            }
            return fArr;
        }

        @NotNull
        public final TouchPoint fromHistorical(@NotNull MotionEvent motionEvent, int i) {
            Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
            return new TouchPoint(motionEvent.getHistoricalX(i), motionEvent.getHistoricalY(i), motionEvent.getHistoricalPressure(i), motionEvent.getHistoricalSize(i), motionEvent.getHistoricalEventTime(i));
        }

        @Nullable
        public final float[] renderPointArray(@NotNull List<TouchPoint> points) {
            Intrinsics.checkNotNullParameter(points, "points");
            return renderPointArray(points, 1.0f);
        }

        @NotNull
        public final float[] renderPointArray(@NotNull List<TouchPoint> points, float pointScale) {
            Intrinsics.checkNotNullParameter(points, "points");
            float[] fArr = new float[points.size() * 3];
            int size = points.size();
            for (int i = 0; i < size; i++) {
                int i2 = i * 3;
                TouchPoint touchPoint = points.get(i);
                fArr[i2] = touchPoint.getX() * pointScale;
                fArr[i2 + 1] = touchPoint.getY() * pointScale;
                fArr[i2 + 2] = touchPoint.getSize();
            }
            return fArr;
        }
    }

    public TouchPoint() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
    }

    public static /* synthetic */ boolean equalXYApproximately$default(TouchPoint touchPoint, TouchPoint touchPoint2, Number number, int i, Object obj) {
        if ((i & 2) != 0) {
            number = Float.valueOf(1.0f);
        }
        return touchPoint.equalXYApproximately(touchPoint2, number);
    }

    @NotNull
    public final TouchPoint applyMatrix(@Nullable Matrix matrix) {
        if (matrix == null || MathUtils.INSTANCE.isEmptyMatrix(matrix)) {
            return this;
        }
        float[] fArr = {this.x, this.y};
        matrix.mapPoints(fArr);
        this.x = fArr[0];
        this.y = fArr[1];
        return this;
    }

    @NotNull
    public final TouchPoint concatTransform(@NotNull Matrix... matrixs) {
        Intrinsics.checkNotNullParameter(matrixs, "matrixs");
        Matrix matrix = new Matrix();
        for (Matrix matrix2 : matrixs) {
            if (matrix2 == null) {
                matrix2 = new Matrix();
            }
            matrix.postConcat(matrix2);
        }
        return transform(matrix);
    }

    @NotNull
    public final TouchPoint copy() {
        return new TouchPoint(this);
    }

    public final boolean equalXY(@NotNull TouchPoint o) {
        Intrinsics.checkNotNullParameter(o, "o");
        if (this.x == o.x) {
            if (this.y == o.y) {
                return true;
            }
        }
        return false;
    }

    public final boolean equalXYApproximately(@NotNull TouchPoint other, @NotNull Number threshold) {
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        return INSTANCE.distance(this, other) < ((double) threshold.floatValue());
    }

    public boolean equals(@Nullable Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !Intrinsics.areEqual(TouchPoint.class, o.getClass())) {
            return false;
        }
        TouchPoint touchPoint = (TouchPoint) o;
        return Float.compare(touchPoint.x, this.x) == 0 && Float.compare(touchPoint.y, this.y) == 0 && Float.compare(touchPoint.pressure, this.pressure) == 0 && Float.compare(touchPoint.size, this.size) == 0 && this.timestamp == touchPoint.timestamp;
    }

    public final float getPressure() {
        return this.pressure;
    }

    public final float getSize() {
        return this.size;
    }

    public final int getTiltX() {
        return this.tiltX;
    }

    public final int getTiltY() {
        return this.tiltY;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    public int hashCode() {
        return Objects.hash(Float.valueOf(this.x), Float.valueOf(this.y), Float.valueOf(this.pressure), Float.valueOf(this.size), Long.valueOf(this.timestamp));
    }

    public final void invertMatrix(@Nullable Matrix matrix) {
        if (matrix == null || MathUtils.INSTANCE.isEmptyMatrix(matrix)) {
            return;
        }
        Matrix matrix2 = new Matrix();
        if (matrix.invert(matrix2)) {
            applyMatrix(matrix2);
        }
    }

    public final boolean isEmpty() {
        return Intrinsics.areEqual(this, Empty);
    }

    public final void mapMatrix(@Nullable Matrix matrix) {
        if (matrix == null) {
            return;
        }
        float[] fArr = {this.x, this.y};
        matrix.mapPoints(fArr);
        this.x = fArr[0];
        this.y = fArr[1];
    }

    public final void offset(int dx, int dy) {
        offset(dx, dy);
    }

    @Nullable
    public final TouchPoint scale(float scaleValue) {
        this.x *= scaleValue;
        this.y *= scaleValue;
        return this;
    }

    public final void set(float x, float y) {
        this.x = x;
        this.y = y;
    }

    public final void setPressure(float f) {
        this.pressure = f;
    }

    public final void setSize(float f) {
        this.size = f;
    }

    public final void setTiltX(int i) {
        this.tiltX = i;
    }

    public final void setTiltY(int i) {
        this.tiltY = i;
    }

    /* renamed from: setTimestamp, reason: collision with other method in class */
    public final void m72174setTimestamp(long j) {
        this.timestamp = j;
    }

    public final void setX(float f) {
        this.x = f;
    }

    public final void setY(float f) {
        this.y = f;
    }

    @NotNull
    public String toString() {
        return "x:" + this.x + " y:" + this.y + " pressure:" + this.pressure + " size:" + this.size;
    }

    @NotNull
    public final TouchPoint transform(@Nullable Matrix matrix) {
        TouchPoint copy = copy();
        copy.applyMatrix(matrix);
        return copy;
    }

    public final void translate(float dx, float dy) {
        this.x += dx;
        this.y += dy;
    }

    public TouchPoint(float f, float f2, float f3, float f4, int i, int i2, long j) {
        this.x = f;
        this.y = f2;
        this.pressure = f3;
        this.size = f4;
        this.tiltX = i;
        this.tiltY = i2;
        this.timestamp = j;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public TouchPoint m72173clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TouchPoint");
        return (TouchPoint) clone;
    }

    public final void offset(float dx, float dy) {
        this.x += dx;
        this.y += dy;
    }

    @Nullable
    public final TouchPoint setTimestamp(long timestamp) {
        this.timestamp = timestamp;
        return this;
    }

    @NotNull
    public final TouchPoint scale(float scaleX, float scaleY) {
        this.x *= scaleX;
        this.y *= scaleY;
        return this;
    }

    public final void set(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        this.x = point.x;
        this.y = point.y;
        this.pressure = point.pressure;
        this.size = point.size;
        this.tiltX = point.tiltX;
        this.tiltY = point.tiltY;
        this.timestamp = point.timestamp;
    }

    public /* synthetic */ TouchPoint(float f, float f2, float f3, float f4, int i, int i2, long j, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0.0f : f, (i3 & 2) != 0 ? 0.0f : f2, (i3 & 4) != 0 ? 0.0f : f3, (i3 & 8) != 0 ? 0.0f : f4, (i3 & 16) != 0 ? 0 : i, (i3 & 32) != 0 ? 0 : i2, (i3 & 64) != 0 ? 0L : j);
    }

    public TouchPoint(float f, float f2) {
        this(f, f2, 0.0f, 0.0f, 0, 0, System.currentTimeMillis(), 60, null);
    }

    public TouchPoint(float f, float f2, float f3, float f4, long j) {
        this(f, f2, f3, f4, 0, 0, j, 48, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TouchPoint(@NotNull MotionEvent motionEvent) {
        this(motionEvent.getX(), motionEvent.getY(), motionEvent.getPressure(), motionEvent.getSize(), 0, 0, motionEvent.getEventTime(), 48, null);
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        Pair<Integer, Integer> computeAndroidTiltXY = INSTANCE.computeAndroidTiltXY(motionEvent.getAxisValue(25), motionEvent.getAxisValue(8));
        int intValue = computeAndroidTiltXY.component1().intValue();
        int intValue2 = computeAndroidTiltXY.component2().intValue();
        this.tiltX = intValue;
        this.tiltY = intValue2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TouchPoint(@NotNull TouchPoint source) {
        this(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        Intrinsics.checkNotNullParameter(source, "source");
        set(source);
    }
}
