package com.onyx.android.sdk.data.common.data;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001c\u001a\u00020\u0000J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u0004R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0014\u0010\u0006\"\u0004\b\u0015\u0010\bR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "", "()V", "charSpacing", "", "getCharSpacing", "()Ljava/lang/Float;", "setCharSpacing", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "enableUnifiedParams", "", "getEnableUnifiedParams", Constants.BOOLEAN_VALUE_SIG, "setEnableUnifiedParams", "(Z)V", gon.f71257J, "getFontSize", "setFontSize", "lineSpacing", "getLineSpacing", "setLineSpacing", "typeface", "", "getTypeface", "()Ljava/lang/String;", "setTypeface", "(Ljava/lang/String;)V", "copy", "getCharSpacingInPx", "getLineSpacingInPx", "getMinLineSpacingInPx", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ShapeTypesetArgs {
    public static final float EXTRA_CHAR_SPACING_DEFAULT = 0.0f;
    public static final float MIN_LINE_SPACING = 1.1f;
    public static final float STANDARD_CHAR_SPACING = 0.08f;
    public static final float STANDARD_FONT_SIZE = 16.0f;
    public static final float STANDARD_LINE_SPACING = 1.2f;

    @Nullable
    private Float charSpacing;
    private boolean enableUnifiedParams;

    @Nullable
    private Float fontSize;

    @Nullable
    private Float lineSpacing;

    @Nullable
    private String typeface;

    @NotNull
    public final ShapeTypesetArgs copy() {
        ShapeTypesetArgs shapeTypesetArgs = new ShapeTypesetArgs();
        shapeTypesetArgs.enableUnifiedParams = this.enableUnifiedParams;
        shapeTypesetArgs.typeface = this.typeface;
        shapeTypesetArgs.fontSize = this.fontSize;
        shapeTypesetArgs.charSpacing = this.charSpacing;
        shapeTypesetArgs.lineSpacing = this.lineSpacing;
        return shapeTypesetArgs;
    }

    @Nullable
    public final Float getCharSpacing() {
        return this.charSpacing;
    }

    public final float getCharSpacingInPx() {
        return getCharSpacing() * getFontSize();
    }

    public final boolean getEnableUnifiedParams() {
        return this.enableUnifiedParams;
    }

    @Nullable
    public final Float getFontSize() {
        return this.fontSize;
    }

    @Nullable
    public final Float getLineSpacing() {
        return this.lineSpacing;
    }

    public final float getLineSpacingInPx() {
        return getLineSpacing() * getFontSize();
    }

    public final float getMinLineSpacingInPx() {
        return getFontSize();
    }

    @Nullable
    public final String getTypeface() {
        return this.typeface;
    }

    public final void setCharSpacing(@Nullable Float f) {
        this.charSpacing = f;
    }

    public final void setEnableUnifiedParams(boolean z) {
        this.enableUnifiedParams = z;
    }

    public final void setFontSize(@Nullable Float f) {
        this.fontSize = f;
    }

    public final void setLineSpacing(@Nullable Float f) {
        this.lineSpacing = f;
    }

    public final void setTypeface(@Nullable String str) {
        this.typeface = str;
    }

    public final float getCharSpacing() {
        Float f = this.charSpacing;
        return (1 + (f != null ? f.floatValue() : 0.0f)) * 0.08f;
    }

    public final float getFontSize() {
        Float f = this.fontSize;
        if (f != null) {
            return f.floatValue();
        }
        return 16.0f;
    }

    public final float getLineSpacing() {
        Float f = this.lineSpacing;
        if (f != null) {
            return f.floatValue();
        }
        return 1.2f;
    }
}
