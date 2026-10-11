package com.onyx.android.sdk.base.data;

import android.graphics.RectF;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0006\u0010\u0014\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/SizeF;", "", "width", "", "height", "(FF)V", "getHeight", "()F", "setHeight", "(F)V", "getWidth", "setWidth", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "isVertical", "ratioPageSize", "Landroid/graphics/RectF;", "maxPageSize", "Lcom/onyx/android/sdk/base/data/Size;", "toString", "", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class SizeF {
    private float height;
    private float width;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SizeF() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.data.SizeF.<init>():void");
    }

    public static /* synthetic */ SizeF copy$default(SizeF sizeF, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = sizeF.width;
        }
        if ((i & 2) != 0) {
            f2 = sizeF.height;
        }
        return sizeF.copy(f, f2);
    }

    /* renamed from: component1, reason: from getter */
    public final float getWidth() {
        return this.width;
    }

    /* renamed from: component2, reason: from getter */
    public final float getHeight() {
        return this.height;
    }

    @NotNull
    public final SizeF copy(float width, float height) {
        return new SizeF(width, height);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SizeF)) {
            return false;
        }
        SizeF sizeF = (SizeF) other;
        return Float.compare(this.width, sizeF.width) == 0 && Float.compare(this.height, sizeF.height) == 0;
    }

    public final float getHeight() {
        return this.height;
    }

    public final float getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (Float.hashCode(this.width) * 31) + Float.hashCode(this.height);
    }

    public final boolean isVertical() {
        return this.height > this.width;
    }

    @NotNull
    public final RectF ratioPageSize(@NotNull Size maxPageSize) {
        int coerceAtLeast;
        float coerceAtLeast2;
        int height;
        int width;
        float coerceAtLeast3;
        Intrinsics.checkNotNullParameter(maxPageSize, "maxPageSize");
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(maxPageSize.getWidth(), maxPageSize.getHeight());
        coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(this.width, this.height);
        if (coerceAtLeast > coerceAtLeast2 || maxPageSize.isEmpty()) {
            return new RectF(0.0f, 0.0f, this.width, this.height);
        }
        if (isVertical()) {
            height = maxPageSize.getWidth();
            width = maxPageSize.getHeight();
        } else {
            height = maxPageSize.getHeight();
            width = maxPageSize.getWidth();
        }
        coerceAtLeast3 = RangesKt___RangesKt.coerceAtLeast(this.width / height, this.height / width);
        return new RectF(0.0f, 0.0f, this.width / coerceAtLeast3, this.height / coerceAtLeast3);
    }

    public final void setHeight(float f) {
        this.height = f;
    }

    public final void setWidth(float f) {
        this.width = f;
    }

    @NotNull
    public String toString() {
        return "SizeF(width=" + this.width + ", height=" + this.height + ')';
    }

    public SizeF(float f, float f2) {
        this.width = f;
        this.height = f2;
    }

    public /* synthetic */ SizeF(float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2);
    }
}
