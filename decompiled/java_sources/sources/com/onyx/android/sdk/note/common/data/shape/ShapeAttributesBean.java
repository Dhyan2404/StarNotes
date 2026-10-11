package com.onyx.android.sdk.note.common.data.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.extension.PhysiceExtKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b3\u0018\u0000 I2\u00020\u0001:\u0001IB\u0007¢\u0006\u0004\bG\u0010HJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0000J\b\u0010\u000f\u001a\u00020\u0000H\u0016R\"\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R*\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\"\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010)\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0011\u001a\u0004\b'\u0010\u0013\"\u0004\b(\u0010\u0015R\"\u0010+\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010!\u001a\u0004\b+\u0010#\"\u0004\b,\u0010%R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0011\u001a\u0004\b.\u0010\u0013\"\u0004\b\u0007\u0010\u0015R\"\u00100\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010!\u001a\u0004\b0\u0010#\"\u0004\b1\u0010%R\"\u00104\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010\u0011\u001a\u0004\b3\u0010\u0013\"\u0004\b\b\u0010\u0015R\"\u00106\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010!\u001a\u0004\b6\u0010#\"\u0004\b7\u0010%R\"\u00109\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010!\u001a\u0004\b9\u0010#\"\u0004\b\u000b\u0010%R\"\u0010;\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010!\u001a\u0004\b;\u0010#\"\u0004\b<\u0010%R$\u0010B\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\b\u0004\u0010AR\"\u0010D\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010!\u001a\u0004\bD\u0010#\"\u0004\bE\u0010%R\u0011\u0010F\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\bF\u0010#¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "", "", "text", "setRichText", "", "color", "setColor", "setFillColor", "", "enabled", "setFillColorEnabled", "style", "setStrokeStyle", "resetChanged", "clone", "e", "I", "getShapeType", "()I", "setShapeType", "(I)V", "shapeType", "", "value", C6997f.f39671c, "F", "getShapeWidth", "()F", "setShapeWidth", "(F)V", "shapeWidth", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "isWidthChanged", Constants.BOOLEAN_VALUE_SIG, "setWidthChanged", "(Z)V", C6999h.f39688c, "getLineStyleType", "setLineStyleType", "lineStyleType", "i", "isLineStyleTypeChanged", "setLineStyleTypeChanged", "j", "getColor", C4921e.f26537n, "isColorChanged", "setColorChanged", "l", "getFillColor", CouchFieldKey.KEY_FILL_COLOR, "m", "isFillColorChanged", "setFillColorChanged", GoogleApiAvailabilityLight.f29016b, "isFillColorEnabled", C4921e.f26528e, "isFillColorEnabledChanged", "setFillColorEnabledChanged", "p", Constants.STRING_SIG, "getRichText", "()Ljava/lang/String;", "(Ljava/lang/String;)V", "richText", "q", "isRichTextChanged", "setRichTextChanged", "isChanged", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShapeAttributesBean implements Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isWidthChanged;

    /* renamed from: h, reason: from kotlin metadata */
    public int lineStyleType;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isLineStyleTypeChanged;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isColorChanged;

    /* renamed from: l, reason: from kotlin metadata */
    public int fillColor;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isFillColorChanged;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isFillColorEnabled;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean isFillColorEnabledChanged;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public String richText;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean isRichTextChanged;

    /* renamed from: e, reason: from kotlin metadata */
    public int shapeType = -1;

    /* renamed from: f, reason: from kotlin metadata */
    public float shapeWidth = -1.0f;

    /* renamed from: j, reason: from kotlin metadata */
    public int color = -16777216;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;", "", "()V", "buildAttributes", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "shape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ShapeAttributesBean buildAttributes(@NotNull Shape shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            ShapeAttributesBean shapeAttributesBean = new ShapeAttributesBean();
            shapeAttributesBean.setLineStyleType(shape.getLineStyle());
            shapeAttributesBean.m72301setColor(shape.getStrokeColor());
            shapeAttributesBean.setShapeType(shape.getType());
            shapeAttributesBean.setShapeWidth(PhysiceExtKt.toPhysicsStrokeWidth(shape.getStrokeWidth()));
            shapeAttributesBean.m72302setFillColor(shape.getFillColor());
            shapeAttributesBean.m72303setFillColorEnabled(shape.isFillColorEnabled());
            shapeAttributesBean.m72304setRichText(shape.getRichText());
            return shapeAttributesBean;
        }

        public Companion() {
        }
    }

    public final int getColor() {
        return this.color;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final int getLineStyleType() {
        return this.lineStyleType;
    }

    @Nullable
    public final String getRichText() {
        return this.richText;
    }

    public final int getShapeType() {
        return this.shapeType;
    }

    public final float getShapeWidth() {
        return this.shapeWidth;
    }

    public final boolean isChanged() {
        return this.isColorChanged || this.isWidthChanged || this.isLineStyleTypeChanged || this.isFillColorChanged || this.isFillColorEnabledChanged || this.isRichTextChanged;
    }

    /* renamed from: isColorChanged, reason: from getter */
    public final boolean getIsColorChanged() {
        return this.isColorChanged;
    }

    /* renamed from: isFillColorChanged, reason: from getter */
    public final boolean getIsFillColorChanged() {
        return this.isFillColorChanged;
    }

    /* renamed from: isFillColorEnabled, reason: from getter */
    public final boolean getIsFillColorEnabled() {
        return this.isFillColorEnabled;
    }

    /* renamed from: isFillColorEnabledChanged, reason: from getter */
    public final boolean getIsFillColorEnabledChanged() {
        return this.isFillColorEnabledChanged;
    }

    /* renamed from: isLineStyleTypeChanged, reason: from getter */
    public final boolean getIsLineStyleTypeChanged() {
        return this.isLineStyleTypeChanged;
    }

    /* renamed from: isRichTextChanged, reason: from getter */
    public final boolean getIsRichTextChanged() {
        return this.isRichTextChanged;
    }

    /* renamed from: isWidthChanged, reason: from getter */
    public final boolean getIsWidthChanged() {
        return this.isWidthChanged;
    }

    @NotNull
    public final ShapeAttributesBean resetChanged() {
        this.isColorChanged = false;
        this.isWidthChanged = false;
        this.isRichTextChanged = false;
        this.isFillColorEnabledChanged = false;
        this.isFillColorChanged = false;
        this.isLineStyleTypeChanged = false;
        return this;
    }

    /* renamed from: setColor, reason: collision with other method in class */
    public final void m72301setColor(int i) {
        this.color = i;
    }

    public final void setColorChanged(boolean z) {
        this.isColorChanged = z;
    }

    /* renamed from: setFillColor, reason: collision with other method in class */
    public final void m72302setFillColor(int i) {
        this.fillColor = i;
    }

    public final void setFillColorChanged(boolean z) {
        this.isFillColorChanged = z;
    }

    /* renamed from: setFillColorEnabled, reason: collision with other method in class */
    public final void m72303setFillColorEnabled(boolean z) {
        this.isFillColorEnabled = z;
    }

    public final void setFillColorEnabledChanged(boolean z) {
        this.isFillColorEnabledChanged = z;
    }

    public final void setLineStyleType(int i) {
        this.lineStyleType = i;
    }

    public final void setLineStyleTypeChanged(boolean z) {
        this.isLineStyleTypeChanged = z;
    }

    /* renamed from: setRichText, reason: collision with other method in class */
    public final void m72304setRichText(@Nullable String str) {
        this.richText = str;
    }

    public final void setRichTextChanged(boolean z) {
        this.isRichTextChanged = z;
    }

    public final void setShapeType(int i) {
        this.shapeType = i;
    }

    public final void setShapeWidth(float f) {
        this.isWidthChanged = Float.compare(this.shapeWidth, f) != 0;
        this.shapeWidth = f;
    }

    @NotNull
    public final ShapeAttributesBean setStrokeStyle(int style) {
        this.isLineStyleTypeChanged = this.lineStyleType != style;
        this.lineStyleType = style;
        return this;
    }

    public final void setWidthChanged(boolean z) {
        this.isWidthChanged = z;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeAttributesBean m72300clone() {
        try {
            Object clone = super.clone();
            Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean");
            return (ShapeAttributesBean) clone;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @NotNull
    public final ShapeAttributesBean setColor(int color) {
        this.isColorChanged = this.color != color;
        this.color = color;
        return this;
    }

    @NotNull
    public final ShapeAttributesBean setFillColor(int color) {
        this.isFillColorChanged = this.fillColor != color;
        this.fillColor = color;
        return this;
    }

    @NotNull
    public final ShapeAttributesBean setFillColorEnabled(boolean enabled) {
        this.isFillColorEnabledChanged = enabled != this.isFillColorEnabled;
        this.isFillColorEnabled = enabled;
        return this;
    }

    @NotNull
    public final ShapeAttributesBean setRichText(@Nullable String text) {
        this.isRichTextChanged = !Intrinsics.areEqual(this.richText, text);
        this.richText = text;
        return this;
    }
}
