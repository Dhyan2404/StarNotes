package com.onyx.android.sdk.textbox.data;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b'\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bH\u0010IJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\"\u0010\u0017\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0016\u0010\u000eR$\u0010\u001e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\"\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0019\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001dR$\u0010%\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0019\u001a\u0004\b\u0003\u0010\u001b\"\u0004\b$\u0010\u001dR$\u0010)\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0019\u001a\u0004\b'\u0010\u001b\"\u0004\b(\u0010\u001dR$\u0010,\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0019\u001a\u0004\b\u0007\u0010\u001b\"\u0004\b+\u0010\u001dR$\u0010/\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0019\u001a\u0004\b\u0006\u0010\u001b\"\u0004\b.\u0010\u001dR\"\u00107\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010;\u001a\u0002008F@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00102\u001a\u0004\b9\u00104\"\u0004\b:\u00106R$\u0010C\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010G\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010\n\u001a\u0004\bE\u0010\f\"\u0004\bF\u0010\u000e¨\u0006J"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;", "", "", "getLineHeight", "", "defValue", "getFontFamily", "getFontSize", "", "a", Constants.HASIDCALL_INDEX_SIG, "getBold", Constants.BOOLEAN_VALUE_SIG, "setBold", "(Z)V", "bold", "b", "getItalic", "setItalic", "italic", "c", "getUnderline", "setUnderline", "underline", "d", Constants.STRING_SIG, "getColor", "()Ljava/lang/String;", "setColor", "(Ljava/lang/String;)V", "color", "e", "getTextAlign", "setTextAlign", gon.f71264Q, C6997f.f39671c, "setLineHeight", "lineHeight", C6998g.f39679a, "getLetterSpacing", "setLetterSpacing", "letterSpacing", C6999h.f39688c, "setFontSize", gon.f71257J, "i", "setFontFamily", gon.f71258K, "", "j", "I", "getCharCount", "()I", "setCharCount", "(I)V", "charCount", C4921e.f26537n, "getTextColor", "setTextColor", "textColor", "Lcom/onyx/android/sdk/textbox/data/EditorCursor;", "l", "Lcom/onyx/android/sdk/textbox/data/EditorCursor;", "getCursor", "()Lcom/onyx/android/sdk/textbox/data/EditorCursor;", "setCursor", "(Lcom/onyx/android/sdk/textbox/data/EditorCursor;)V", "cursor", "m", "getHasSelection", "setHasSelection", "hasSelection", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorStyleInfo {

    /* renamed from: a, reason: from kotlin metadata */
    public boolean bold;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean italic;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean underline;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String color;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String textAlign;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public String lineHeight;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public String letterSpacing;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String fontSize;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String fontFamily;

    /* renamed from: j, reason: from kotlin metadata */
    public int charCount;

    /* renamed from: k, reason: from kotlin metadata */
    public int textColor;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public EditorCursor cursor;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean hasSelection;

    public final boolean getBold() {
        return this.bold;
    }

    public final int getCharCount() {
        return this.charCount;
    }

    @Nullable
    public final String getColor() {
        return this.color;
    }

    @Nullable
    public final EditorCursor getCursor() {
        return this.cursor;
    }

    @Nullable
    public final String getFontFamily() {
        return this.fontFamily;
    }

    @Nullable
    public final String getFontSize() {
        return this.fontSize;
    }

    public final boolean getHasSelection() {
        return this.hasSelection;
    }

    public final boolean getItalic() {
        return this.italic;
    }

    @Nullable
    public final String getLetterSpacing() {
        return this.letterSpacing;
    }

    @Nullable
    public final String getLineHeight() {
        return this.lineHeight;
    }

    @Nullable
    public final String getTextAlign() {
        return this.textAlign;
    }

    public final int getTextColor() {
        int i = this.textColor;
        return i != 0 ? i : ColorUtils.INSTANCE.parseRGBColor(this.color);
    }

    public final boolean getUnderline() {
        return this.underline;
    }

    public final void setBold(boolean z) {
        this.bold = z;
    }

    public final void setCharCount(int i) {
        this.charCount = i;
    }

    public final void setColor(@Nullable String str) {
        this.color = str;
    }

    public final void setCursor(@Nullable EditorCursor editorCursor) {
        this.cursor = editorCursor;
    }

    public final void setFontFamily(@Nullable String str) {
        this.fontFamily = str;
    }

    public final void setFontSize(@Nullable String str) {
        this.fontSize = str;
    }

    public final void setHasSelection(boolean z) {
        this.hasSelection = z;
    }

    public final void setItalic(boolean z) {
        this.italic = z;
    }

    public final void setLetterSpacing(@Nullable String str) {
        this.letterSpacing = str;
    }

    public final void setLineHeight(@Nullable String str) {
        this.lineHeight = str;
    }

    public final void setTextAlign(@Nullable String str) {
        this.textAlign = str;
    }

    public final void setTextColor(int i) {
        this.textColor = i;
    }

    public final void setUnderline(boolean z) {
        this.underline = z;
    }

    @NotNull
    public final String getFontFamily(@NotNull String defValue) {
        Intrinsics.checkNotNullParameter(defValue, "defValue");
        if (StringUtils.isBlank(this.fontFamily)) {
            return defValue;
        }
        String str = this.fontFamily;
        Intrinsics.checkNotNull(str);
        return str;
    }

    public final float getFontSize(float defValue) {
        String replace$default;
        String str = this.fontSize;
        if (str == null || str.length() == 0) {
            return defValue;
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        String str2 = this.fontSize;
        Intrinsics.checkNotNull(str2);
        replace$default = StringsKt__StringsJVMKt.replace$default(str2, ExtUnits.UNIT_PX, "", false, 4, (Object) null);
        float parseFloat = mathUtils.parseFloat(replace$default);
        return parseFloat > 0.0f ? parseFloat : defValue;
    }

    public final float getLineHeight() {
        return MathUtils.INSTANCE.parseFloat(String.valueOf(this.lineHeight));
    }
}
