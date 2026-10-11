package com.onyx.android.sdk.textbox.pdf;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.textbox.richtext.RichTextRun;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b'\u0018\u0000 12\u00020\u0001:\u00011B\u0007¢\u0006\u0004\b/\u00100J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000bJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000bR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR$\u0010!\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R$\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R$\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b'\u0010$\u001a\u0004\b(\u0010&R$\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b)\u0010$\u001a\u0004\b*\u0010&R$\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b+\u0010$\u001a\u0004\b,\u0010&R$\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b-\u0010$\u001a\u0004\b.\u0010&¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;", "", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "richTextRun", "setRichTextRun", "", "fontPath", "setFontPath", "", "vertical", "setVertical", "", gon.f71257J, "setFontSize", "offsetX", "setOffsetX", "offsetY", "setOffsetY", "scaleX", "setScaleX", "scaleY", "setScaleY", "<set-?>", "a", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "getRichTextRun", "()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "b", Constants.STRING_SIG, "getFontPath", "()Ljava/lang/String;", "c", Constants.HASIDCALL_INDEX_SIG, "isVertical", Constants.BOOLEAN_VALUE_SIG, "d", "F", "getFontSize", "()F", "e", "getOffsetX", C6997f.f39671c, "getOffsetY", C6998g.f39679a, "getScaleX", C6999h.f39688c, "getScaleY", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PdfTextRunCreateArgs {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final float TEXT_SKEW_X = -0.2f;
    public static final float UNDERLINE_THICKNESS = 20.0f;
    public static final int VERTICAL_ROTATION_ANGLE = 90;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public RichTextRun richTextRun;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String fontPath;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isVertical;

    /* renamed from: d, reason: from kotlin metadata */
    public float fontSize;

    /* renamed from: e, reason: from kotlin metadata */
    public float offsetX;

    /* renamed from: f, reason: from kotlin metadata */
    public float offsetY;

    /* renamed from: g, reason: from kotlin metadata */
    public float scaleX;

    /* renamed from: h, reason: from kotlin metadata */
    public float scaleY;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs$Companion;", "", "()V", "TEXT_SKEW_X", "", "UNDERLINE_THICKNESS", "VERTICAL_ROTATION_ANGLE", "", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/textbox/pdf/PdfTextRunCreateArgs;", "textRun", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "scaleX", "scaleY", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PdfTextRunCreateArgs create(@Nullable RichTextRun textRun, float scaleX, float scaleY) {
            PdfTextRunCreateArgs pdfTextRunCreateArgs = new PdfTextRunCreateArgs();
            pdfTextRunCreateArgs.setRichTextRun(textRun).setScaleX(scaleX).setScaleY(scaleY);
            return pdfTextRunCreateArgs;
        }

        public Companion() {
        }
    }

    @Nullable
    public final String getFontPath() {
        return this.fontPath;
    }

    public final float getFontSize() {
        return this.fontSize;
    }

    public final float getOffsetX() {
        return this.offsetX;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    @Nullable
    public final RichTextRun getRichTextRun() {
        return this.richTextRun;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getScaleY() {
        return this.scaleY;
    }

    /* renamed from: isVertical, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    @NotNull
    public final PdfTextRunCreateArgs setFontPath(@Nullable String fontPath) {
        this.fontPath = fontPath;
        return this;
    }

    @NotNull
    public final PdfTextRunCreateArgs setFontSize(float fontSize) {
        this.fontSize = fontSize;
        return this;
    }

    @NotNull
    public final PdfTextRunCreateArgs setOffsetX(float offsetX) {
        this.offsetX = offsetX;
        return this;
    }

    @NotNull
    public final PdfTextRunCreateArgs setOffsetY(float offsetY) {
        this.offsetY = offsetY;
        return this;
    }

    @NotNull
    public final PdfTextRunCreateArgs setRichTextRun(@Nullable RichTextRun richTextRun) {
        this.richTextRun = richTextRun;
        return this;
    }

    @NotNull
    public final PdfTextRunCreateArgs setScaleX(float scaleX) {
        this.scaleX = scaleX;
        return this;
    }

    @NotNull
    public final PdfTextRunCreateArgs setScaleY(float scaleY) {
        this.scaleY = scaleY;
        return this;
    }

    @NotNull
    public final PdfTextRunCreateArgs setVertical(boolean vertical) {
        this.isVertical = vertical;
        return this;
    }
}
