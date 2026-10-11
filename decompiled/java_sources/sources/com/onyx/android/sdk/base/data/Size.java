package com.onyx.android.sdk.base.data;

import android.graphics.Rect;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u0000 &2\u00020\u0001:\u0001&B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003J\u0014\u0010\u0017\u001a\u00020\u00002\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00000\u0019J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\u0006\u0010\u001b\u001a\u00020\u0013J\u0006\u0010\u001c\u001a\u00020\u0013J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0000J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020 J\b\u0010%\u001a\u00020\u001eH\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/Size;", "", "width", "", "height", "(II)V", "getHeight", "()I", "setHeight", "(I)V", "getWidth", "setWidth", "centerX", "", "centerY", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "w", C6999h.f39688c, "getOrElse", "defaultValue", "Lkotlin/Function0;", "hashCode", "isEmpty", "isVertical", "key", "", "ratioPageSize", "Landroid/graphics/RectF;", "maxPageSize", "toRect", "Landroid/graphics/Rect;", "toRectF", "toString", "Companion", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class Size {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;

    @NotNull
    private static final Size empty;
    private int height;
    private int width;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00060\u0004j\u0002`\b*\u00020\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/Size$Companion;", "", "()V", Constants.ELEMNAME_EMPTY_STRING, "Lcom/onyx/android/sdk/base/data/Size;", "getEmpty", "()Lcom/onyx/android/sdk/base/data/Size;", "toDataSize", "Lcom/onyx/android/sdk/base/data/DataSize;", "Landroid/util/Size;", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Size getEmpty() {
            return Size.empty;
        }

        @NotNull
        public final Size toDataSize(@NotNull android.util.Size size) {
            Intrinsics.checkNotNullParameter(size, "<this>");
            return new Size(size.getWidth(), size.getHeight());
        }

        private Companion() {
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        INSTANCE = new Companion(defaultConstructorMarker);
        int i = 0;
        empty = new Size(i, i, 3, defaultConstructorMarker);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Size() {
        /*
            r3 = this;
            r0 = 3
            r1 = 0
            r2 = 0
            r3.<init>(r2, r2, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.data.Size.<init>():void");
    }

    public static /* synthetic */ Size copy$default(Size size, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = size.width;
        }
        if ((i3 & 2) != 0) {
            i2 = size.height;
        }
        return size.copy(i, i2);
    }

    public final float centerX() {
        return this.width / 2.0f;
    }

    public final float centerY() {
        return this.height / 2.0f;
    }

    /* renamed from: component1, reason: from getter */
    public final int getWidth() {
        return this.width;
    }

    /* renamed from: component2, reason: from getter */
    public final int getHeight() {
        return this.height;
    }

    @NotNull
    public final Size copy(int width, int height) {
        return new Size(width, height);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Size)) {
            return false;
        }
        Size size = (Size) other;
        return this.width == size.width && this.height == size.height;
    }

    public final int getHeight() {
        return this.height;
    }

    @NotNull
    public final Size getOrElse(@NotNull Function0<Size> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return isEmpty() ? defaultValue.invoke() : this;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (Integer.hashCode(this.width) * 31) + Integer.hashCode(this.height);
    }

    public final boolean isEmpty() {
        return this.width <= 0 || this.height <= 0;
    }

    public final boolean isVertical() {
        return this.height > this.width;
    }

    @NotNull
    public final String key() {
        return "w=" + this.width + "-h=" + this.height;
    }

    @NotNull
    public final RectF ratioPageSize(@NotNull Size maxPageSize) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(maxPageSize, "maxPageSize");
        if (Math.max(maxPageSize.width, maxPageSize.height) > Math.max(this.width, this.height)) {
            return new RectF(0.0f, 0.0f, this.width, this.height);
        }
        if (isVertical()) {
            i = maxPageSize.width;
            i2 = maxPageSize.height;
        } else {
            i = maxPageSize.height;
            i2 = maxPageSize.width;
        }
        float max = Math.max(this.width / i, this.height / i2);
        return new RectF(0.0f, 0.0f, this.width / max, this.height / max);
    }

    /* renamed from: setHeight, reason: collision with other method in class */
    public final void m72171setHeight(int i) {
        this.height = i;
    }

    /* renamed from: setWidth, reason: collision with other method in class */
    public final void m72172setWidth(int i) {
        this.width = i;
    }

    @NotNull
    public final Rect toRect() {
        return new Rect(0, 0, this.width, this.height);
    }

    @NotNull
    public final RectF toRectF() {
        return new RectF(0.0f, 0.0f, this.width, this.height);
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.width);
        sb.append('x');
        sb.append(this.height);
        return sb.toString();
    }

    public Size(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public final boolean equals(int w, int h) {
        return this.width == w && this.height == h;
    }

    @NotNull
    public final Size setHeight(int height) {
        this.height = height;
        return this;
    }

    @NotNull
    public final Size setWidth(int width) {
        this.width = width;
        return this;
    }

    public /* synthetic */ Size(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }
}
