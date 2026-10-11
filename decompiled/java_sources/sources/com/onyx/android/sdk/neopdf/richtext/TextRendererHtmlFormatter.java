package com.onyx.android.sdk.neopdf.richtext;

import android.graphics.Color;
import android.text.TextUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.util.ColorParser;
import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.neopdf.richtext.style.FontStyle;
import com.onyx.android.sdk.neopdf.richtext.style.FontWeight;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyleBuilder;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyleKt;
import com.onyx.android.sdk.neopdf.richtext.style.TextAlign;
import com.onyx.android.sdk.neopdf.richtext.style.TextDecoration;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.o6o;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b-\u0010.J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007J&\u0010\u0014\u001a\u00020\u00132\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J&\u0010\u0015\u001a\u00020\u00132\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J&\u0010\u0018\u001a\u00020\u00132\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J&\u0010\u0019\u001a\u00020\u00132\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0010\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J&\u0010\u001a\u001a\u00020\u00132\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0002H\u0002J\u0018\u0010!\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010\"\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010#\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010$\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010%\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010&\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002J\u0018\u0010'\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0002H\u0002R\u001c\u0010*\u001a\n (*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010)R\u0016\u0010+\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010)R\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010)¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter;", "", "", "html", "Lcom/onyx/android/sdk/neopdf/richtext/Body;", "parseHtml", "color", "", "parseRGBColor", "red", "green", "blue", "", "Lcom/onyx/android/sdk/neopdf/richtext/Span;", "spans", "Lorg/w3c/dom/Element;", "element", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "style", "", "j", "i", "Lorg/w3c/dom/Node;", "node", "m", C4921e.f26537n, "l", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;", "builder", "styleAttribute", "a", "attribute", "", "e", "b", C6998g.f39679a, C6997f.f39671c, C6999h.f39688c, "c", "d", "kotlin.jvm.PlatformType", Constants.STRING_SIG, "TAG", "HEX_COLOR_START", "RGB_COLOR_START", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextRendererHtmlFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRendererHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,415:1\n37#2,2:416\n37#2,2:419\n37#2,2:422\n13309#3:418\n13310#3:421\n*S KotlinDebug\n*F\n+ 1 TextRendererHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/TextRendererHtmlFormatter\n*L\n209#1:416,2\n215#1:419,2\n398#1:422,2\n214#1:418\n214#1:421\n*E\n"})
/* loaded from: classes7.dex */
public final class TextRendererHtmlFormatter {

    @NotNull
    public static final TextRendererHtmlFormatter INSTANCE = new TextRendererHtmlFormatter();

    /* renamed from: a, reason: from kotlin metadata */
    public static final String TAG = TextRendererHtmlFormatter.class.getSimpleName();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static String HEX_COLOR_START = "#";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static String RGB_COLOR_START = ColorUtils.RGB_COLOR_START;

