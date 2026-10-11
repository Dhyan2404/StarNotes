package com.onyx.android.sdk.base.data;

import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\tHÆ\u0003J\t\u0010$\u001a\u00020\tHÆ\u0003JO\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\tHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020+HÖ\u0001R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/WindowLocation;", "", "x", "", "y", "dx", "dy", NotificationCompat.WearableExtender.f5060z, "dstDockPoint", "Lcom/onyx/android/sdk/base/data/DockPoint;", "srcDockPoint", "(IIIIILcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;)V", "getDstDockPoint", "()Lcom/onyx/android/sdk/base/data/DockPoint;", "setDstDockPoint", "(Lcom/onyx/android/sdk/base/data/DockPoint;)V", "getDx", "()I", "setDx", "(I)V", "getDy", "setDy", "getGravity", "setGravity", "getSrcDockPoint", "setSrcDockPoint", "getX", "setX", "getY", "setY", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class WindowLocation {

    @NotNull
    private DockPoint dstDockPoint;
    private int dx;
    private int dy;
    private int gravity;

    @NotNull
    private DockPoint srcDockPoint;
    private int x;
    private int y;

    public WindowLocation() {
        this(0, 0, 0, 0, 0, null, null, 127, null);
    }

    public static /* synthetic */ WindowLocation copy$default(WindowLocation windowLocation, int i, int i2, int i3, int i4, int i5, DockPoint dockPoint, DockPoint dockPoint2, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i = windowLocation.x;
        }
        if ((i6 & 2) != 0) {
            i2 = windowLocation.y;
        }
        int i7 = i2;
        if ((i6 & 4) != 0) {
            i3 = windowLocation.dx;
        }
        int i8 = i3;
        if ((i6 & 8) != 0) {
            i4 = windowLocation.dy;
        }
        int i9 = i4;
        if ((i6 & 16) != 0) {
            i5 = windowLocation.gravity;
        }
        int i10 = i5;
        if ((i6 & 32) != 0) {
            dockPoint = windowLocation.dstDockPoint;
        }
        DockPoint dockPoint3 = dockPoint;
        if ((i6 & 64) != 0) {
            dockPoint2 = windowLocation.srcDockPoint;
        }
        return windowLocation.copy(i, i7, i8, i9, i10, dockPoint3, dockPoint2);
    }

    /* renamed from: component1, reason: from getter */
    public final int getX() {
        return this.x;
    }

    /* renamed from: component2, reason: from getter */
    public final int getY() {
        return this.y;
    }

    /* renamed from: component3, reason: from getter */
    public final int getDx() {
        return this.dx;
    }

    /* renamed from: component4, reason: from getter */
    public final int getDy() {
        return this.dy;
    }

    /* renamed from: component5, reason: from getter */
    public final int getGravity() {
        return this.gravity;
    }

    @NotNull
    /* renamed from: component6, reason: from getter */
    public final DockPoint getDstDockPoint() {
        return this.dstDockPoint;
    }

    @NotNull
    /* renamed from: component7, reason: from getter */
    public final DockPoint getSrcDockPoint() {
        return this.srcDockPoint;
    }

    @NotNull
    public final WindowLocation copy(int x, int y, int dx, int dy, int gravity, @NotNull DockPoint dstDockPoint, @NotNull DockPoint srcDockPoint) {
        Intrinsics.checkNotNullParameter(dstDockPoint, "dstDockPoint");
        Intrinsics.checkNotNullParameter(srcDockPoint, "srcDockPoint");
        return new WindowLocation(x, y, dx, dy, gravity, dstDockPoint, srcDockPoint);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WindowLocation)) {
            return false;
        }
        WindowLocation windowLocation = (WindowLocation) other;
        return this.x == windowLocation.x && this.y == windowLocation.y && this.dx == windowLocation.dx && this.dy == windowLocation.dy && this.gravity == windowLocation.gravity && this.dstDockPoint == windowLocation.dstDockPoint && this.srcDockPoint == windowLocation.srcDockPoint;
    }

    @NotNull
    public final DockPoint getDstDockPoint() {
        return this.dstDockPoint;
    }

    public final int getDx() {
        return this.dx;
    }

    public final int getDy() {
        return this.dy;
    }

    public final int getGravity() {
        return this.gravity;
    }

    @NotNull
    public final DockPoint getSrcDockPoint() {
        return this.srcDockPoint;
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    public int hashCode() {
        return (((((((((((Integer.hashCode(this.x) * 31) + Integer.hashCode(this.y)) * 31) + Integer.hashCode(this.dx)) * 31) + Integer.hashCode(this.dy)) * 31) + Integer.hashCode(this.gravity)) * 31) + this.dstDockPoint.hashCode()) * 31) + this.srcDockPoint.hashCode();
    }

    public final void setDstDockPoint(@NotNull DockPoint dockPoint) {
        Intrinsics.checkNotNullParameter(dockPoint, "<set-?>");
        this.dstDockPoint = dockPoint;
    }

    public final void setDx(int i) {
        this.dx = i;
    }

    public final void setDy(int i) {
        this.dy = i;
    }

    public final void setGravity(int i) {
        this.gravity = i;
    }

    public final void setSrcDockPoint(@NotNull DockPoint dockPoint) {
        Intrinsics.checkNotNullParameter(dockPoint, "<set-?>");
        this.srcDockPoint = dockPoint;
    }

    public final void setX(int i) {
        this.x = i;
    }

    public final void setY(int i) {
        this.y = i;
    }

    @NotNull
    public String toString() {
        return "WindowLocation(x=" + this.x + ", y=" + this.y + ", dx=" + this.dx + ", dy=" + this.dy + ", gravity=" + this.gravity + ", dstDockPoint=" + this.dstDockPoint + ", srcDockPoint=" + this.srcDockPoint + ')';
    }

    public WindowLocation(int i, int i2, int i3, int i4, int i5, @NotNull DockPoint dstDockPoint, @NotNull DockPoint srcDockPoint) {
        Intrinsics.checkNotNullParameter(dstDockPoint, "dstDockPoint");
        Intrinsics.checkNotNullParameter(srcDockPoint, "srcDockPoint");
        this.x = i;
        this.y = i2;
        this.dx = i3;
        this.dy = i4;
        this.gravity = i5;
        this.dstDockPoint = dstDockPoint;
        this.srcDockPoint = srcDockPoint;
    }

    public /* synthetic */ WindowLocation(int i, int i2, int i3, int i4, int i5, DockPoint dockPoint, DockPoint dockPoint2, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this((i6 & 1) != 0 ? 0 : i, (i6 & 2) != 0 ? 0 : i2, (i6 & 4) != 0 ? 0 : i3, (i6 & 8) != 0 ? 0 : i4, (i6 & 16) != 0 ? 0 : i5, (i6 & 32) != 0 ? DockPoint.TOP_LEFT : dockPoint, (i6 & 64) != 0 ? DockPoint.TOP_LEFT : dockPoint2);
    }
}
