package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;", "", "()V", "dx", "", "getDx", "()F", "setDx", "(F)V", "dy", "getDy", "setDy", "isStickyState", "", Constants.BOOLEAN_VALUE_SIG, "setStickyState", "(Z)V", "Companion", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ShapeGuideLineConsumeResult {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private float dx;
    private float dy;
    private boolean isStickyState;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;", "", "()V", "createNonStickyResult", "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;", "touchPoint", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lastPoint", "sdk-geometry_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ShapeGuideLineConsumeResult createNonStickyResult(@NotNull TouchPoint touchPoint, @NotNull TouchPoint lastPoint) {
            Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
            Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
            ShapeGuideLineConsumeResult shapeGuideLineConsumeResult = new ShapeGuideLineConsumeResult();
            float[] offsetTo = GeometryUtils.INSTANCE.getOffsetTo(lastPoint, touchPoint);
            shapeGuideLineConsumeResult.setDx(offsetTo[0]);
            shapeGuideLineConsumeResult.setDy(offsetTo[1]);
            shapeGuideLineConsumeResult.setStickyState(false);
            return shapeGuideLineConsumeResult;
        }

        private Companion() {
        }
    }

    public final float getDx() {
        return this.dx;
    }

    public final float getDy() {
        return this.dy;
    }

    /* renamed from: isStickyState, reason: from getter */
    public final boolean getIsStickyState() {
        return this.isStickyState;
    }

    public final void setDx(float f) {
        this.dx = f;
    }

    public final void setDy(float f) {
        this.dy = f;
    }

    public final void setStickyState(boolean z) {
        this.isStickyState = z;
    }
}
