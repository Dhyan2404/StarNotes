package com.onyx.android.sdk.pen;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\f\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000e¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoRenderPoint;", "Ljava/io/Serializable;", "()V", "bitmapIndex", "", "getBitmapIndex", "()I", "setBitmapIndex", "(I)V", "size", "", "getSize", "()F", "setSize", "(F)V", "x", "getX", "setX", "y", "getY", "setY", "Companion", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NeoRenderPoint implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private int bitmapIndex;
    private float size;
    private float x;
    private float y;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/NeoRenderPoint$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/pen/NeoRenderPoint;", "p", "x", "", "y", "size", "bitmapIndex", "", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final NeoRenderPoint create(float x, float y, float size, int bitmapIndex) {
            NeoRenderPoint neoRenderPoint = new NeoRenderPoint();
            neoRenderPoint.setX(x);
            neoRenderPoint.setY(y);
            neoRenderPoint.setSize(size);
            neoRenderPoint.setBitmapIndex(bitmapIndex);
            return neoRenderPoint;
        }

        public Companion() {
        }

        @JvmStatic
        @NotNull
        public final NeoRenderPoint create(@NotNull NeoRenderPoint p) {
            Intrinsics.checkNotNullParameter(p, "p");
            return create(p.getX(), p.getY(), p.getSize(), p.getBitmapIndex());
        }
    }

    @JvmStatic
    @NotNull
    public static final NeoRenderPoint create(float f, float f2, float f3, int i) {
        return INSTANCE.create(f, f2, f3, i);
    }

    public final int getBitmapIndex() {
        return this.bitmapIndex;
    }

    public final float getSize() {
        return this.size;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }

    public final void setBitmapIndex(int i) {
        this.bitmapIndex = i;
    }

    public final void setSize(float f) {
        this.size = f;
    }

    public final void setX(float f) {
        this.x = f;
    }

    public final void setY(float f) {
        this.y = f;
    }

    @JvmStatic
    @NotNull
    public static final NeoRenderPoint create(@NotNull NeoRenderPoint neoRenderPoint) {
        return INSTANCE.create(neoRenderPoint);
    }
}
