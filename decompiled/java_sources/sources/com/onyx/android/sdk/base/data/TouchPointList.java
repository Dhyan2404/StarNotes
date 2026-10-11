package com.onyx.android.sdk.base.data;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 92\u00020\u00012\u00020\u0002:\u00019B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u000f\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0000¢\u0006\u0002\u0010\bB\u0017\b\u0016\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n¢\u0006\u0002\u0010\fJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000bJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0000J\u001c\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u001e\u0010\u0013\u001a\u00020\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\n2\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0010J\b\u0010\u001c\u001a\u00020\u0000H\u0016J\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00150\nJ\b\u0010\u001e\u001a\u0004\u0018\u00010\u000bJ\u0011\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u0005H\u0086\u0002J\u0006\u0010!\u001a\u00020\u0017J\u0006\u0010\"\u001a\u00020#J\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u0006\u0010&\u001a\u00020'J\u000f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u000b0)H\u0086\u0002J\b\u0010*\u001a\u0004\u0018\u00010\u000bJ\u0014\u0010+\u001a\u00020\u00102\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u0016\u0010,\u001a\u00020\u00102\u0006\u0010-\u001a\u00020\u00172\u0006\u0010.\u001a\u00020/J\u000e\u00100\u001a\u00020\u00102\u0006\u00101\u001a\u00020\u0017J\u0016\u00100\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u0017J\u0016\u00104\u001a\u00020\u00002\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u000eJ\u0006\u0010\u0004\u001a\u00020\u0005J\u0016\u00105\u001a\b\u0012\u0004\u0012\u00020\u00150\n2\b\b\u0002\u0010\u0016\u001a\u00020\u0017J\u0016\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u00172\u0006\u00108\u001a\u00020\u0017R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/TouchPointList;", "Ljava/io/Serializable;", "", "()V", "size", "", "(I)V", Constants.ATTRVAL_OTHER, "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V", "list", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "(Ljava/util/List;)V", PointConstant.POINT_FILE_END, "", "add", "", "touchPoint", FirebaseAnalytics.Param.INDEX, "addAll", "pointList", "Lcom/onyx/android/sdk/base/data/TinyPoint;", "maxPressure", "", "applyMatrix", "matrix", "Landroid/graphics/Matrix;", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.CLEAR_ATTRIBUTES, "clone", "detachPointList", "first", "get", "i", "getAveragePressure", "getBoundingRect", "Landroid/graphics/RectF;", "getPoints", "getRenderPoints", "isEmpty", "", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.ITERATOR_PNAME, "", Keywords.FUNC_LAST_STRING, "removeAll", "rotateAllPoints", "rotateAngle", "originPoint", "Landroid/graphics/PointF;", "scaleAllPoints", "scaleValue", "sx", "sy", "setPoints", "toTinyPointList", "translateAllPoints", "dx", "dy", "Companion", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nTouchPointList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchPointList.kt\ncom/onyx/android/sdk/base/data/TouchPointList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,307:1\n1855#2,2:308\n1#3:310\n*S KotlinDebug\n*F\n+ 1 TouchPointList.kt\ncom/onyx/android/sdk/base/data/TouchPointList\n*L\n38#1:308,2\n*E\n"})
/* loaded from: classes7.dex */
public final class TouchPointList implements Serializable, Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final Matrix EMPTY = new Matrix();

    @NotNull
    private List<TouchPoint> points;

    @Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;", "", "()V", "EMPTY", "Landroid/graphics/Matrix;", "getBoundingRect", "Landroid/graphics/RectF;", "list", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "isEmptyMatrix", "", "matrix", "pointsFromByteArray", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "blob", "", "pointsToByteArray", "touchPointList", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final RectF getBoundingRect(@NotNull List<TouchPoint> list) {
            Object first;
            Intrinsics.checkNotNullParameter(list, "list");
            RectF rectF = new RectF();
            if (list.isEmpty()) {
                return rectF;
            }
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) list);
            TouchPoint touchPoint = (TouchPoint) first;
            rectF.set(touchPoint.getX(), touchPoint.getY(), touchPoint.getX(), touchPoint.getY());
            for (TouchPoint touchPoint2 : list) {
                rectF.union(touchPoint2.getX(), touchPoint2.getY());
            }
            return rectF;
        }

        public final boolean isEmptyMatrix(@Nullable Matrix matrix) {
            return matrix == null || Intrinsics.areEqual(matrix, TouchPointList.EMPTY);
        }

        @NotNull
        public final TouchPointList pointsFromByteArray(@Nullable byte[] blob) {
            TouchPointList touchPointList = new TouchPointList(100);
            if (blob == null) {
                return touchPointList;
            }
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(blob));
            try {
                int length = blob.length / 32;
                for (int i = 0; i < length; i++) {
                    float readFloat = dataInputStream.readFloat();
                    float readFloat2 = dataInputStream.readFloat();
                    float readFloat3 = dataInputStream.readFloat();
                    float readFloat4 = dataInputStream.readFloat();
                    int readInt = dataInputStream.readInt();
                    int readInt2 = dataInputStream.readInt();
                    TouchPoint touchPoint = new TouchPoint(readFloat, readFloat2, readFloat3, readFloat4, dataInputStream.readLong());
                    touchPoint.setTiltX(readInt);
                    touchPoint.setTiltY(readInt2);
                    touchPointList.add(touchPoint);
                }
                CloseableKt.closeFinally(dataInputStream, null);
                return touchPointList;
            } finally {
            }
        }

        @Nullable
        public final byte[] pointsToByteArray(@Nullable TouchPointList touchPointList) {
            if (touchPointList == null || touchPointList.isEmpty()) {
                return new byte[0];
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                for (TouchPoint touchPoint : touchPointList.getPoints()) {
                    dataOutputStream.writeFloat(touchPoint.getX());
                    dataOutputStream.writeFloat(touchPoint.getY());
                    dataOutputStream.writeFloat(touchPoint.getPressure());
                    dataOutputStream.writeFloat(touchPoint.getSize());
                    dataOutputStream.writeInt(touchPoint.getTiltX());
                    dataOutputStream.writeInt(touchPoint.getTiltY());
                    dataOutputStream.writeLong(touchPoint.getTimestamp());
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                CloseableKt.closeFinally(dataOutputStream, null);
                return byteArray;
            } finally {
            }
        }

        private Companion() {
        }
    }

    public TouchPointList() {
        this.points = new ArrayList();
    }

    public static /* synthetic */ TouchPointList addAll$default(TouchPointList touchPointList, List list, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 1.0f;
        }
        return touchPointList.addAll((List<TinyPoint>) list, f);
    }

    public static /* synthetic */ List toTinyPointList$default(TouchPointList touchPointList, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        return touchPointList.toTinyPointList(f);
    }

    public final void add(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.points.add(touchPoint);
    }

    public final void addAll(@NotNull TouchPointList other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.points.addAll(other.getPoints());
    }

    @NotNull
    public final TouchPointList applyMatrix(@Nullable Matrix matrix) {
        if (matrix == null || INSTANCE.isEmptyMatrix(matrix)) {
            return this;
        }
        for (TouchPoint touchPoint : this.points) {
            float[] fArr = {touchPoint.getX(), touchPoint.getY()};
            matrix.mapPoints(fArr);
            touchPoint.setX(fArr[0]);
            touchPoint.setY(fArr[1]);
        }
        return this;
    }

    public final void clear() {
        this.points = new ArrayList();
    }

    @NotNull
    public final List<TinyPoint> detachPointList() {
        List<TinyPoint> tinyPointList$default = toTinyPointList$default(this, 0.0f, 1, null);
        this.points.clear();
        return tinyPointList$default;
    }

    @Nullable
    public final TouchPoint first() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.points);
        return (TouchPoint) firstOrNull;
    }

    @NotNull
    public final TouchPoint get(int i) {
        return this.points.get(i);
    }

    public final float getAveragePressure() {
        if (this.points.isEmpty()) {
            return 0.0f;
        }
        double d = 0.0d;
        while (this.points.iterator().hasNext()) {
            d += ((TouchPoint) r0.next()).getPressure();
        }
        return (float) (d / this.points.size());
    }

    @NotNull
    public final RectF getBoundingRect() {
        return INSTANCE.getBoundingRect(getPoints());
    }

    @NotNull
    public final List<TouchPoint> getPoints() {
        return this.points;
    }

    @NotNull
    public final List<TouchPoint> getRenderPoints() {
        return this.points;
    }

    public final boolean isEmpty() {
        List<TouchPoint> list = this.points;
        return list == null || list.isEmpty();
    }

    @NotNull
    public final Iterator<TouchPoint> iterator() {
        return this.points.iterator();
    }

    @Nullable
    public final TouchPoint last() {
        Object lastOrNull;
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) this.points);
        return (TouchPoint) lastOrNull;
    }

    public final void removeAll(@NotNull List<TouchPoint> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.points.removeAll(list);
    }

    public final void rotateAllPoints(float rotateAngle, @NotNull PointF originPoint) {
        Intrinsics.checkNotNullParameter(originPoint, "originPoint");
        Matrix matrix = new Matrix();
        matrix.setRotate(rotateAngle, originPoint.x, originPoint.y);
        for (TouchPoint touchPoint : this.points) {
            float[] fArr = {touchPoint.getX(), touchPoint.getY()};
            matrix.mapPoints(fArr);
            touchPoint.setX(fArr[0]);
            touchPoint.setY(fArr[1]);
        }
    }

    public final void scaleAllPoints(float scaleValue) {
        for (TouchPoint touchPoint : this.points) {
            touchPoint.setX(touchPoint.getX() * scaleValue);
            touchPoint.setY(touchPoint.getY() * scaleValue);
        }
    }

    @NotNull
    public final TouchPointList setPoints(@Nullable List<TouchPoint> list) {
        if (list != null) {
            this.points = list;
        }
        return this;
    }

    public final int size() {
        return this.points.size();
    }

    @NotNull
    public final List<TinyPoint> toTinyPointList(float maxPressure) {
        ArrayList arrayList = new ArrayList();
        if (this.points.isEmpty()) {
            return arrayList;
        }
        long timestamp = this.points.get(0).getTimestamp();
        Iterator<TouchPoint> it2 = this.points.iterator();
        while (it2.hasNext()) {
            arrayList.add(TouchPoint.INSTANCE.toTinyPoint(it2.next(), timestamp, maxPressure));
        }
        return arrayList;
    }

    public final void translateAllPoints(float dx, float dy) {
        for (TouchPoint touchPoint : this.points) {
            touchPoint.setX(touchPoint.getX() + dx);
            touchPoint.setY(touchPoint.getY() + dy);
        }
    }

    public final void add(int index, @NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.points.add(index, touchPoint);
    }

    public final void addAll(int index, @NotNull List<TouchPoint> pointList) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        this.points.addAll(index, pointList);
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public TouchPointList m72175clone() {
        TouchPointList touchPointList = new TouchPointList();
        if (this.points.isEmpty()) {
            return touchPointList;
        }
        for (TouchPoint touchPoint : this.points) {
            if (touchPoint != null) {
                touchPointList.add(touchPoint.m72173clone());
            }
        }
        return touchPointList;
    }

    public TouchPointList(int i) {
        this.points = new ArrayList(i);
    }

    @NotNull
    public final TouchPointList addAll(@NotNull List<TinyPoint> pointList, float maxPressure) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        if (pointList.isEmpty()) {
            return this;
        }
        Iterator<TinyPoint> it2 = pointList.iterator();
        while (it2.hasNext()) {
            this.points.add(TouchPoint.INSTANCE.fromTinyPoint(it2.next(), maxPressure));
        }
        return this;
    }

    public final void scaleAllPoints(float sx, float sy) {
        for (TouchPoint touchPoint : this.points) {
            touchPoint.setX(touchPoint.getX() * Math.abs(sx));
            touchPoint.setY(touchPoint.getY() * Math.abs(sy));
        }
    }

    public TouchPointList(@NotNull TouchPointList other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.points = new ArrayList();
        addAll(other);
    }

    public TouchPointList(@Nullable List<TouchPoint> list) {
        this.points = new ArrayList();
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                this.points.add((TouchPoint) it2.next());
            }
        }
    }
}
