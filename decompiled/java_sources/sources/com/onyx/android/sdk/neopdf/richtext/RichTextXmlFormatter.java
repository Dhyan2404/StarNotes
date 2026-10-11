package com.onyx.android.sdk.neopdf.richtext;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.neopdf.richtext.style.FontStyle;
import com.onyx.android.sdk.neopdf.richtext.style.FontWeight;
import com.onyx.android.sdk.neopdf.richtext.style.RichTextStyle;
import com.onyx.android.sdk.neopdf.richtext.style.TextAlign;
import com.onyx.android.sdk.neopdf.richtext.style.TextDecoration;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.o6o;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Result;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.scribe.model.ParameterList;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0002J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/richtext/RichTextXmlFormatter;", "", "Lcom/onyx/android/sdk/neopdf/richtext/Body;", "body", "", "formatRichTextString", "text", "a", "Lorg/w3c/dom/Document;", "doc", "Ljava/io/OutputStream;", Constants.ELEMNAME_OUTPUT_STRING, "", "b", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "StyleBuilder", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RichTextXmlFormatter {

    @NotNull
    public static final RichTextXmlFormatter INSTANCE = new RichTextXmlFormatter();

    /* loaded from: classes7.dex */
    public static final class StyleBuilder {

        /* renamed from: a */
        @NotNull
        public final RichTextStyle f43043a;

        /* renamed from: b */
        @NotNull
        public final StringBuilder f43044b;

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;
            public static final /* synthetic */ int[] $EnumSwitchMapping$2;
            public static final /* synthetic */ int[] $EnumSwitchMapping$3;

            static {
                int[] iArr = new int[TextAlign.values().length];
                try {
                    iArr[TextAlign.CENTER.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TextAlign.RIGHT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[TextDecoration.values().length];
                try {
                    iArr2[TextDecoration.UNDERLINE.ordinal()] = 1;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$1 = iArr2;
                int[] iArr3 = new int[FontStyle.values().length];
                try {
                    iArr3[FontStyle.ITALIC.ordinal()] = 1;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$2 = iArr3;
                int[] iArr4 = new int[FontWeight.values().length];
                try {
                    iArr4[FontWeight.BOLD.ordinal()] = 1;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$3 = iArr4;
            }
        }

        public StyleBuilder(@NotNull RichTextStyle style) {
            Intrinsics.checkNotNullParameter(style, "style");
            this.f43043a = style;
            this.f43044b = new StringBuilder();
        }

        /* renamed from: a */
        public final void m33568a(String str, String str2) {
            StringBuilder sb = this.f43044b;
            sb.append(str);
            sb.append(":");
            sb.append(str2);
            sb.append(AndroidTreeView.f47214k);
        }

        @NotNull
        /* renamed from: b */
        public final String m33569b() {
            m33568a(o6o.f79398h, m33571d());
            m33568a(o6o.f79400j, m33572e());
            m33568a("line-height", m33576i());
            m33568a("color", m33570c());
            m33568a("text-align", m33577j());
            m33568a(o6o.f79407q, m33578k());
            m33568a(o6o.f79410t, m33574g());
            m33568a(o6o.f79399i, m33575h());
            m33568a("font-stretch", m33573f());
            String sb = this.f43044b.toString();
            Intrinsics.checkNotNullExpressionValue(sb, "toString(...)");
            return sb;
        }

        /* renamed from: c */
        public final String m33570c() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("#%06x", Arrays.copyOf(new Object[]{Integer.valueOf(this.f43043a.getColor() & 16777215)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            return format;
        }

        /* renamed from: d */
        public final String m33571d() {
            if (this.f43043a.getFontFamily().getFonts().isEmpty()) {
                return "Helv";
            }
            String str = this.f43043a.getFontFamily().getFonts().get(0);
            Intrinsics.checkNotNull(str);
            return str;
        }

        /* renamed from: e */
        public final String m33572e() {
            return this.f43043a.getFontSize() + ExtUnits.UNIT_PT;
        }

        /* renamed from: f */
        public final String m33573f() {
            this.f43043a.getFontStretch();
            return "normal";
        }

        /* renamed from: g */
        public final String m33574g() {
            return WhenMappings.$EnumSwitchMapping$2[this.f43043a.getFontStyle().ordinal()] == 1 ? "italic" : "normal";
        }

        /* renamed from: h */
        public final String m33575h() {
            return WhenMappings.$EnumSwitchMapping$3[this.f43043a.getFontWeight().ordinal()] == 1 ? "bold" : "normal";
        }

        /* renamed from: i */
        public final String m33576i() {
            return (this.f43043a.getFontSize() * this.f43043a.getLineHeight()) + ExtUnits.UNIT_PT;
        }

        /* renamed from: j */
        public final String m33577j() {
            int i = WhenMappings.$EnumSwitchMapping$0[this.f43043a.getTextAlign().ordinal()];
            return i != 1 ? i != 2 ? "left" : gon.f71288n0 : "center";
        }

        /* renamed from: k */
        public final String m33578k() {
            return WhenMappings.$EnumSwitchMapping$1[this.f43043a.getTextDecoration().ordinal()] == 1 ? "underline" : "normal";
        }
    }

    /* renamed from: a */
    public final String m33566a(String text) {
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkNotNull(text);
        int codePointCount = text.codePointCount(0, text.length());
        for (int i = 0; i < codePointCount; i++) {
            sb.append("&#");
            sb.append(text.codePointAt(i));
            sb.append(AndroidTreeView.f47214k);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: b */
    public final void m33567b(Document doc, OutputStream output) throws TransformerException {
        TransformerFactory.newInstance().newTransformer().transform(new DOMSource(doc), new StreamResult(output));
    }

    @NotNull
    public final String formatRichTextString(@NotNull Body body) {
        Intrinsics.checkNotNullParameter(body, "body");
        try {
            Document newDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
            Element createElement = newDocument.createElement("body");
            Attr createAttribute = newDocument.createAttribute("xmlns");
            createAttribute.setValue("http://www.w3.org/1999/xhtml");
            createElement.setAttributeNode(createAttribute);
            createElement.setAttributeNS("http://www.xfa.org/schema/xfa-data/1.0/", "xfa:APIVersion", "Acrobat:11.0.0");
            createElement.setAttributeNS("http://www.xfa.org/schema/xfa-data/1.0/", "xfa:spec", "2.0.2");
            newDocument.appendChild(createElement);
            Element createElement2 = newDocument.createElement("p");
            createElement2.setAttribute(CouchFieldKey.KEY_DIR, "ltr");
            createElement.appendChild(createElement2);
            Paragraph paragraph = body.getParagraph();
            List<Span> spans = paragraph != null ? paragraph.getSpans() : null;
            if (CollectionKt.isNonBlank(spans)) {
                createElement.setAttribute("style", new StyleBuilder(spans.get(0).getStyle()).m33569b());
                int size = spans.size();
                for (int i = 0; i < size; i++) {
                    Span span = spans.get(i);
                    Element createElement3 = newDocument.createElement(gon.f71297s);
                    createElement3.setAttribute("style", new StyleBuilder(span.getStyle()).m33569b());
                    createElement3.setTextContent(m33566a(span.getText()));
                    Node createProcessingInstruction = newDocument.createProcessingInstruction(Result.PI_DISABLE_OUTPUT_ESCAPING, ParameterList.f115951c);
                    Intrinsics.checkNotNullExpressionValue(createProcessingInstruction, "createProcessingInstruction(...)");
                    createElement2.appendChild(createProcessingInstruction);
                    createElement2.appendChild(createElement3);
                }
                Node createProcessingInstruction2 = newDocument.createProcessingInstruction(Result.PI_ENABLE_OUTPUT_ESCAPING, ParameterList.f115951c);
                Intrinsics.checkNotNullExpressionValue(createProcessingInstruction2, "createProcessingInstruction(...)");
                createElement2.appendChild(createProcessingInstruction2);
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Intrinsics.checkNotNull(newDocument);
            m33567b(newDocument, byteArrayOutputStream);
            String byteArrayOutputStream2 = byteArrayOutputStream.toString();
            Intrinsics.checkNotNullExpressionValue(byteArrayOutputStream2, "toString(...)");
            return byteArrayOutputStream2;
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
