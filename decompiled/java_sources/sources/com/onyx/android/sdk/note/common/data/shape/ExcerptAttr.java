package com.onyx.android.sdk.note.common.data.shape;

import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0016\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b+\u0010,J\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010#\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u0012\u001a\u0004\b!\u0010\u0014\"\u0004\b\"\u0010\u0016R\"\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006."}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;", "", "copy", "Landroid/graphics/Paint;", "createStrokePaint", "", "isDarkTheme", "createFillPaint", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;", "a", "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;", "getType", "()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;", "setType", "(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V", "type", "", "b", "I", "getStrokeColor", "()I", "setStrokeColor", "(I)V", ApiBroadCastReceiver.ARGS_STROKE_COLOR, "", "c", "F", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "d", "getFillColor", "setFillColor", CouchFieldKey.KEY_FILL_COLOR, "e", Constants.HASIDCALL_INDEX_SIG, "getShowIndicator", Constants.BOOLEAN_VALUE_SIG, "setShowIndicator", "(Z)V", "showIndicator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ExcerptAttr {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public ExcerptType type = ExcerptType.RECTANGLE;

    /* renamed from: b, reason: from kotlin metadata */
    public int strokeColor = Color.argb(255, 248, 92, 219);

    /* renamed from: c, reason: from kotlin metadata */
    public float strokeWidth = 2.0f;

    /* renamed from: d, reason: from kotlin metadata */
    public int fillColor = Color.argb(50, 248, 92, 219);

    /* renamed from: e, reason: from kotlin metadata */
    public boolean showIndicator = true;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u001a\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;", "", "()V", "createFillPaint", "Landroid/graphics/Paint;", "isDarkTheme", "", CouchFieldKey.KEY_FILL_COLOR, "", "createStrokePaint", ApiBroadCastReceiver.ARGS_STROKE_COLOR, ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Paint createFillPaint$default(Companion companion, boolean z, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = Color.argb(50, 248, 92, 219);
            }
            return companion.createFillPaint(z, i);
        }

        public static /* synthetic */ Paint createStrokePaint$default(Companion companion, int i, float f, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = Color.argb(255, 248, 92, 219);
            }
            if ((i2 & 2) != 0) {
                f = 2.0f;
            }
            return companion.createStrokePaint(i, f);
        }

        @NotNull
        public final Paint createFillPaint(boolean isDarkTheme, int fillColor) {
            Paint paint = new Paint();
            paint.setColor(fillColor);
            paint.setStyle(Paint.Style.FILL);
            if (!isDarkTheme) {
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DARKEN));
            }
            return paint;
        }

        @NotNull
        public final Paint createStrokePaint(int strokeColor, float strokeWidth) {
            Paint paint = new Paint();
            paint.setColor(strokeColor);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(strokeWidth);
            paint.setAntiAlias(true);
            paint.setDither(true);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStrokeMiter(4.0f);
            paint.setPathEffect(new DashPathEffect(new float[]{8.0f, 8.0f}, 0.0f));
            return paint;
        }

        public Companion() {
        }
    }

    @NotNull
    public final ExcerptAttr copy() {
        ExcerptAttr excerptAttr = new ExcerptAttr();
        excerptAttr.type = this.type;
        excerptAttr.strokeColor = this.strokeColor;
        excerptAttr.strokeWidth = this.strokeWidth;
        excerptAttr.fillColor = this.fillColor;
        return excerptAttr;
    }

    @NotNull
    public final Paint createFillPaint(boolean isDarkTheme) {
        return INSTANCE.createFillPaint(isDarkTheme, this.fillColor);
    }

    @NotNull
    public final Paint createStrokePaint() {
        return INSTANCE.createStrokePaint(this.strokeColor, this.strokeWidth);
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final boolean getShowIndicator() {
        return this.showIndicator;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    @NotNull
    public final ExcerptType getType() {
        return this.type;
    }

    public final void setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setShowIndicator(boolean z) {
        this.showIndicator = z;
    }

    public final void setStrokeColor(int i) {
        this.strokeColor = i;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    public final void setType(@NotNull ExcerptType excerptType) {
        Intrinsics.checkNotNullParameter(excerptType, "<set-?>");
        this.type = excerptType;
    }
}
