package com.onyx.android.sdk.geometry.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/BoxFlingArgs;", "", "velocityX", "", "velocityY", "scrollBeginX", "scrollBeginY", "scrollBeginBoxId", "", "isRestoreScrollBegin", "", "(FFFFLjava/lang/String;Z)V", Constants.BOOLEAN_VALUE_SIG, "setRestoreScrollBegin", "(Z)V", "getScrollBeginBoxId", "()Ljava/lang/String;", "setScrollBeginBoxId", "(Ljava/lang/String;)V", "getScrollBeginX", "()F", "setScrollBeginX", "(F)V", "getScrollBeginY", "setScrollBeginY", "getVelocityX", "setVelocityX", "getVelocityY", "setVelocityY", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BoxFlingArgs {
    private boolean isRestoreScrollBegin;

    @NotNull
    private String scrollBeginBoxId;
    private float scrollBeginX;
    private float scrollBeginY;
    private float velocityX;
    private float velocityY;

    public BoxFlingArgs() {
        this(0.0f, 0.0f, 0.0f, 0.0f, null, false, 63, null);
    }

    @NotNull
    public final String getScrollBeginBoxId() {
        return this.scrollBeginBoxId;
    }

    public final float getScrollBeginX() {
        return this.scrollBeginX;
    }

    public final float getScrollBeginY() {
        return this.scrollBeginY;
    }

    public final float getVelocityX() {
        return this.velocityX;
    }

    public final float getVelocityY() {
        return this.velocityY;
    }

    /* renamed from: isRestoreScrollBegin, reason: from getter */
    public final boolean getIsRestoreScrollBegin() {
        return this.isRestoreScrollBegin;
    }

    public final void setRestoreScrollBegin(boolean z) {
        this.isRestoreScrollBegin = z;
    }

    public final void setScrollBeginBoxId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.scrollBeginBoxId = str;
    }

    public final void setScrollBeginX(float f) {
        this.scrollBeginX = f;
    }

    public final void setScrollBeginY(float f) {
        this.scrollBeginY = f;
    }

    public final void setVelocityX(float f) {
        this.velocityX = f;
    }

    public final void setVelocityY(float f) {
        this.velocityY = f;
    }

    public BoxFlingArgs(float f, float f2, float f3, float f4, @NotNull String scrollBeginBoxId, boolean z) {
        Intrinsics.checkNotNullParameter(scrollBeginBoxId, "scrollBeginBoxId");
        this.velocityX = f;
        this.velocityY = f2;
        this.scrollBeginX = f3;
        this.scrollBeginY = f4;
        this.scrollBeginBoxId = scrollBeginBoxId;
        this.isRestoreScrollBegin = z;
    }

    public /* synthetic */ BoxFlingArgs(float f, float f2, float f3, float f4, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? 0.0f : f3, (i & 8) != 0 ? 0.0f : f4, (i & 16) != 0 ? "" : str, (i & 32) != 0 ? false : z);
    }
}
