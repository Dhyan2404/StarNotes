package com.onyx.android.sdk.base.utils;

import android.text.Html;
import android.text.Spanned;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\bR\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\bR\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\bR\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\bR\u0014\u0010\u0015\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\bR\u0014\u0010\u0017\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\b¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/HtmlUtils;", "", "", "content", "extractFirstDivTagId", "html", "getHtmlTextContent", "a", Constants.STRING_SIG, "DIV_TAG_REGEX", "b", "TAG_BR", "c", "TAG_DIV", "d", "TAG_P", "e", "TAG_DIV_END", C6997f.f39671c, "TAG_P_END", C6998g.f39679a, "TAG_SPAN", C6999h.f39688c, "TAG_SPAN_END", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HtmlUtils {

    @NotNull
    public static final HtmlUtils INSTANCE = new HtmlUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String DIV_TAG_REGEX = "<div.*>";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String TAG_BR = "<br/>";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String TAG_DIV = "<div>";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String TAG_P = "<p";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String TAG_DIV_END = "</div>";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final String TAG_P_END = "</p>";

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final String TAG_SPAN = "<span";

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public static final String TAG_SPAN_END = "</span>";

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0077, code lost:
    
        if (r1 != '\"') goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0085, code lost:
    
        r11 = r11.subSequence(1, r11.length() - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
    
        if (r1 == '\'') goto L25;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String extractFirstDivTagId(@org.jetbrains.annotations.NotNull java.lang.String r11) {
        /*
            r10 = this;
            java.lang.String r10 = "content"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r10)
            java.lang.String r10 = "<div.*>"
            java.util.regex.Pattern r10 = java.util.regex.Pattern.compile(r10)
            java.util.regex.Matcher r10 = r10.matcher(r11)
        Lf:
            boolean r11 = r10.find()
            if (r11 == 0) goto L93
            java.lang.String r11 = r10.group()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r11)
            java.lang.String r1 = ">"
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            r0 = r11
            int r0 = kotlin.text.StringsKt.indexOf$default(r0, r1, r2, r3, r4, r5)
            r1 = -1
            if (r0 != r1) goto L2b
            goto Lf
        L2b:
            int r0 = r0 + 1
            r2 = 0
            java.lang.String r11 = r11.substring(r2, r0)
            java.lang.String r0 = "this as java.lang.String…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r0)
            java.lang.String r4 = " id="
            r5 = 0
            r6 = 0
            r7 = 6
            r8 = 0
            r3 = r11
            int r0 = kotlin.text.StringsKt.indexOf$default(r3, r4, r5, r6, r7, r8)
            if (r0 != r1) goto L45
            goto Lf
        L45:
            int r0 = r0 + 4
            int r3 = r11.length()
            java.lang.CharSequence r11 = r11.subSequence(r0, r3)
            char r5 = kotlin.text.StringsKt.first(r11)
            r0 = 39
            r3 = 34
            if (r5 == r3) goto L5b
            if (r5 != r0) goto Lf
        L5b:
            r6 = 1
            r7 = 0
            r8 = 4
            r9 = 0
            r4 = r11
            int r4 = kotlin.text.StringsKt.indexOf$default(r4, r5, r6, r7, r8, r9)
            if (r4 != r1) goto L67
            goto Lf
        L67:
            r10 = 1
            int r4 = r4 + r10
            java.lang.CharSequence r11 = r11.subSequence(r2, r4)
            char r1 = kotlin.text.StringsKt.first(r11)
            if (r1 != r3) goto L79
            char r1 = kotlin.text.StringsKt.last(r11)
            if (r1 == r3) goto L85
        L79:
            char r1 = kotlin.text.StringsKt.first(r11)
            if (r1 != r0) goto L8e
            char r1 = kotlin.text.StringsKt.last(r11)
            if (r1 != r0) goto L8e
        L85:
            int r0 = r11.length()
            int r0 = r0 - r10
            java.lang.CharSequence r11 = r11.subSequence(r10, r0)
        L8e:
            java.lang.String r10 = r11.toString()
            return r10
        L93:
            r10 = 0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.HtmlUtils.extractFirstDivTagId(java.lang.String):java.lang.String");
    }

    @NotNull
    public final String getHtmlTextContent(@Nullable String html) {
        boolean endsWith$default;
        String replace$default;
        String obj;
        if (html == null || html.length() == 0) {
            return "";
        }
        String replace = new Regex(TAG_P_END).replace(new Regex(TAG_DIV_END).replace(new Regex(TAG_P).replace(new Regex(TAG_DIV).replace(new Regex("<div><br/>").replace(html, "<br/>"), "<br/>"), TAG_SPAN), ""), "</span><br/>");
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(replace, "<br/>", false, 2, null);
        if (endsWith$default) {
            replace = replace.substring(0, replace.length() - 5);
            Intrinsics.checkNotNullExpressionValue(replace, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        replace$default = StringsKt__StringsJVMKt.replace$default(replace, "\n", "<br/>", false, 4, (Object) null);
        Spanned fromHtml = Html.fromHtml(replace$default);
        return (fromHtml == null || (obj = fromHtml.toString()) == null) ? "" : obj;
    }
}
