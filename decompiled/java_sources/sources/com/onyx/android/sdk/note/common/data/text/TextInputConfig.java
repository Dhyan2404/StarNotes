package com.onyx.android.sdk.note.common.data.text;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.NoteChineseConvertType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0013\u0018\u0000 E2\u00020\u0001:\u0001EB\u0007¢\u0006\u0004\bC\u0010DJ\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0006\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0019\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0012\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010&\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0012\u001a\u0004\b$\u0010\u0014\"\u0004\b%\u0010\u0016R\"\u0010*\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0012\u001a\u0004\b(\u0010\u0014\"\u0004\b)\u0010\u0016R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\"\u0010>\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u00105\u001a\u0004\b<\u00107\"\u0004\b=\u00109R\"\u0010B\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u00105\u001a\u0004\b@\u00107\"\u0004\bA\u00109¨\u0006F"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;", "", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "toDefaultTextStyle", "", "a", "F", "getTextSize", "()F", "setTextSize", "(F)V", "textSize", "b", "getTextSpacing", "setTextSpacing", "textSpacing", "", "c", Constants.HASIDCALL_INDEX_SIG, "getItalic", Constants.BOOLEAN_VALUE_SIG, "setItalic", "(Z)V", "italic", "d", "isTextConverted", "setTextConverted", "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", "e", "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", "getConvertType", "()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;", "setConvertType", "(Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;)V", "convertType", C6997f.f39671c, "getBold", "setBold", "bold", C6998g.f39679a, "getUnderline", "setUnderline", "underline", "", C6999h.f39688c, Constants.STRING_SIG, "getFontFace", "()Ljava/lang/String;", "setFontFace", "(Ljava/lang/String;)V", "fontFace", "", "i", "I", "getColor", "()I", "setColor", "(I)V", "color", "j", "getOrientation", "setOrientation", "orientation", C4921e.f26537n, "getAlignType", "setAlignType", "alignType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextInputConfig {
    public static final float DEFAULT_PT_TEXT_SIZE = 14.0f;
    public static final int DEFAULT_TEXT_COLOR = -16777216;
    public static final float DEFAULT_TEXT_SPACING = 1.0f;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean italic;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isTextConverted;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean bold;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean underline;

    /* renamed from: j, reason: from kotlin metadata */
    public int orientation;

    /* renamed from: k, reason: from kotlin metadata */
    public int alignType;

    /* renamed from: a, reason: from kotlin metadata */
    public float textSize = 14.0f;

    /* renamed from: b, reason: from kotlin metadata */
    public float textSpacing = 1.0f;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public NoteChineseConvertType convertType = NoteChineseConvertType.NONE;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String fontFace = "";

    /* renamed from: i, reason: from kotlin metadata */
    public int color = -16777216;

    public final int getAlignType() {
        return this.alignType;
    }

    public final boolean getBold() {
        return this.bold;
    }

    public final int getColor() {
        return this.color;
    }

    @NotNull
    public final NoteChineseConvertType getConvertType() {
        return this.convertType;
    }

    @NotNull
    public final String getFontFace() {
        return this.fontFace;
    }

    public final boolean getItalic() {
        return this.italic;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final float getTextSize() {
        return this.textSize;
    }

    public final float getTextSpacing() {
        return this.textSpacing;
    }

    public final boolean getUnderline() {
        return this.underline;
    }

    /* renamed from: isTextConverted, reason: from getter */
    public final boolean getIsTextConverted() {
        return this.isTextConverted;
    }

    public final void setAlignType(int i) {
        this.alignType = i;
    }

    public final void setBold(boolean z) {
        this.bold = z;
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setConvertType(@NotNull NoteChineseConvertType noteChineseConvertType) {
        Intrinsics.checkNotNullParameter(noteChineseConvertType, "<set-?>");
        this.convertType = noteChineseConvertType;
    }

    public final void setFontFace(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fontFace = str;
    }

    public final void setItalic(boolean z) {
        this.italic = z;
    }

    public final void setOrientation(int i) {
        this.orientation = i;
    }

    public final void setTextConverted(boolean z) {
        this.isTextConverted = z;
    }

    public final void setTextSize(float f) {
        this.textSize = f;
    }

    public final void setTextSpacing(float f) {
        this.textSpacing = f;
    }

    public final void setUnderline(boolean z) {
        this.underline = z;
    }

    @NotNull
    public final ShapeTextStyle toDefaultTextStyle() {
        return new ShapeTextStyle().setTextSize(TextRenderUtil.INSTANCE.pointToPixel(ResManager.INSTANCE.getAppContext(), this.textSize)).setFontFace(this.fontFace).setTextSpacing(this.textSpacing).setAlignType(this.alignType).setTextUnderline(this.underline).setTextBold(this.bold).setTextItalic(this.italic);
    }
}
