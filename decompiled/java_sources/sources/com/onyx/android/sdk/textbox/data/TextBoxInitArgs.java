package com.onyx.android.sdk.textbox.data;

import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextAlignType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\b\n\u0002\bT\u0018\u0000 i2\u00020\u0001:\u0001iB\u0007¢\u0006\u0004\bg\u0010hJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0016\u0010\u000f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\fJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\fJ\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0016J\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u001e\u001a\u00020\u00002\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002J\u0010\u0010 \u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\tJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\tJ\u000e\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\tJ\u000e\u0010(\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\tJ\u000e\u0010*\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0016J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\tR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R$\u00108\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R$\u0010\r\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R$\u0010\u000e\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b>\u0010;\u001a\u0004\b?\u0010=R$\u0010\u0010\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b@\u0010;\u001a\u0004\bA\u0010=R$\u0010\u0012\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bB\u0010;\u001a\u0004\bC\u0010=R$\u0010\u0014\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bD\u0010;\u001a\u0004\bE\u0010=R$\u0010\u0017\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR$\u0010\u0019\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bJ\u0010G\u001a\u0004\bK\u0010IR(\u0010\u001b\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bL\u00101\u001a\u0004\bM\u00103R(\u0010\u001d\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bN\u00101\u001a\u0004\bO\u00103R(\u0010\u001f\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bP\u00101\u001a\u0004\bQ\u00103R$\u0010S\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bR\u00107\u001a\u0004\bS\u00109R$\u0010U\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bT\u00107\u001a\u0004\bU\u00109R$\u0010W\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bV\u00107\u001a\u0004\bW\u00109R$\u0010'\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bX\u00107\u001a\u0004\bY\u00109R\"\u0010^\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u00105\u001a\u0004\b[\u0010\\\"\u0004\b*\u0010]R\"\u0010b\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b_\u0010G\u001a\u0004\b`\u0010I\"\u0004\b,\u0010aR\"\u0010f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bc\u00107\u001a\u0004\bd\u00109\"\u0004\b.\u0010e¨\u0006j"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "", "", "content", "setContent", "Landroid/graphics/RectF;", "getRenderRect", "renderRect", "setRenderRect", "", "darkTheme", "setDarkTheme", "", "scaleX", "scaleY", "setScale", "rotation", "setRotation", gon.f71257J, "setFontSize", "lineHeight", "setLineHeight", "", "orientation", "setOrientation", "textColor", "setTextColor", "alignType", "setAlignType", gon.f71258K, "setFontFamily", "fontPath", "setFontPath", "bold", "setBold", "italic", "setItalic", "underline", "setUnderline", "editForAll", "setEditForAll", "rectF", "setLimitRect", "len", "setPlainTextLen", "show", "setShowEditorDirectly", "<set-?>", "a", Constants.STRING_SIG, "getContent", "()Ljava/lang/String;", "b", "Landroid/graphics/RectF;", "c", Constants.HASIDCALL_INDEX_SIG, "isDarkTheme", Constants.BOOLEAN_VALUE_SIG, "d", "F", "getScaleX", "()F", "e", "getScaleY", C6997f.f39671c, "getRotation", C6998g.f39679a, "getFontSize", C6999h.f39688c, "getLineHeight", "i", "I", "getOrientation", "()I", "j", "getTextColor", C4921e.f26537n, "getAlignType", "l", "getFontFamily", "m", "getFontPath", GoogleApiAvailabilityLight.f29016b, "isBold", C4921e.f26528e, "isUnderline", "p", "isItalic", "q", "getEditForAll", "r", "getLimitRect", "()Landroid/graphics/RectF;", "(Landroid/graphics/RectF;)V", "limitRect", "s", "getPlainTextLen", "(I)V", "plainTextLen", "t", "getShowEditorDirectly", "(Z)V", "showEditorDirectly", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextBoxInitArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String content;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public RectF renderRect;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isDarkTheme;

    /* renamed from: d, reason: from kotlin metadata */
    public float scaleX;

    /* renamed from: e, reason: from kotlin metadata */
    public float scaleY;

    /* renamed from: f, reason: from kotlin metadata */
    public float rotation;

    /* renamed from: g, reason: from kotlin metadata */
    public float fontSize;

    /* renamed from: h, reason: from kotlin metadata */
    public float lineHeight;

    /* renamed from: i, reason: from kotlin metadata */
    public int orientation;

    /* renamed from: j, reason: from kotlin metadata */
    public int textColor;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public String alignType;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public String fontFamily;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public String fontPath;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isBold;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean isUnderline;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isItalic;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean editForAll;

    /* renamed from: s, reason: from kotlin metadata */
    public int plainTextLen;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public RectF limitRect = new RectF();

    /* renamed from: t, reason: from kotlin metadata */
    public boolean showEditorDirectly = true;

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;", "", "()V", "fromTextStyle", "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "content", "", "textStyle", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TextBoxInitArgs fromTextStyle(@Nullable String content, @NotNull ShapeTextStyle textStyle) {
            Intrinsics.checkNotNullParameter(textStyle, "textStyle");
            return new TextBoxInitArgs().setContent(content).setFontSize(textStyle.getTextSize()).setLineHeight(textStyle.getTextSpacing()).setOrientation(textStyle.getOrientation()).setFontPath(textStyle.getFontFace()).setAlignType(ShapeTextAlignType.INSTANCE.toString(TextRenderUtil.INSTANCE.getAlignTypeCompat(textStyle, content))).setBold(textStyle.getTextBold()).setItalic(textStyle.getTextItalic()).setUnderline(textStyle.getTextUnderline());
        }

        public Companion() {
        }
    }

    @Nullable
    public final String getAlignType() {
        return this.alignType;
    }

    @Nullable
    public final String getContent() {
        return this.content;
    }

    public final boolean getEditForAll() {
        return this.editForAll;
    }

    @Nullable
    public final String getFontFamily() {
        return this.fontFamily;
    }

    @Nullable
    public final String getFontPath() {
        return this.fontPath;
    }

    public final float getFontSize() {
        return this.fontSize;
    }

    @NotNull
    public final RectF getLimitRect() {
        return this.limitRect;
    }

    public final float getLineHeight() {
        return this.lineHeight;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public final int getPlainTextLen() {
        return this.plainTextLen;
    }

    @Nullable
    public final RectF getRenderRect() {
        return this.renderRect;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getScaleY() {
        return this.scaleY;
    }

    public final boolean getShowEditorDirectly() {
        return this.showEditorDirectly;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    /* renamed from: isBold, reason: from getter */
    public final boolean getIsBold() {
        return this.isBold;
    }

    /* renamed from: isDarkTheme, reason: from getter */
    public final boolean getIsDarkTheme() {
        return this.isDarkTheme;
    }

    /* renamed from: isItalic, reason: from getter */
    public final boolean getIsItalic() {
        return this.isItalic;
    }

    /* renamed from: isUnderline, reason: from getter */
    public final boolean getIsUnderline() {
        return this.isUnderline;
    }

    @NotNull
    public final TextBoxInitArgs setAlignType(@Nullable String alignType) {
        this.alignType = alignType;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setBold(boolean bold) {
        this.isBold = bold;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setContent(@Nullable String content) {
        this.content = content;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setDarkTheme(boolean darkTheme) {
        this.isDarkTheme = darkTheme;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setEditForAll(boolean editForAll) {
        this.editForAll = editForAll;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setFontFamily(@Nullable String fontFamily) {
        this.fontFamily = fontFamily;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setFontPath(@Nullable String fontPath) {
        this.fontPath = fontPath;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setFontSize(float fontSize) {
        this.fontSize = fontSize;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setItalic(boolean italic) {
        this.isItalic = italic;
        return this;
    }

    /* renamed from: setLimitRect, reason: collision with other method in class */
    public final void m72401setLimitRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.limitRect = rectF;
    }

    @NotNull
    public final TextBoxInitArgs setLineHeight(float lineHeight) {
        this.lineHeight = lineHeight;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setOrientation(int orientation) {
        this.orientation = orientation;
        return this;
    }

    /* renamed from: setPlainTextLen, reason: collision with other method in class */
    public final void m72402setPlainTextLen(int i) {
        this.plainTextLen = i;
    }

    @NotNull
    public final TextBoxInitArgs setRenderRect(@Nullable RectF renderRect) {
        this.renderRect = renderRect;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setRotation(float rotation) {
        this.rotation = rotation;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setScale(float scaleX, float scaleY) {
        this.scaleX = scaleX;
        this.scaleY = scaleY;
        return this;
    }

    /* renamed from: setShowEditorDirectly, reason: collision with other method in class */
    public final void m72403setShowEditorDirectly(boolean z) {
        this.showEditorDirectly = z;
    }

    @NotNull
    public final TextBoxInitArgs setTextColor(int textColor) {
        this.textColor = textColor;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setUnderline(boolean underline) {
        this.isUnderline = underline;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setLimitRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        this.limitRect = rectF;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setPlainTextLen(int len) {
        this.plainTextLen = len;
        return this;
    }

    @NotNull
    public final TextBoxInitArgs setShowEditorDirectly(boolean show) {
        this.showEditorDirectly = show;
        return this;
    }
}