    /* renamed from: a */
    public final boolean m33579a(RichTextStyleBuilder builder, String styleAttribute) {
        CharSequence trim;
        List split$default;
        CharSequence trim2;
        List split$default2;
        CharSequence trim3;
        CharSequence trim4;
        trim = StringsKt__StringsKt.trim((CharSequence) styleAttribute);
        split$default = StringsKt__StringsKt.split$default((CharSequence) trim.toString(), new String[]{AndroidTreeView.f47214k}, false, 0, 6, (Object) null);
        String[] strArr = (String[]) split$default.toArray(new String[0]);
        if (strArr.length == 0) {
            Debug.INSTANCE.m32047e(TAG, "Invalid style attributes: " + styleAttribute, new Object[0]);
            return false;
        }
        for (String str : strArr) {
            trim2 = StringsKt__StringsKt.trim((CharSequence) str);
            split$default2 = StringsKt__StringsKt.split$default((CharSequence) trim2.toString(), new String[]{":"}, false, 0, 6, (Object) null);
            String[] strArr2 = (String[]) split$default2.toArray(new String[0]);
            if (strArr2.length != 2) {
                Debug.INSTANCE.m32047e(TAG, "Invalid style attribute: " + str, new Object[0]);
                return false;
            }
            trim3 = StringsKt__StringsKt.trim((CharSequence) strArr2[0]);
            String obj = trim3.toString();
            trim4 = StringsKt__StringsKt.trim((CharSequence) strArr2[1]);
            String obj2 = trim4.toString();
            if (Intrinsics.areEqual(obj, o6o.f79400j) && !INSTANCE.m33580b(builder, obj2)) {
                return false;
            }
            if (Intrinsics.areEqual(obj, "color") && !INSTANCE.m33585g(builder, obj2)) {
                return false;
            }
            if (Intrinsics.areEqual(obj, "text-align") && !INSTANCE.m33584f(builder, obj2)) {
                return false;
            }
            if (Intrinsics.areEqual(obj, "text-decoration-line") && !INSTANCE.m33586h(builder, obj2)) {
                return false;
            }
            if (Intrinsics.areEqual(obj, o6o.f79407q) && !INSTANCE.m33586h(builder, obj2)) {
                return false;
            }
            if (Intrinsics.areEqual(obj, o6o.f79410t) && !INSTANCE.m33581c(builder, obj2)) {
                return false;
            }
            if (Intrinsics.areEqual(obj, o6o.f79399i) && !INSTANCE.m33582d(builder, obj2)) {
                return false;
            }
            if (Intrinsics.areEqual(obj, "line-height")) {
                INSTANCE.m33583e(builder, obj2);
            }
        }
        return true;
    }

    /* renamed from: b */
    public final boolean m33580b(RichTextStyleBuilder builder, String attribute) {
        boolean endsWith$default;
        boolean endsWith$default2;
        boolean endsWith$default3;
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(attribute, ExtUnits.UNIT_PX, false, 2, null);
        if (!endsWith$default) {
            endsWith$default3 = StringsKt__StringsJVMKt.endsWith$default(attribute, ExtUnits.UNIT_PT, false, 2, null);
            if (!endsWith$default3) {
                Debug.INSTANCE.m32047e(TAG, "Invalid font-size attribute value: " + attribute, new Object[0]);
                return false;
            }
        }
        try {
            String substring = attribute.substring(0, attribute.length() - 2);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            float parseFloat = Float.parseFloat(substring);
            endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(attribute, ExtUnits.UNIT_PT, false, 2, null);
            if (endsWith$default2) {
                builder.setFontSize(parseFloat);
                return true;
            }
            builder.setFontSize(DimenUtils.INSTANCE.dip2px(ResManager.INSTANCE.getAppContext(), parseFloat));
            return true;
        } catch (Throwable th) {
            Debug.INSTANCE.m32047e(TAG, th.toString(), new Object[0]);
            return false;
        }
    }

    /* renamed from: c */
    public final boolean m33581c(RichTextStyleBuilder builder, String attribute) {
        if (Intrinsics.areEqual(attribute, "italic")) {
            builder.setFontStyle(FontStyle.ITALIC);
            return true;
        }
        if (Intrinsics.areEqual(attribute, "normal")) {
            return true;
        }
        Debug.INSTANCE.m32047e(TAG, "Invalid font-style attribute value: " + attribute, new Object[0]);
        return false;
    }

    /* renamed from: d */
    public final boolean m33582d(RichTextStyleBuilder builder, String attribute) {
        if (Intrinsics.areEqual(attribute, "bold")) {
            builder.setFontWeight(FontWeight.BOLD);
            return true;
        }
        if (Intrinsics.areEqual(attribute, "normal")) {
            return true;
        }
        Debug.INSTANCE.m32047e(TAG, "Invalid fontWeight attribute value: " + attribute, new Object[0]);
        return false;
    }

    /* renamed from: e */
    public final void m33583e(RichTextStyleBuilder builder, String attribute) {
        try {
            builder.setLineHeight(Float.parseFloat(attribute));
        } catch (Exception unused) {
        }
    }

