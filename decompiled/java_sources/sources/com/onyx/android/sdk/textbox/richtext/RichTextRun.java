package com.onyx.android.sdk.textbox.richtext;

import com.alibaba.fastjson2.annotation.JSONField;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.font.CJKCompat;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0016R(\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;", "", "", "toStandardSentence", "toString", "", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;", "a", "Ljava/util/List;", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", FirebaseAnalytics.Param.ITEMS, "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;", "b", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;", "getEditorStyle", "()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;", "setEditorStyle", "(Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;)V", "editorStyle", Constants.CONSTRUCTOR_NAME, "()V", "TextRunChar", "TextRunStyle", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRichTextRun.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RichTextRun.kt\ncom/onyx/android/sdk/textbox/richtext/RichTextRun\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1549#2:108\n1620#2,3:109\n2661#2,7:112\n*S KotlinDebug\n*F\n+ 1 RichTextRun.kt\ncom/onyx/android/sdk/textbox/richtext/RichTextRun\n*L\n23#1:108\n23#1:109,3\n24#1:112,7\n*E\n"})
/* loaded from: classes8.dex */
public final class RichTextRun {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public List<TextRunChar> items = new ArrayList();

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public TextRunStyle editorStyle;

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0019\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\f\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b7\u00108J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004R$\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\"\u0010\u001c\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013R\"\u0010 \u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u000f\u001a\u0004\b\u001e\u0010\u0011\"\u0004\b\u001f\u0010\u0013R\"\u0010$\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u000f\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0011\u00100\u001a\u00020-8F¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0011\u00102\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b1\u0010\u0011R\u0011\u00104\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b3\u0010\u0011R\u0011\u00106\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b5\u0010\u0011¨\u00069"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;", "", "", "toString", "", "getChars", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "text", "", "b", "F", "getHeight", "()F", "setHeight", "(F)V", "height", "c", "getWidth", "setWidth", "width", "d", "getX", "setX", "x", "e", "getY", "setY", "y", C6997f.f39671c, "getBaseline", "setBaseline", "baseline", "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;", C6998g.f39679a, "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;", "getStyle", "()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;", "setStyle", "(Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;)V", "style", "", "getChar", "()C", "char", "getLeft", "left", "getTop", OneDriverConstants.TOP, "getBaseLine", "baseLine", Constants.CONSTRUCTOR_NAME, "()V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class TextRunChar {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @JSONField(name = "char")
        @Nullable
        public String text;

        /* renamed from: b, reason: from kotlin metadata */
        public float height;

        /* renamed from: c, reason: from kotlin metadata */
        public float width;

        /* renamed from: d, reason: from kotlin metadata */
        public float x;

        /* renamed from: e, reason: from kotlin metadata */
        public float y;

        /* renamed from: f, reason: from kotlin metadata */
        public float baseline;

        /* renamed from: g, reason: from kotlin metadata */
        @NotNull
        public TextRunStyle style = new TextRunStyle();

        /* renamed from: getBaseLine, reason: from getter */
        public final float getBaseline() {
            return this.baseline;
        }

        public final float getBaseline() {
            return this.baseline;
        }

        public final char getChar() {
            if (StringUtils.isEmpty(this.text)) {
                return ' ';
            }
            String str = this.text;
            Intrinsics.checkNotNull(str);
            return str.charAt(0);
        }

        @NotNull
        public final char[] getChars() {
            String str = this.text;
            if (str == null || str.length() == 0) {
                return new char[]{' '};
            }
            String str2 = this.text;
            Intrinsics.checkNotNull(str2);
            char[] charArray = str2.toCharArray();
            Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
            return charArray;
        }

        public final float getHeight() {
            return this.height;
        }

        /* renamed from: getLeft, reason: from getter */
        public final float getX() {
            return this.x;
        }

        @NotNull
        public final TextRunStyle getStyle() {
            return this.style;
        }

        @Nullable
        public final String getText() {
            return this.text;
        }

        /* renamed from: getTop, reason: from getter */
        public final float getY() {
            return this.y;
        }

        public final float getWidth() {
            return this.width;
        }

        public final float getX() {
            return this.x;
        }

        public final float getY() {
            return this.y;
        }

        public final void setBaseline(float f) {
            this.baseline = f;
        }

        public final void setHeight(float f) {
            this.height = f;
        }

        public final void setStyle(@NotNull TextRunStyle textRunStyle) {
            Intrinsics.checkNotNullParameter(textRunStyle, "<set-?>");
            this.style = textRunStyle;
        }

        public final void setText(@Nullable String str) {
            this.text = str;
        }

        public final void setWidth(float f) {
            this.width = f;
        }

        public final void setX(float f) {
            this.x = f;
        }

        public final void setY(float f) {
            this.y = f;
        }

        @NotNull
        public String toString() {
            return "text=" + this.text + " width=" + this.width + " height=" + this.height + " left=" + getX() + " top=" + getY();
        }
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b,\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 ;2\u00020\u0001:\u0001;B\u0007¢\u0006\u0004\b9\u0010:J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0007R$\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0003\u0010\f\"\u0004\b\u0011\u0010\u000eR$\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\n\u001a\u0004\b\u0014\u0010\f\"\u0004\b\u0015\u0010\u000eR$\u0010\u0019\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\n\u001a\u0004\b\b\u0010\f\"\u0004\b\u0018\u0010\u000eR$\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\n\u001a\u0004\b\u0006\u0010\f\"\u0004\b\u001b\u0010\u000eR$\u0010 \u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\n\u001a\u0004\b\u001e\u0010\f\"\u0004\b\u001f\u0010\u000eR$\u0010$\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\n\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000eR$\u0010(\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\n\u001a\u0004\b&\u0010\f\"\u0004\b'\u0010\u000eR$\u0010,\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\n\u001a\u0004\b*\u0010\f\"\u0004\b+\u0010\u000eR$\u00103\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0011\u00105\u001a\u0002048F¢\u0006\u0006\u001a\u0004\b5\u00106R\u0011\u00107\u001a\u0002048F¢\u0006\u0006\u001a\u0004\b7\u00106R\u0011\u00108\u001a\u0002048F¢\u0006\u0006\u001a\u0004\b8\u00106¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;", "", "", "getColor", "", "defValue", "getFontSize", "", "getFontPath", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getBackgroundColor", "()Ljava/lang/String;", "setBackgroundColor", "(Ljava/lang/String;)V", gon.f71255H, "b", "setColor", "color", "c", "getFontFamily", "setFontFamily", gon.f71258K, "d", "setFontPath", "fontPath", "e", "setFontSize", gon.f71257J, C6997f.f39671c, "getFontStyle", "setFontStyle", gon.f71256I, C6998g.f39679a, "getFontWeight", "setFontWeight", gon.f71259L, C6999h.f39688c, "getLineHeight", "setLineHeight", "lineHeight", "i", "getTextDecoration", "setTextDecoration", gon.f71263P, "j", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.INTEGER_SIG, "getTextColor", "()Ljava/lang/Integer;", "setTextColor", "(Ljava/lang/Integer;)V", "textColor", "", "isUnderline", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "isBold", "isItalic", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class TextRunStyle {

        @NotNull
        public static final String DECORATION_UNDERLINE = "underline";

        @NotNull
        public static final String FONT_STYLE_ITALIC = "italic";

        @NotNull
        public static final String FONT_WEIGHT_BOLD = "bold";

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public String backgroundColor;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public String color;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public String fontFamily;

        /* renamed from: d, reason: from kotlin metadata */
        @Nullable
        public String fontPath;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public String fontSize;

        /* renamed from: f, reason: from kotlin metadata */
        @Nullable
        public String fontStyle;

        /* renamed from: g, reason: from kotlin metadata */
        @Nullable
        public String fontWeight;

        /* renamed from: h, reason: from kotlin metadata */
        @Nullable
        public String lineHeight;

        /* renamed from: i, reason: from kotlin metadata */
        @Nullable
        public String textDecoration;

        /* renamed from: j, reason: from kotlin metadata */
        @Nullable
        public Integer textColor;

        @Nullable
        public final String getBackgroundColor() {
            return this.backgroundColor;
        }

        @Nullable
        public final String getColor() {
            return this.color;
        }

        @Nullable
        public final String getFontFamily() {
            return this.fontFamily;
        }

        @Nullable
        public final String getFontPath() {
            return this.fontPath;
        }

        @Nullable
        public final String getFontSize() {
            return this.fontSize;
        }

        @Nullable
        public final String getFontStyle() {
            return this.fontStyle;
        }

        @Nullable
        public final String getFontWeight() {
            return this.fontWeight;
        }

        @Nullable
        public final String getLineHeight() {
            return this.lineHeight;
        }

        @Nullable
        public final Integer getTextColor() {
            return this.textColor;
        }

        @Nullable
        public final String getTextDecoration() {
            return this.textDecoration;
        }

        public final boolean isBold() {
            return StringKt.safelyEqualsIgnoreCase(this.fontWeight, "bold");
        }

        public final boolean isItalic() {
            return StringKt.safelyEqualsIgnoreCase(this.fontStyle, "italic");
        }

        public final boolean isUnderline() {
            return StringKt.safelyEqualsIgnoreCase(this.textDecoration, "underline");
        }

        public final void setBackgroundColor(@Nullable String str) {
            this.backgroundColor = str;
        }

        public final void setColor(@Nullable String str) {
            this.color = str;
        }

        public final void setFontFamily(@Nullable String str) {
            this.fontFamily = str;
        }

        public final void setFontPath(@Nullable String str) {
            this.fontPath = str;
        }

        public final void setFontSize(@Nullable String str) {
            this.fontSize = str;
        }

        public final void setFontStyle(@Nullable String str) {
            this.fontStyle = str;
        }

        public final void setFontWeight(@Nullable String str) {
            this.fontWeight = str;
        }

        public final void setLineHeight(@Nullable String str) {
            this.lineHeight = str;
        }

        public final void setTextColor(@Nullable Integer num) {
            this.textColor = num;
        }

        public final void setTextDecoration(@Nullable String str) {
            this.textDecoration = str;
        }

        public final int getColor() {
            Integer num = this.textColor;
            if (num == null) {
                return ColorUtils.INSTANCE.parseRGBColor(this.color);
            }
            Intrinsics.checkNotNull(num);
            return num.intValue();
        }

        @NotNull
        public final String getFontPath(@NotNull String defValue) {
            Intrinsics.checkNotNullParameter(defValue, "defValue");
            return StringUtils.isBlank(this.fontPath) ? defValue : String.valueOf(this.fontPath);
        }

        public final float getFontSize(float defValue) {
            String replace$default;
            if (StringUtils.isBlank(this.fontSize)) {
                return defValue;
            }
            MathUtils mathUtils = MathUtils.INSTANCE;
            String str = this.fontSize;
            Intrinsics.checkNotNull(str);
            replace$default = StringsKt__StringsJVMKt.replace$default(str, ExtUnits.UNIT_PX, "", false, 4, (Object) null);
            float parseFloat = mathUtils.parseFloat(replace$default);
            return parseFloat > 0.0f ? parseFloat : defValue;
        }
    }

    @Nullable
    public final TextRunStyle getEditorStyle() {
        return this.editorStyle;
    }

    @NotNull
    public final List<TextRunChar> getItems() {
        return this.items;
    }

    public final void setEditorStyle(@Nullable TextRunStyle textRunStyle) {
        this.editorStyle = textRunStyle;
    }

    public final void setItems(@NotNull List<TextRunChar> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }

    @NotNull
    public final String toStandardSentence() {
        int collectionSizeOrDefault;
        CJKCompat cJKCompat = CJKCompat.INSTANCE;
        List<TextRunChar> list = this.items;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            String text = ((TextRunChar) it2.next()).getText();
            if (text == null) {
                text = "";
            }
            arrayList.add(text);
        }
        Iterator it3 = arrayList.iterator();
        if (!it3.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object next = it3.next();
        while (it3.hasNext()) {
            next = ((String) next) + ((String) it3.next());
        }
        return cJKCompat.CJKToStandard((String) next);
    }

    @NotNull
    public String toString() {
        return this.items.toString();
    }
}
