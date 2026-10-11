package com.onyx.android.sdk.neopdf;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0012\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B/\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0012\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfPoint;", "Ljava/io/Serializable;", "()V", ExtUnits.UNIT_PX, "", "py", "s", "p", "ts", "", "(FFFFJ)V", "pressure", "getPressure", "()F", "setPressure", "(F)V", "size", "getSize", "setSize", NotificationCompat.CarExtender.f4980p, "getTimestamp", "()J", "setTimestamp", "(J)V", "x", "y", "Companion", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PdfPoint implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private float pressure;
    private float size;
    private long timestamp;

    @JvmField
    public float x;

    @JvmField
    public float y;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0018\u0010\b\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfPoint$Companion;", "", "()V", "realPointsFromPoints", "", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/neopdf/PdfPoint;", "verticesFromPoints", "sdk-pdfdata_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final float[] realPointsFromPoints(@Nullable List<PdfPoint> points) {
            Intrinsics.checkNotNull(points);
            float[] fArr = new float[points.size() * 5];
            int size = points.size();
            for (int i = 0; i < size; i++) {
                int i2 = i * 5;
                fArr[i2] = points.get(i).x;
                fArr[i2 + 1] = points.get(i).y;
                fArr[i2 + 2] = points.get(i).getSize();
                fArr[i2 + 3] = points.get(i).getPressure();
                fArr[i2 + 4] = (float) points.get(i).getTimestamp();
            }
            return fArr;
        }

        @JvmStatic
        @NotNull
        public final float[] verticesFromPoints(@Nullable List<PdfPoint> points) {
            Intrinsics.checkNotNull(points);
            float[] fArr = new float[points.size() * 2];
            int size = points.size();
            for (int i = 0; i < size; i++) {
                int i2 = i * 2;
                fArr[i2] = points.get(i).x;
                fArr[i2 + 1] = points.get(i).y;
            }
            return fArr;
        }

        public Companion() {
        }
    }

    public PdfPoint() {
    }

    @JvmStatic
    @NotNull
    public static final float[] verticesFromPoints(@Nullable List<PdfPoint> list) {
        return INSTANCE.verticesFromPoints(list);
    }

    public final float getPressure() {
        return this.pressure;
    }

    public final float getSize() {
        return this.size;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final void setPressure(float f) {
        this.pressure = f;
    }

    public final void setSize(float f) {
        this.size = f;
    }

    public final void setTimestamp(long j) {
        this.timestamp = j;
    }

    public PdfPoint(float f, float f2, float f3, float f4, long j) {
        this.x = f;
        this.y = f2;
        this.size = f3;
        this.pressure = f4;
        this.timestamp = j;
    }
}
