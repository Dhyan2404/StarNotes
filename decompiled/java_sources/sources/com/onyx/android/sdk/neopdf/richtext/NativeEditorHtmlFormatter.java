package com.onyx.android.sdk.neopdf.richtext;

import android.text.TextUtils;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyleBuilder;
import com.onyx.android.sdk.neopdf.richtext.style.TextAlign;
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
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b&\u0010'J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0004H\u0002J&\u0010\u0014\u001a\u00020\u00132\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J&\u0010\u0015\u001a\u00020\u00132\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000e2\u0006\u0010\t\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J&\u0010\u0016\u001a\u00020\u00132\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0002H\u0002J\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u0018\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0002H\u0002J\u0018\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0002H\u0002R\u001c\u0010!\u001a\n \u001f*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010 R\u0014\u0010\"\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010 R\u0014\u0010#\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010 R\u0014\u0010$\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010 R\u0014\u0010%\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010 ¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter;", "", "", "html", "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;", "baseStyle", "Lcom/onyx/android/sdk/neopdf/richtext/Body;", "parseHtml", "Lorg/w3c/dom/Element;", "element", "currentStyle", "", "Lcom/onyx/android/sdk/neopdf/richtext/Span;", "e", "", "spans", "Lorg/w3c/dom/Node;", "node", "style", "", C6999h.f39688c, C6997f.f39671c, C6998g.f39679a, "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyleBuilder;", "builder", "styleAttribute", "a", "attribute", "b", "d", "c", "kotlin.jvm.PlatformType", Constants.STRING_SIG, "TAG", "STR_NBSP", "HEX_COLOR_START", "HTML_TAG_VERSION", "HTML_ATTR_ALIGN", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNativeEditorHtmlFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeEditorHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n766#2:214\n857#2,2:215\n1855#2:217\n1856#2:220\n37#3,2:218\n1#4:221\n*S KotlinDebug\n*F\n+ 1 NativeEditorHtmlFormatter.kt\ncom/onyx/android/sdk/neopdf/richtext/NativeEditorHtmlFormatter\n*L\n145#1:214\n145#1:215,2\n150#1:217\n150#1:220\n151#1:218,2\n*E\n"})
/* loaded from: classes7.dex */
public final class NativeEditorHtmlFormatter {

    @NotNull
    public static final NativeEditorHtmlFormatter INSTANCE = new NativeEditorHtmlFormatter();

    /* renamed from: a, reason: from kotlin metadata */
    public static final String TAG = NativeEditorHtmlFormatter.class.getSimpleName();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String STR_NBSP = "nbsp";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String HEX_COLOR_START = "#";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String HTML_TAG_VERSION = "version";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String HTML_ATTR_ALIGN = "align";