    /* renamed from: f */
    public final boolean m33584f(RichTextStyleBuilder builder, String attribute) {
        int hashCode = attribute.hashCode();
        if (hashCode != -1364013995) {
            if (hashCode != 3317767) {
                if (hashCode == 108511772 && attribute.equals(gon.f71288n0)) {
                    builder.setTextAlign(TextAlign.RIGHT);
                    return true;
                }
            } else if (attribute.equals("left")) {
                builder.setTextAlign(TextAlign.LEFT);
                return true;
            }
        } else if (attribute.equals("center")) {
            builder.setTextAlign(TextAlign.CENTER);
            return true;
        }
        Debug.INSTANCE.m32047e(TAG, "Invalid text-align attribute value: " + attribute, new Object[0]);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0011, code lost:
    
        if (r0 == false) goto L6;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m33585g(com.onyx.android.sdk.neopdf.richtext.style.RichTextStyleBuilder r5, java.lang.String r6) {
        /*
            r4 = this;
            java.lang.String r0 = "rgb("
            r1 = 0
            r2 = 2
            r3 = 0
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r6, r0, r1, r2, r3)
            if (r0 == 0) goto L13
            java.lang.String r0 = ")"
            boolean r0 = kotlin.text.StringsKt.endsWith$default(r6, r0, r1, r2, r3)
            if (r0 != 0) goto L1b
        L13:
            java.lang.String r0 = com.onyx.android.sdk.neopdf.richtext.TextRendererHtmlFormatter.HEX_COLOR_START
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r6, r0, r1, r2, r3)
            if (r0 == 0) goto L24
        L1b:
            int r4 = r4.parseRGBColor(r6)
            r5.setColor(r4)
            r4 = 1
            return r4
        L24:
            com.onyx.android.sdk.base.utils.Debug r4 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.String r5 = com.onyx.android.sdk.neopdf.richtext.TextRendererHtmlFormatter.TAG
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Invalid color attribute value: "
            r0.append(r2)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.Object[] r0 = new java.lang.Object[r1]
            r4.m32047e(r5, r6, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.neopdf.richtext.TextRendererHtmlFormatter.m33585g(com.onyx.android.sdk.neopdf.richtext.style.RichTextStyleBuilder, java.lang.String):boolean");
    }

    /* renamed from: h */
    public final boolean m33586h(RichTextStyleBuilder builder, String attribute) {
        if (Intrinsics.areEqual(attribute, "underline")) {
            builder.setTextDecoration(TextDecoration.UNDERLINE);
            return true;
        }
        if (Intrinsics.areEqual(attribute, "normal")) {
            return true;
        }
        Debug.INSTANCE.m32047e(TAG, "Invalid text-decoration-line attribute value: " + attribute, new Object[0]);
        return false;
    }

    /* renamed from: i */
    public final boolean m33587i(List<Span> spans, Element element, RichTextStyle style) {
        boolean isBlank;
        RichTextStyleBuilder builder = RichTextStyleKt.toBuilder(style);
        String attribute = element.getAttribute("style");
        Intrinsics.checkNotNull(attribute);
        isBlank = StringsKt__StringsJVMKt.isBlank(attribute);
        if (!isBlank) {
            String attribute2 = element.getAttribute("style");
            Intrinsics.checkNotNullExpressionValue(attribute2, "getAttribute(...)");
            if (!m33579a(builder, attribute2)) {
                return false;
            }
        }
        RichTextStyle build = builder.build();
        int length = element.getChildNodes().getLength();
        for (int i = 0; i < length; i++) {
            Node item = element.getChildNodes().item(i);
            Intrinsics.checkNotNullExpressionValue(item, "item(...)");
            if (!m33591m(spans, item, build)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: j */
    public final boolean m33588j(List<Span> spans, Element element, RichTextStyle style) {
        Element element2;
        boolean isBlank;
        int length = element.getChildNodes().getLength();
        int i = 0;
        while (true) {
            if (i >= length) {
                element2 = null;
                break;
            }
            if (element.getChildNodes().item(i).getNodeType() == 1) {
                Node item = element.getChildNodes().item(i);
                Intrinsics.checkNotNull(item, "null cannot be cast to non-null type org.w3c.dom.Element");
                element2 = (Element) item;
                if (Intrinsics.areEqual(element2.getTagName(), gon.f71293q)) {
                    break;
                }
            }
            i++;
        }
        if (element2 == null) {
            Debug.INSTANCE.m32047e(TAG, "editor div element not found!", new Object[0]);
            return false;
        }
        RichTextStyleBuilder builder = RichTextStyleKt.toBuilder(style);
        String attribute = element.getAttribute("style");
        Intrinsics.checkNotNull(attribute);
        isBlank = StringsKt__StringsJVMKt.isBlank(attribute);
        if (!isBlank) {
            String attribute2 = element.getAttribute("style");
            Intrinsics.checkNotNullExpressionValue(attribute2, "getAttribute(...)");
            if (!m33579a(builder, attribute2)) {
                return false;
            }
        }
        return m33587i(spans, element2, builder.build());
    }

    /* renamed from: k */
    public final boolean m33589k(List<Span> spans, Node element, RichTextStyle style) {
        RichTextStyle copy;
        SpanBuilder spanBuilder = new SpanBuilder();
        copy = style.copy((r20 & 1) != 0 ? style.textAlign : null, (r20 & 2) != 0 ? style.fontSize : 0.0f, (r20 & 4) != 0 ? style.lineHeight : 0.0f, (r20 & 8) != 0 ? style.fontStyle : null, (r20 & 16) != 0 ? style.fontWeight : null, (r20 & 32) != 0 ? style.fontFamily : null, (r20 & 64) != 0 ? style.color : 0, (r20 & 128) != 0 ? style.textDecoration : null, (r20 & 256) != 0 ? style.fontStretch : null);
        spanBuilder.setStyle(copy);
        String textContent = element.getTextContent();
        Intrinsics.checkNotNullExpressionValue(textContent, "getTextContent(...)");
        spanBuilder.setText(textContent);
        spans.add(spanBuilder.build());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0065, code lost:
    
        if (r0.equals(org.apache.poi.util.ExtUnits.UNIT_EM) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a7, code lost:
    
        r9.setFontStyle(com.onyx.android.sdk.neopdf.richtext.style.FontStyle.ITALIC);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x006e, code lost:
    
        if (r0.equals("br") == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008d, code lost:
    
        if (r7.size() <= 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008f, code lost:
    
        r7.get(r7.size() - 1).appendTextLineBreak();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0086, code lost:
    
        if (r0.equals("p") == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00a4, code lost:
    
        if (r0.equals("i") == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b3, code lost:
    
        if (r0.equals("b") == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d9, code lost:
    
        r9.setFontWeight(com.onyx.android.sdk.neopdf.richtext.style.FontWeight.BOLD);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00bc, code lost:
    
        if (r0.equals("strong") == false) goto L56;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m33590l(java.util.List<com.onyx.android.sdk.neopdf.richtext.Span> r7, org.w3c.dom.Element r8, com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle r9) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.neopdf.richtext.TextRendererHtmlFormatter.m33590l(java.util.List, org.w3c.dom.Element, com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle):boolean");
    }

    /* renamed from: m */
    public final boolean m33591m(List<Span> spans, Node node, RichTextStyle style) {
        RichTextStyle copy;
        if (node.getNodeType() == 3) {
            return m33589k(spans, node, style);
        }
        if (node.getNodeType() == 1) {
            Intrinsics.checkNotNull(node, "null cannot be cast to non-null type org.w3c.dom.Element");
            return m33590l(spans, (Element) node, style);
        }
        if (node.getNodeType() == 5 && TextUtils.equals("nbsp", node.getNodeName())) {
            SpanBuilder spanBuilder = new SpanBuilder();
            copy = style.copy((r20 & 1) != 0 ? style.textAlign : null, (r20 & 2) != 0 ? style.fontSize : 0.0f, (r20 & 4) != 0 ? style.lineHeight : 0.0f, (r20 & 8) != 0 ? style.fontStyle : null, (r20 & 16) != 0 ? style.fontWeight : null, (r20 & 32) != 0 ? style.fontFamily : null, (r20 & 64) != 0 ? style.color : 0, (r20 & 128) != 0 ? style.textDecoration : null, (r20 & 256) != 0 ? style.fontStretch : null);
            spanBuilder.setStyle(copy);
            spanBuilder.setText("");
            spans.add(spanBuilder.build());
            return true;
        }
        Debug.INSTANCE.m32047e(TAG, "Invalid node type: " + ((int) node.getNodeType()) + ", " + node.getNodeName(), new Object[0]);
        return false;
    }

    @Nullable
    public final Body parseHtml(@NotNull String html) {
        Intrinsics.checkNotNullParameter(html, "html");
        try {
            DocumentBuilder newDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            byte[] bytes = html.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            Document parse = newDocumentBuilder.parse(new ByteArrayInputStream(bytes));
            if (parse == null) {
                Debug.INSTANCE.m32047e(TAG, "parse html failed!", new Object[0]);
                return null;
            }
            Node item = parse.getElementsByTagName("body").item(0);
            if (item == null) {
                Debug.INSTANCE.m32047e(TAG, "body element not found!", new Object[0]);
                return null;
            }
            Node item2 = item.getChildNodes().item(1);
            if (item2 != null && item2.getNodeType() == 1) {
                Element element = (Element) item2;
                if (!Intrinsics.areEqual(element.getTagName(), gon.f71293q)) {
                    Debug.INSTANCE.m32047e(TAG, "invalid main div element: " + element.getTagName(), new Object[0]);
                    return null;
                }
                BodyBuilder bodyBuilder = new BodyBuilder();
                ParagraphBuilder paragraphBuilder = new ParagraphBuilder();
                RichTextStyle build = new RichTextStyleBuilder().build();
                ArrayList arrayList = new ArrayList();
                if (!m33588j(arrayList, element, build)) {
                    return null;
                }
                paragraphBuilder.setSpans(arrayList);
                bodyBuilder.setParagraph(paragraphBuilder.build());
                return bodyBuilder.build();
            }
            Debug.INSTANCE.m32047e(TAG, "main div element not found!", new Object[0]);
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final int parseRGBColor(int red, int green, int blue) {
        return (red << 16) | (-16777216) | (green << 8) | blue;
    }

    public final int parseRGBColor(@NotNull String color) {
        boolean startsWith$default;
        String replace$default;
        String replace$default2;
        String replace$default3;
        String replace$default4;
        List split$default;
        CharSequence trim;
        CharSequence trim2;
        CharSequence trim3;
        Intrinsics.checkNotNullParameter(color, "color");
        if (color.length() == 0) {
            Debug.INSTANCE.m32044e(androidx.core.graphics.ColorUtils.class, "empty color", new Object[0]);
            return -16777216;
        }
        if (StringUtils.startsWithIgnoreCase(color, RGB_COLOR_START)) {
            replace$default = StringsKt__StringsJVMKt.replace$default(color, RGB_COLOR_START, "", false, 4, (Object) null);
            replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, ColorParser.f28273a, "", false, 4, (Object) null);
            replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, MotionUtils.f31761c, "", false, 4, (Object) null);
            replace$default4 = StringsKt__StringsJVMKt.replace$default(replace$default3, MotionUtils.f31762d, "", false, 4, (Object) null);
            split$default = StringsKt__StringsKt.split$default((CharSequence) replace$default4, new String[]{","}, false, 0, 6, (Object) null);
            String[] strArr = (String[]) split$default.toArray(new String[0]);
            if (strArr.length != 3) {
                Debug.INSTANCE.m32044e(androidx.core.graphics.ColorUtils.class, "error color: " + replace$default4, new Object[0]);
            }
            trim = StringsKt__StringsKt.trim((CharSequence) strArr[0]);
            int parseInt = Integer.parseInt(trim.toString());
            trim2 = StringsKt__StringsKt.trim((CharSequence) strArr[1]);
            int parseInt2 = Integer.parseInt(trim2.toString());
            trim3 = StringsKt__StringsKt.trim((CharSequence) strArr[2]);
            return parseRGBColor(parseInt, parseInt2, Integer.parseInt(trim3.toString()));
        }
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(color, HEX_COLOR_START, false, 2, null);
        if (startsWith$default) {
            return Color.parseColor(color);
        }
        return -16777216;
    }
}
