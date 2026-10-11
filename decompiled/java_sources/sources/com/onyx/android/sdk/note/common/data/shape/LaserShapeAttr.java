package com.onyx.android.sdk.note.common.data.shape;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u0000 02\u00020\u0001:\u00010B\u0007¢\u0006\u0004\b.\u0010/J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR\"\u0010%\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0018\u001a\u0004\b#\u0010\u001a\"\u0004\b$\u0010\u001cR\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;", "", "", "isDotType", "", "getLaserShapeName", "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;", "a", "Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;", "getType", "()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;", "setType", "(Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;)V", "type", "", "b", "I", "getColor", "()I", "setColor", "(I)V", "color", "", "c", "F", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "d", "getRadius", "setRadius", "radius", "e", "getShadowRadius", "setShadowRadius", "shadowRadius", "", C6997f.f39671c, "J", "getDuration", "()J", "setDuration", "(J)V", "duration", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LaserShapeAttr {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String LASER_SHAPE_DOT_NAME = " point_laser_pen";

    @NotNull
    public static final String LASER_SHAPE_LINE_NAME = " line_laser_pen";
    public static final long MAX_DURATION_SECOND = 15;
    public static final float MAX_PROGRESS = 100.0f;
    public static final int MAX_VALUE = 20;
    public static final long MID_DURATION_SECOND = 5;
    public static final float MID_PROGRESS = 50.0f;
    public static final long MIN_DURATION_SECOND = 2;
    public static final float MIN_PROGRESS = 0.0f;
    public static final int MIN_VALUE = 5;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public LaserShapeType type = LaserShapeType.LINE;

    /* renamed from: b, reason: from kotlin metadata */
    public int color = -65536;

    /* renamed from: c, reason: from kotlin metadata */
    public float strokeWidth = 2.0f;

    /* renamed from: d, reason: from kotlin metadata */
    public float radius = 15.0f;

    /* renamed from: e, reason: from kotlin metadata */
    public float shadowRadius = 10.0f;

    /* renamed from: f, reason: from kotlin metadata */
    public long duration = 2000;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr$Companion;", "", "()V", "LASER_SHAPE_DOT_NAME", "", "LASER_SHAPE_LINE_NAME", "MAX_DURATION_SECOND", "", "MAX_PROGRESS", "", "MAX_VALUE", "", "MID_DURATION_SECOND", "MID_PROGRESS", "MIN_DURATION_SECOND", "MIN_PROGRESS", "MIN_VALUE", "getProgressByDuration", "duration", "getSecondByProgress", "progress", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float getProgressByDuration(long duration) {
            long j = duration / 1000;
            if (j <= 2) {
                return 0.0f;
            }
            return j < 15 ? 50.0f : 100.0f;
        }

        public final long getSecondByProgress(float progress) {
            if (progress <= 0.0f) {
                return 2L;
            }
            return (progress <= 0.0f || progress >= 100.0f) ? 15L : 5L;
        }

        public Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LaserShapeType.values().length];
            try {
                iArr[LaserShapeType.LINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LaserShapeType.DOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final int getColor() {
        return this.color;
    }

    public final long getDuration() {
        return this.duration;
    }

    @NotNull
    public final String getLaserShapeName() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            return LASER_SHAPE_LINE_NAME;
        }
        if (i == 2) {
            return LASER_SHAPE_DOT_NAME;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final float getRadius() {
        return this.radius;
    }

    public final float getShadowRadius() {
        return this.shadowRadius;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    @NotNull
    public final LaserShapeType getType() {
        return this.type;
    }

    public final boolean isDotType() {
        return LaserShapeType.DOT == this.type;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setDuration(long j) {
        this.duration = j;
    }

    public final void setRadius(float f) {
        this.radius = f;
    }

    public final void setShadowRadius(float f) {
        this.shadowRadius = f;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    public final void setType(@NotNull LaserShapeType laserShapeType) {
        Intrinsics.checkNotNullParameter(laserShapeType, "<set-?>");
        this.type = laserShapeType;
    }
}
