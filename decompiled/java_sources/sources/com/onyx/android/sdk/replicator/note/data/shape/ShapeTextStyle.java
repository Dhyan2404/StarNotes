package com.onyx.android.sdk.replicator.note.data.shape;

import android.text.Layout;
import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b*\u0018\u0000 H2\u00020\u0001:\u0001HB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0004J\b\u0010\u001b\u001a\u00020\u0000H\u0016J\u0006\u0010\u001c\u001a\u00020\u0019J\u0006\u0010\u001d\u001a\u00020\u0004J\b\u0010\u001e\u001a\u00020\u001fH\u0007J\b\u0010 \u001a\u0004\u0018\u00010\u0006J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\rJ\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010&\u001a\u00020\rJ\u0006\u0010'\u001a\u00020\rJ\b\u0010(\u001a\u00020\rH\u0007J\u0006\u0010)\u001a\u00020\rJ\u0006\u0010*\u001a\u00020\rJ\u0006\u0010+\u001a\u00020\bJ\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010,\u001a\u00020\bJ\u0006\u0010-\u001a\u00020\bJ\u0006\u0010.\u001a\u00020\bJ\b\u0010/\u001a\u00020\bH\u0007J\u0006\u00100\u001a\u00020\bJ\u0006\u00101\u001a\u00020\bJ\u0006\u00102\u001a\u00020\bJ\u000e\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0004J\u0010\u00105\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u00106\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J\u000e\u00107\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0004J\u000e\u00108\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u00109\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010:\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\bJ\u000e\u0010;\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\bJ\u000e\u0010?\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\rJ\u000e\u0010@\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\bJ\u000e\u0010A\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\rJ\u0010\u0010B\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\rH\u0007J\u000e\u0010D\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\rJ\u000e\u0010E\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\bJ\u000e\u0010F\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\bJ\u000e\u0010G\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006I"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "", "()V", "alignType", "", "fontFace", "", "isTextConverted", "", "orientation", "paddingEnd", "paddingStart", "pointScale", "", "textBold", "textConvertType", "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", "textHeight", "textItalic", "textSize", "textSpacing", "textTraditional", "textUnderline", "textWidth", "appendTextWidth", "", RequestParameters.SUBRESOURCE_APPEND, "clone", "ensureTextWidth", "getAlignType", "getAlignment", "Landroid/text/Layout$Alignment;", "getFontFace", "getOrientation", "getPaddingEnd", "getPaddingStart", "getPointScale", "getTextConvertType", "getTextHeight", "getTextSize", "getTextSizeInPt", "getTextSpacing", "getTextWidth", "isTextBold", "isTextItalic", "isTextOriginConverted", "isTextSimplifiedConverted", "isTextTraditional", "isTextTraditionalConverted", "isTextUnderline", "isVertical", "setAlignType", "type", "setFontFace", "setOrientation", "setPaddingEnd", "setPaddingStart", "setPointScale", "setTextBold", "setTextConvertType", "convertType", "setTextConverted", "textConverted", "setTextHeight", "setTextItalic", "setTextSize", "setTextSizeInPt", ExtUnits.UNIT_PT, "setTextSpacing", "setTextTraditional", "setTextUnderline", "setTextWidth", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeTextStyle implements Cloneable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final float DEFAULT_TEXT_SPACING = 1.2f;
    public static final int DEFAULT_TEXT_WIDTH = 300;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    private int alignType;

    @Nullable
    private String fontFace;
    private boolean isTextConverted;
    private int orientation;
    private int paddingEnd;
    private int paddingStart;
    private boolean textBold;
    private float textHeight;
    private boolean textItalic;
    private float textSize;
    private boolean textTraditional;
    private boolean textUnderline;
    private float textSpacing = 1.2f;

    @NotNull
    private NoteChineseConvertType textConvertType = NoteChineseConvertType.NONE;
    private float textWidth = 300.0f;
    private float pointScale = 1.0f;

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle$Companion;", "", "()V", "DEFAULT_TEXT_SPACING", "", "DEFAULT_TEXT_WIDTH", "", "HORIZONTAL", "VERTICAL", "getChineseConvertTypeByStyle", "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", "style", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NoteChineseConvertType getChineseConvertTypeByStyle(@NotNull ShapeTextStyle style) {
            Intrinsics.checkNotNullParameter(style, "style");
            return style.isTextOriginConverted() ? NoteChineseConvertType.NONE : style.isTextSimplifiedConverted() ? NoteChineseConvertType.T_TO_S : NoteChineseConvertType.S_TO_T;
        }

        private Companion() {
        }
    }

    public final void appendTextWidth(int append) {
        this.textWidth += append;
    }

    public final void ensureTextWidth() {
        if (this.textWidth <= 0.0f) {
            Debug.INSTANCE.m32063w(new IllegalArgumentException("text width = " + this.textWidth));
            this.textWidth = 300.0f;
        }
    }

    public final int getAlignType() {
        return this.alignType;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final Layout.Alignment getAlignment() {
        int i = this.alignType;
        return i != 0 ? i != 1 ? i != 2 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
    }

    @Nullable
    public final String getFontFace() {
        return this.fontFace;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final int getPaddingEnd() {
        return this.paddingEnd;
    }

    public final int getPaddingStart() {
        return this.paddingStart;
    }

    public final float getPointScale() {
        return this.pointScale;
    }

    @NotNull
    public final NoteChineseConvertType getTextConvertType() {
        return this.textConvertType;
    }

    public final float getTextHeight() {
        return this.textHeight;
    }

    public final float getTextSize() {
        return this.textSize;
    }

    @JSONField(deserialize = false, serialize = false)
    public final float getTextSizeInPt() {
        return DimenUtils.INSTANCE.px2pt(ResManager.INSTANCE.getAppContext(), this.textSize);
    }

    public final float getTextSpacing() {
        return this.textSpacing;
    }

    public final float getTextWidth() {
        ensureTextWidth();
        return this.textWidth;
    }

    /* renamed from: isTextBold, reason: from getter */
    public final boolean getTextBold() {
        return this.textBold;
    }

    /* renamed from: isTextConverted, reason: from getter */
    public final boolean getIsTextConverted() {
        return this.isTextConverted;
    }

    /* renamed from: isTextItalic, reason: from getter */
    public final boolean getTextItalic() {
        return this.textItalic;
    }

    public final boolean isTextOriginConverted() {
        return getTextConvertType() == NoteChineseConvertType.NONE;
    }

    public final boolean isTextSimplifiedConverted() {
        return getTextConvertType() == NoteChineseConvertType.T_TO_S && getIsTextConverted();
    }

    @Deprecated(message = "")
    /* renamed from: isTextTraditional, reason: from getter */
    public final boolean getTextTraditional() {
        return this.textTraditional;
    }

    public final boolean isTextTraditionalConverted() {
        return getTextConvertType() == NoteChineseConvertType.S_TO_T && getIsTextConverted();
    }

    /* renamed from: isTextUnderline, reason: from getter */
    public final boolean getTextUnderline() {
        return this.textUnderline;
    }

    public final boolean isVertical() {
        return this.orientation == 1;
    }

    @NotNull
    public final ShapeTextStyle setAlignType(int type) {
        this.alignType = type;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setFontFace(@Nullable String fontFace) {
        this.fontFace = fontFace;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setOrientation(int orientation) {
        this.orientation = orientation;
        return this;
    }

    public final void setPaddingEnd(int paddingEnd) {
        this.paddingEnd = paddingEnd;
    }

    public final void setPaddingStart(int paddingStart) {
        this.paddingStart = paddingStart;
    }

    @NotNull
    public final ShapeTextStyle setPointScale(float pointScale) {
        this.pointScale = pointScale;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextBold(boolean textBold) {
        this.textBold = textBold;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextConvertType(@NotNull NoteChineseConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "convertType");
        this.textConvertType = convertType;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextConverted(boolean textConverted) {
        this.isTextConverted = textConverted;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextHeight(float textHeight) {
        this.textHeight = textHeight;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextItalic(boolean textItalic) {
        this.textItalic = textItalic;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextSize(float textSize) {
        this.textSize = textSize;
        return this;
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final ShapeTextStyle setTextSizeInPt(float pt) {
        this.textSize = DimenUtils.INSTANCE.pt2px(ResManager.INSTANCE.getAppContext(), pt);
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextSpacing(float textSpacing) {
        this.textSpacing = textSpacing;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextTraditional(boolean textTraditional) {
        this.textTraditional = textTraditional;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextUnderline(boolean textUnderline) {
        this.textUnderline = textUnderline;
        return this;
    }

    @NotNull
    public final ShapeTextStyle setTextWidth(float textWidth) {
        this.textWidth = textWidth;
        ensureTextWidth();
        return this;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ShapeTextStyle m72374clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle");
        return (ShapeTextStyle) clone;
    }
}
