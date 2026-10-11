package com.onyx.android.sdk.textbox.richtext;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J!\u0010\u0007\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/richtext/RichTextFont;", "", "", "component1", "component2", gon.f71258K, "fontSource", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getFontFamily", "()Ljava/lang/String;", "setFontFamily", "(Ljava/lang/String;)V", "b", "getFontSource", "setFontSource", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class RichTextFont {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public String fontFamily;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public String fontSource;

    /* JADX WARN: Multi-variable type inference failed */
    public RichTextFont() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ RichTextFont copy$default(RichTextFont richTextFont, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = richTextFont.fontFamily;
        }
        if ((i & 2) != 0) {
            str2 = richTextFont.fontSource;
        }
        return richTextFont.copy(str, str2);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final String getFontFamily() {
        return this.fontFamily;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final String getFontSource() {
        return this.fontSource;
    }

    @NotNull
    public final RichTextFont copy(@Nullable String fontFamily, @Nullable String fontSource) {
        return new RichTextFont(fontFamily, fontSource);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RichTextFont)) {
            return false;
        }
        RichTextFont richTextFont = (RichTextFont) other;
        return Intrinsics.areEqual(this.fontFamily, richTextFont.fontFamily) && Intrinsics.areEqual(this.fontSource, richTextFont.fontSource);
    }

    @Nullable
    public final String getFontFamily() {
        return this.fontFamily;
    }

    @Nullable
    public final String getFontSource() {
        return this.fontSource;
    }

    public int hashCode() {
        String str = this.fontFamily;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.fontSource;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setFontFamily(@Nullable String str) {
        this.fontFamily = str;
    }

    public final void setFontSource(@Nullable String str) {
        this.fontSource = str;
    }

    @NotNull
    public String toString() {
        return "RichTextFont(fontFamily=" + this.fontFamily + ", fontSource=" + this.fontSource + ')';
    }

    public RichTextFont(@Nullable String str, @Nullable String str2) {
        this.fontFamily = str;
        this.fontSource = str2;
    }

    public /* synthetic */ RichTextFont(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }
}
