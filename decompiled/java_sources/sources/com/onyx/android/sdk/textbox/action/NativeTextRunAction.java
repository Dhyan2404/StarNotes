package com.onyx.android.sdk.textbox.action;

import android.content.Context;
import android.graphics.RectF;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.RTManager;
import com.onegravity.rteditor.api.DefaultProxyImpl;
import com.onegravity.rteditor.api.RTApi;
import com.onegravity.rteditor.api.RTMediaFactoryImpl;
import com.onegravity.rteditor.fonts.FontManager;
import com.onegravity.rteditor.fonts.RTTypeface;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextAlignType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.textbox.data.EditorStyleInfo;
import com.onyx.android.sdk.textbox.richtext.RichTextRun;
import com.onyx.android.sdk.textbox.utils.RTEditorExtKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0005\u001a\u00020\u0000J$\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\bH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001a\u0010\u0010\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\bH\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0012R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;", "", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "getRichTextRun", "getRichTextRunValue", "renderContent", "Lcom/onegravity/rteditor/RTEditText;", "textRender", "", "customWidth", "customHeight", "", "c", "b", "measureTextRun", "line", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "richTextRun", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NativeTextRunAction {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Shape textShape;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public RichTextRun richTextRun;

    public NativeTextRunAction(@NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.textShape = textShape;
    }

    /* renamed from: d */
    public static /* synthetic */ void m36078d(NativeTextRunAction nativeTextRunAction, RTEditText rTEditText, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        nativeTextRunAction.m36081c(rTEditText, i, i2);
    }

    /* renamed from: a */
    public final RTEditText m36079a(RTEditText measureTextRun, int line) {
        int roundToInt;
        int roundToInt2;
        if (measureTextRun != null) {
            return measureTextRun;
        }
        Context appContext = ResManager.INSTANCE.getAppContext();
        RTEditText initEditor = RTEditorExtKt.initEditor(appContext);
        RTManager rTManager = new RTManager(new RTApi(appContext, new DefaultProxyImpl(), new RTMediaFactoryImpl(appContext)), null);
        rTManager.registerEditor(initEditor, true);
        RectF originRect = this.textShape.getOriginRect();
        roundToInt = MathKt__MathJVMKt.roundToInt(originRect.width());
        int i = roundToInt * line * 2;
        roundToInt2 = MathKt__MathJVMKt.roundToInt(originRect.height());
        m36081c(initEditor, i, roundToInt2);
        rTManager.onDestroy(false);
        return initEditor;
    }

    /* renamed from: b */
    public final void m36080b(RTEditText textRender) {
        String fontFace;
        RichTextRun richTextRun = new RichTextRun();
        Editable text = textRender.getText();
        int length = text != null ? text.length() : 0;
        int i = 0;
        RTEditText rTEditText = null;
        while (i < length) {
            int i2 = i + 1;
            textRender.setSelection(i2);
            RichTextRun.TextRunChar textRunChar = new RichTextRun.TextRunChar();
            RichTextRun.TextRunStyle textRunStyle = new RichTextRun.TextRunStyle();
            Editable text2 = textRender.getText();
            textRunChar.setText(String.valueOf(text2 != null ? Character.valueOf(text2.charAt(i)) : null));
            int lineForOffset = textRender.getLayout().getLineForOffset(i);
            boolean z = i == length + (-1) || textRender.getLayout().getLineForOffset(i2) > lineForOffset;
            textRunChar.setX(textRender.getLayout().getPrimaryHorizontal(i));
            textRunChar.setY(textRender.getLayout().getLineTop(lineForOffset));
            if (z) {
                textRunChar.setWidth(textRender.getLayout().getLineRight(lineForOffset) - textRunChar.getX());
            } else {
                textRunChar.setWidth(textRender.getLayout().getPrimaryHorizontal(i2) - textRunChar.getX());
            }
            textRunChar.setHeight(textRender.getLayout().getLineBottom(lineForOffset) - textRender.getLayout().getLineTop(lineForOffset));
            textRunChar.setBaseline(textRender.getLayout().getLineBaseline(lineForOffset));
            if (textRunChar.getWidth() < 0.0f) {
                rTEditText = m36079a(rTEditText, textRender.getLayout().getLineCount());
                rTEditText.setSelection(i2);
                textRunChar.setWidth(rTEditText.getLayout().getPrimaryHorizontal(i2) - rTEditText.getLayout().getPrimaryHorizontal(i));
            }
            EditorStyleInfo styleInfo = RTEditorExtKt.getStyleInfo(textRender, i, i2);
            textRunStyle.setTextColor(Integer.valueOf(styleInfo.getTextColor()));
            textRunStyle.setFontSize(styleInfo.getFontSize());
            RTTypeface typeface = FontManager.getTypeface(styleInfo.getFontFamily());
            if (typeface == null || (fontFace = typeface.getFontPath()) == null) {
                ShapeTextStyle textStyle = this.textShape.getTextStyle();
                fontFace = textStyle != null ? textStyle.getFontFace() : null;
            }
            textRunStyle.setFontPath(fontFace);
            textRunStyle.setLineHeight(styleInfo.getLineHeight());
            String str = "";
            textRunStyle.setFontWeight(styleInfo.getBold() ? "bold" : "");
            textRunStyle.setFontStyle(styleInfo.getItalic() ? "italic" : "");
            if (styleInfo.getUnderline()) {
                str = "underline";
            }
            textRunStyle.setTextDecoration(str);
            textRunChar.setStyle(textRunStyle);
            richTextRun.getItems().add(textRunChar);
            i = i2;
        }
        this.richTextRun = richTextRun;
    }

    /* renamed from: c */
    public final void m36081c(RTEditText textRender, int customWidth, int customHeight) {
        int roundToInt;
        int roundToInt2;
        if (customWidth == 0 || customHeight == 0) {
            RectF originRect = this.textShape.getOriginRect();
            roundToInt = MathKt__MathJVMKt.roundToInt(originRect.width());
            roundToInt2 = MathKt__MathJVMKt.roundToInt(originRect.height());
            customHeight = roundToInt2;
            customWidth = roundToInt;
        }
        textRender.setLayoutParams(new ViewGroup.LayoutParams(customWidth, customHeight));
        ShapeTextStyle textStyle = this.textShape.getTextStyle();
        Intrinsics.checkNotNull(textStyle);
        textRender.setTypeface(FontManager.getTypeFaceByCustomFontPath(textStyle.getFontFace()));
        textRender.setTextAlignment(ShapeTextAlignType.INSTANCE.toTextAlignment(TextRenderUtil.INSTANCE.getAlignTypeCompat(textStyle, this.textShape.getRichText())));
        textRender.setTextSize(0, textStyle.getTextSize());
        textRender.setTextColor(this.textShape.getStrokeColor());
        textRender.setLineSpacing(0.0f, textStyle.getTextSpacing());
        textRender.setRichTextEditing(true, this.textShape.getRichText());
        textRender.measure(View.MeasureSpec.makeMeasureSpec(customWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(customHeight, 1073741824));
        textRender.layout(0, 0, textRender.getMeasuredWidth(), textRender.getMeasuredHeight());
    }

    @Nullable
    public final RichTextRun getRichTextRun() {
        renderContent();
        return this.richTextRun;
    }

    @Nullable
    /* renamed from: getRichTextRunValue, reason: from getter */
    public final RichTextRun getRichTextRun() {
        return this.richTextRun;
    }

    @NotNull
    public final NativeTextRunAction renderContent() {
        Context appContext = ResManager.INSTANCE.getAppContext();
        RTEditText initEditor = RTEditorExtKt.initEditor(appContext);
        RTManager rTManager = new RTManager(new RTApi(appContext, new DefaultProxyImpl(), new RTMediaFactoryImpl(appContext)), null);
        rTManager.registerEditor(initEditor, true);
        m36078d(this, initEditor, 0, 0, 6, null);
        m36080b(initEditor);
        rTManager.onDestroy(false);
        return this;
    }
}
