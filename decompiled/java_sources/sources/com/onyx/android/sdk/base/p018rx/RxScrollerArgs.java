package com.onyx.android.sdk.base.p018rx;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u00019B\u0007¢\u0006\u0004\b7\u00108J\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0006\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR\"\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0006\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\nR\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010#\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0006\u001a\u0004\b!\u0010\b\"\u0004\b\"\u0010\nR\"\u0010'\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0006\u001a\u0004\b%\u0010\b\"\u0004\b&\u0010\nR\"\u0010+\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "", "", "getDebugString", "", "a", "F", "getStartX", "()F", "setStartX", "(F)V", "startX", "b", "getStartY", "setStartY", "startY", "c", "getVelocityX", "setVelocityX", "velocityX", "d", "getVelocityY", "setVelocityY", "velocityY", "Landroid/graphics/RectF;", "e", "Landroid/graphics/RectF;", "getLimitRect", "()Landroid/graphics/RectF;", "setLimitRect", "(Landroid/graphics/RectF;)V", "limitRect", C6997f.f39671c, "getFrictionX", "setFrictionX", "frictionX", C6998g.f39679a, "getFrictionY", "setFrictionY", "frictionY", "", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "isEnabledAbortFlingAnimation", Constants.BOOLEAN_VALUE_SIG, "setEnabledAbortFlingAnimation", "(Z)V", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;", "i", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;", "getFlingActionType", "()Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;", "setFlingActionType", "(Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;)V", "flingActionType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "FlingActionType", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RxScrollerArgs {

    /* renamed from: a, reason: from kotlin metadata */
    public float startX;

    /* renamed from: b, reason: from kotlin metadata */
    public float startY;

    /* renamed from: c, reason: from kotlin metadata */
    public float velocityX;

    /* renamed from: d, reason: from kotlin metadata */
    public float velocityY;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectF limitRect = new RectF();

    /* renamed from: f, reason: from kotlin metadata */
    public float frictionX = 0.5f;

    /* renamed from: g, reason: from kotlin metadata */
    public float frictionY = 0.5f;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isEnabledAbortFlingAnimation = true;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public FlingActionType flingActionType = FlingActionType.CONTINUOUS_SCROLL;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;", "", "(Ljava/lang/String;I)V", "CONTINUOUS_SCROLL", "CONTINUOUS_SCROLL_TO_BOTTOM", "CONTINUOUS_SCROLL_TO_TOP", "CONTINUOUS_SCROLL_TO_LEFT", "CONTINUOUS_SCROLL_TO_RIGHT", "NEXT_SCREEN", "PREV_SCREEN", "REBOUND_CURRENT_SCREEN", "CONTINUOUS_SCROLL_IN_CURRENT_SCREEN", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class FlingActionType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ FlingActionType[] $VALUES;
        public static final FlingActionType CONTINUOUS_SCROLL = new FlingActionType("CONTINUOUS_SCROLL", 0);
        public static final FlingActionType CONTINUOUS_SCROLL_TO_BOTTOM = new FlingActionType("CONTINUOUS_SCROLL_TO_BOTTOM", 1);
        public static final FlingActionType CONTINUOUS_SCROLL_TO_TOP = new FlingActionType("CONTINUOUS_SCROLL_TO_TOP", 2);
        public static final FlingActionType CONTINUOUS_SCROLL_TO_LEFT = new FlingActionType("CONTINUOUS_SCROLL_TO_LEFT", 3);
        public static final FlingActionType CONTINUOUS_SCROLL_TO_RIGHT = new FlingActionType("CONTINUOUS_SCROLL_TO_RIGHT", 4);
        public static final FlingActionType NEXT_SCREEN = new FlingActionType("NEXT_SCREEN", 5);
        public static final FlingActionType PREV_SCREEN = new FlingActionType("PREV_SCREEN", 6);
        public static final FlingActionType REBOUND_CURRENT_SCREEN = new FlingActionType("REBOUND_CURRENT_SCREEN", 7);
        public static final FlingActionType CONTINUOUS_SCROLL_IN_CURRENT_SCREEN = new FlingActionType("CONTINUOUS_SCROLL_IN_CURRENT_SCREEN", 8);

        private static final /* synthetic */ FlingActionType[] $values() {
            return new FlingActionType[]{CONTINUOUS_SCROLL, CONTINUOUS_SCROLL_TO_BOTTOM, CONTINUOUS_SCROLL_TO_TOP, CONTINUOUS_SCROLL_TO_LEFT, CONTINUOUS_SCROLL_TO_RIGHT, NEXT_SCREEN, PREV_SCREEN, REBOUND_CURRENT_SCREEN, CONTINUOUS_SCROLL_IN_CURRENT_SCREEN};
        }

        static {
            FlingActionType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private FlingActionType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<FlingActionType> getEntries() {
            return $ENTRIES;
        }

        public static FlingActionType valueOf(String str) {
            return (FlingActionType) Enum.valueOf(FlingActionType.class, str);
        }

        public static FlingActionType[] values() {
            return (FlingActionType[]) $VALUES.clone();
        }
    }

    @NotNull
    public final String getDebugString() {
        return "RxScrollerArgs(\nstartX=" + this.startX + ", startY=" + this.startY + "\n, velocityX=" + this.velocityX + ", velocityY=" + this.velocityY + "\n, limitRect=" + this.limitRect + "\n, isEnabledAbortFlingAnimation=" + this.isEnabledAbortFlingAnimation + "\n, flingActionType = " + this.flingActionType + "\n, frictionX=" + this.frictionX + ", frictionY=" + this.frictionY + ')';
    }

    @NotNull
    public final FlingActionType getFlingActionType() {
        return this.flingActionType;
    }

    public final float getFrictionX() {
        return this.frictionX;
    }

    public final float getFrictionY() {
        return this.frictionY;
    }

    @NotNull
    public final RectF getLimitRect() {
        return this.limitRect;
    }

    public final float getStartX() {
        return this.startX;
    }

    public final float getStartY() {
        return this.startY;
    }

    public final float getVelocityX() {
        return this.velocityX;
    }

    public final float getVelocityY() {
        return this.velocityY;
    }

    /* renamed from: isEnabledAbortFlingAnimation, reason: from getter */
    public final boolean getIsEnabledAbortFlingAnimation() {
        return this.isEnabledAbortFlingAnimation;
    }

    public final void setEnabledAbortFlingAnimation(boolean z) {
        this.isEnabledAbortFlingAnimation = z;
    }

    public final void setFlingActionType(@NotNull FlingActionType flingActionType) {
        Intrinsics.checkNotNullParameter(flingActionType, "<set-?>");
        this.flingActionType = flingActionType;
    }

    public final void setFrictionX(float f) {
        this.frictionX = f;
    }

    public final void setFrictionY(float f) {
        this.frictionY = f;
    }

    public final void setLimitRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.limitRect = rectF;
    }

    public final void setStartX(float f) {
        this.startX = f;
    }

    public final void setStartY(float f) {
        this.startY = f;
    }

    public final void setVelocityX(float f) {
        this.velocityX = f;
    }

    public final void setVelocityY(float f) {
        this.velocityY = f;
    }
}
