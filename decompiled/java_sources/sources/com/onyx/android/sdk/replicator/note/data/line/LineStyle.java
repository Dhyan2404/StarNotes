package com.onyx.android.sdk.replicator.note.data.line;

import android.graphics.Paint;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u0000 $2\u00020\u00012\u00020\u0002:\u0001$B\u0005¢\u0006\u0002\u0010\u0003J \u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000bH\u0016J\b\u0010\u001c\u001a\u00020\u0000H\u0014J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0013\u0010\u001f\u001a\u00020\u001e2\b\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\u0018\u0010\"\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000bJ\b\u0010#\u001a\u00020\u0011H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;", "Ljava/io/Serializable;", "", "()V", "dashLineIntervals", "", "getDashLineIntervals", "()[F", "setDashLineIntervals", "([F)V", TypedValues.CycleType.S_WAVE_PHASE, "", "getPhase", "()F", "setPhase", "(F)V", "type", "", "getType", "()I", "setType", "(I)V", "applyStyle", "", "paint", "Landroid/graphics/Paint;", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "scale", "clone", "ensureIntervalsValid", "", "equals", Constants.ATTRVAL_OTHER, "", "getIntervalsWithScale", "hashCode", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class LineStyle implements Serializable, Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private float[] dashLineIntervals;
    private float phase;
    private int type;

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000e¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle$Companion;", "", "()V", "applyStyle", "", "lineStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;", "paint", "Landroid/graphics/Paint;", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "scale", "parse", "jsonString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void applyStyle(@Nullable LineStyle lineStyle, @NotNull Paint paint, float strokeWidth, float scale) {
            Intrinsics.checkNotNullParameter(paint, "paint");
            if (lineStyle == null) {
                return;
            }
            int type = lineStyle.getType();
            if (type == 0) {
                StraightLineStyle.INSTANCE.getINSTANCE().applyStyle(paint, strokeWidth, scale);
            } else if (type != 1) {
                DashLineStyle.INSTANCE.applyStyle(lineStyle, paint, strokeWidth, scale);
            } else {
                DashLineStyle.INSTANCE.applyStyle(lineStyle, paint, strokeWidth, scale);
            }
        }

        @Nullable
        public final LineStyle parse(@Nullable String jsonString) {
            if (StringUtils.isEmpty(jsonString)) {
                return null;
            }
            JSONUtils jSONUtils = JSONUtils.INSTANCE;
            LineStyle lineStyle = (LineStyle) jSONUtils.parseObject(jsonString, LineStyle.class);
            if (lineStyle == null) {
                return null;
            }
            int type = lineStyle.getType();
            return type != 0 ? type != 1 ? lineStyle : (LineStyle) jSONUtils.parseObject(jsonString, DashLineStyle.class) : (LineStyle) jSONUtils.parseObject(jsonString, StraightLineStyle.class);
        }

        private Companion() {
        }
    }

    public void applyStyle(@NotNull Paint paint, float strokeWidth, float scale) {
        Intrinsics.checkNotNullParameter(paint, "paint");
    }

    public final boolean ensureIntervalsValid() {
        float[] copyOfRange;
        float[] fArr = this.dashLineIntervals;
        if (fArr != null) {
            Intrinsics.checkNotNull(fArr);
            if (fArr.length >= 2) {
                float[] fArr2 = this.dashLineIntervals;
                Intrinsics.checkNotNull(fArr2);
                if (fArr2.length % 2 != 0) {
                    float[] fArr3 = this.dashLineIntervals;
                    Intrinsics.checkNotNull(fArr3);
                    float[] fArr4 = this.dashLineIntervals;
                    Intrinsics.checkNotNull(fArr4);
                    copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(fArr3, 0, fArr4.length - 1);
                    this.dashLineIntervals = copyOfRange;
                }
                return true;
            }
        }
        return false;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other == null) {
            return false;
        }
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        return StringUtils.equals(jSONUtils.toJson(this), jSONUtils.toJson(other));
    }

    @Nullable
    public final float[] getDashLineIntervals() {
        return this.dashLineIntervals;
    }

    @Nullable
    public final float[] getIntervalsWithScale(float strokeWidth, float scale) {
        float[] fArr = this.dashLineIntervals;
        Intrinsics.checkNotNull(fArr);
        float[] fArr2 = this.dashLineIntervals;
        Intrinsics.checkNotNull(fArr2);
        float[] copyOf = Arrays.copyOf(fArr, fArr2.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        int length = copyOf.length;
        for (int i = 0; i < length; i++) {
            float f = copyOf[i] + strokeWidth;
            copyOf[i] = f;
            copyOf[i] = f * scale;
        }
        return copyOf;
    }

    public final float getPhase() {
        return this.phase;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return Objects.hash(JSONUtils.INSTANCE.toJson(this));
    }

    public final void setDashLineIntervals(@Nullable float[] fArr) {
        this.dashLineIntervals = fArr;
    }

    public final void setPhase(float f) {
        this.phase = f;
    }

    public final void setType(int i) {
        this.type = i;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LineStyle m72354clone() {
        LineStyle parse = INSTANCE.parse(JSONUtils.INSTANCE.toJson(this));
        Intrinsics.checkNotNull(parse);
        return parse;
    }
}