    /* renamed from: a */
    public final boolean m33558a(RichTextStyleBuilder builder, String styleAttribute) {
        CharSequence trim;
        List split$default;
        CharSequence trim2;
        List split$default2;
        CharSequence trim3;
        CharSequence trim4;
        boolean isBlank;
        trim = StringsKt__StringsKt.trim((CharSequence) styleAttribute);
        split$default = StringsKt__StringsKt.split$default((CharSequence) trim.toString(), new String[]{AndroidTreeView.f47214k}, false, 0, 6, (Object) null);
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : split$default) {
            isBlank = StringsKt__StringsJVMKt.isBlank((String) obj);
            if (true ^ isBlank) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            Debug.INSTANCE.m32047e(TAG, "Invalid style attributes: " + styleAttribute, new Object[0]);
            return false;
        }
        for (String str : arrayList) {
            trim2 = StringsKt__StringsKt.trim((CharSequence) str);
            split$default2 = StringsKt__StringsKt.split$default((CharSequence) trim2.toString(), new String[]{":"}, false, 0, 6, (Object) null);
            String[] strArr = (String[]) split$default2.toArray(new String[0]);
            if (strArr.length != 2) {
                Debug.INSTANCE.m32047e(TAG, "Invalid style attribute: " + str, new Object[0]);
                return false;
            }
            trim3 = StringsKt__StringsKt.trim((CharSequence) strArr[0]);
            String obj2 = trim3.toString();
            trim4 = StringsKt__StringsKt.trim((CharSequence) strArr[1]);
            String obj3 = trim4.toString();
            if (Intrinsics.areEqual(obj2, o6o.f79400j) && !INSTANCE.m33559b(builder, obj3)) {
                return false;
            }
            if (Intrinsics.areEqual(obj2, "color") && !INSTANCE.m33561d(builder, obj3)) {
                return false;
            }
            if (Intrinsics.areEqual(obj2, "align") && !INSTANCE.m33560c(builder, obj3)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public final boolean m33559b(RichTextStyleBuilder builder, String attribute) {
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
    public final boolean m33560c(RichTextStyleBuilder builder, String attribute) {
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

    /* renamed from: d */
    public final boolean m33561d(RichTextStyleBuilder builder, String attribute) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(attribute, "#", false, 2, null);
        if (startsWith$default) {
            Object parseColorSafety = ColorKt.parseColorSafety(attribute);
            if (Result.m72628isSuccessimpl(parseColorSafety)) {
                if (Result.m72624exceptionOrNullimpl(parseColorSafety) != null) {
                    parseColorSafety = -16777216;
                }
                builder.setColor(((Number) parseColorSafety).intValue());
                return true;
            }
        }
        Debug.INSTANCE.m32047e(TAG, "Invalid color attribute value: " + attribute, new Object[0]);
        return false;
    }

    /* renamed from: e */
    public final List<Span> m33562e(Element element, RichTextStyle currentStyle) {
        ArrayList arrayList = new ArrayList();
        int length = element.getChildNodes().getLength();
        for (int i = 0; i < length; i++) {
            Node item = element.getChildNodes().item(i);
            Intrinsics.checkNotNullExpressionValue(item, "item(...)");
            if (!m33565h(arrayList, item, currentStyle)) {
                return null;
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public final boolean m33563f(List<Span> spans, Node element, RichTextStyle style) {
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        if (r0.equals("font") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005e, code lost:
    
        if (r0.equals(com.sunia.HTREnginev2.gon.f71293q) == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
    
        if (r0.equals(org.apache.poi.util.ExtUnits.UNIT_EM) == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00af, code lost:
    
        r9.setFontStyle(com.onyx.android.sdk.neopdf.richtext.style.FontStyle.ITALIC);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0072, code lost:
    
        if (r0.equals("br") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
    
        if (r7.size() <= 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0096, code lost:
    
        r7.get(r7.size() - 1).appendTextLineBreak();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008c, code lost:
    
        if (r0.equals("p") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ab, code lost:
    
        if (r0.equals("i") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00bb, code lost:
    
        if (r0.equals("b") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c7, code lost:
    
        r9.setFontWeight(com.onyx.android.sdk.neopdf.richtext.style.FontWeight.BOLD);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c4, code lost:
    
        if (r0.equals("strong") == false) goto L61;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0023. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x010d  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m33564g(java.util.List<com.onyx.android.sdk.neopdf.richtext.Span> r7, org.w3c.dom.Element r8, com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle r9) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.neopdf.richtext.NativeEditorHtmlFormatter.m33564g(java.util.List, org.w3c.dom.Element, com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle):boolean");
    }

    /* renamed from: h */
    public final boolean m33565h(List<Span> spans, Node node, RichTextStyle style) {
        RichTextStyle copy;
        if (node.getNodeType() == 3) {
            return m33563f(spans, node, style);
        }
        if (node.getNodeType() == 1) {
            Intrinsics.checkNotNull(node, "null cannot be cast to non-null type org.w3c.dom.Element");
            return m33564g(spans, (Element) node, style);
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
    public final Body parseHtml(@NotNull String html, @NotNull RichTextStyle baseStyle) {
        Intrinsics.checkNotNullParameter(html, "html");
        Intrinsics.checkNotNullParameter(baseStyle, "baseStyle");
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
        Node item2 = item.getChildNodes().item(0);
        if (item2 == null || item2.getNodeType() != 1) {
            Debug.INSTANCE.m32047e(TAG, "main div element not found!", new Object[0]);
            return null;
        }
        Element element = (Element) item2;
        if (!Intrinsics.areEqual(element.getTagName(), gon.f71293q)) {
            Debug.INSTANCE.m32047e(TAG, "invalid main div element: " + element.getTagName(), new Object[0]);
            return null;
        }
        BodyBuilder bodyBuilder = new BodyBuilder();
        ParagraphBuilder paragraphBuilder = new ParagraphBuilder();
        List<Span> m33562e = m33562e(element, baseStyle);
        List<Span> list = m33562e;
        if (list == null || list.isEmpty()) {
            return null;
        }
        paragraphBuilder.setSpans(m33562e);
        bodyBuilder.setParagraph(paragraphBuilder.build());
        return bodyBuilder.build();
    }
}
