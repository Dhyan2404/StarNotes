package com.onyx.android.sdk.neopdf;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.o6o;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashMap;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Result;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.scribe.model.ParameterList;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.ProcessingInstruction;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0013\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u000eB\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0006\u0010\r\u001a\u00020\nJ\u0012\u0010\u000e\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002R\u0014\u0010\u0010\u001a\u00020\n8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u000fR\u0011\u0010\u0019\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;", "", "", gon.f71257J, "setFontSize", "", "fontColor", "setFontColor", gon.f71264Q, "setTextAlign", "", "text", "setText", PrivilegedApp.f6529f, "a", Constants.STRING_SIG, "fontName", "b", "F", "c", "I", "d", "e", "getDefaultStyle", "()Ljava/lang/String;", "defaultStyle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PdfRichTextBuilder {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: d, reason: from kotlin metadata */
    public int textAlign;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String fontName = "Helv";

    /* renamed from: b, reason: from kotlin metadata */
    public float fontSize = 12.0f;

    /* renamed from: c, reason: from kotlin metadata */
    public int fontColor = -16777216;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public String text = "";

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002R\u0011\u0010\u000f\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$Companion;", "", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "text", "Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;", "createFromFreeTextShape", "Lorg/w3c/dom/Document;", "doc", "Ljava/io/OutputStream;", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_OUTPUT_STRING, "", "a", "", "getOldRichTextDefaultStyle", "()Ljava/lang/String;", "oldRichTextDefaultStyle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m33546a(Document doc, OutputStream output) throws TransformerException {
            TransformerFactory.newInstance().newTransformer().transform(new DOMSource(doc), new StreamResult(output));
        }

        @NotNull
        public final PdfRichTextBuilder createFromFreeTextShape(@NotNull PdfShapeInfo text) {
            Intrinsics.checkNotNullParameter(text, "text");
            return new PdfRichTextBuilder().setFontSize(text.getFontSize()).setFontColor(text.getFontcolor()).setTextAlign(text.getTextAlign()).setText(text.getText());
        }

        @NotNull
        public final String getOldRichTextDefaultStyle() {
            return new PdfRichTextBuilder().setFontColor(0).getDefaultStyle();
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.neopdf.PdfRichTextBuilder$a */
    /* loaded from: classes7.dex */
    public final class C7483a {

        /* renamed from: a */
        @NotNull
        public final HashMap<Integer, String> f43012a;

        /* renamed from: b */
        @NotNull
        public final StringBuilder f43013b;

        public C7483a() {
            HashMap<Integer, String> hashMap = new HashMap<>();
            this.f43012a = hashMap;
            this.f43013b = new StringBuilder();
            hashMap.put(0, "left");
            hashMap.put(1, "center");
            hashMap.put(2, gon.f71288n0);
        }

        /* renamed from: a */
        public final void m33547a(String str, String str2) {
            StringBuilder sb = this.f43013b;
            sb.append(str);
            sb.append(":");
            sb.append(str2);
            sb.append(AndroidTreeView.f47214k);
        }

        @NotNull
        /* renamed from: b */
        public final String m33548b() {
            m33547a(o6o.f79398h, m33550d());
            m33547a(o6o.f79400j, m33551e());
            m33547a("color", m33549c());
            m33547a("text-align", m33552f());
            m33547a(o6o.f79410t, "normal");
            m33547a(o6o.f79399i, "normal");
            String sb = this.f43013b.toString();
            Intrinsics.checkNotNullExpressionValue(sb, "toString(...)");
            return sb;
        }

        /* renamed from: c */
        public final String m33549c() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("#%06x", Arrays.copyOf(new Object[]{Integer.valueOf(PdfRichTextBuilder.this.fontColor & 16777215)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            return format;
        }

        /* renamed from: d */
        public final String m33550d() {
            return PdfRichTextBuilder.this.fontName;
        }

        /* renamed from: e */
        public final String m33551e() {
            return PdfRichTextBuilder.this.fontSize + ExtUnits.UNIT_PT;
        }

        /* renamed from: f */
        public final String m33552f() {
            return this.f43012a.containsKey(Integer.valueOf(PdfRichTextBuilder.this.textAlign)) ? this.f43012a.get(Integer.valueOf(PdfRichTextBuilder.this.textAlign)) : this.f43012a.get(0);
        }
    }

    /* renamed from: a */
    public final String m33545a(String text) {
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

    @NotNull
    public final String build() {
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
            Element createElement3 = newDocument.createElement(gon.f71297s);
            createElement3.setAttribute("style", new C7483a().m33548b());
            createElement3.setTextContent(m33545a(this.text));
            ProcessingInstruction createProcessingInstruction = newDocument.createProcessingInstruction(Result.PI_DISABLE_OUTPUT_ESCAPING, ParameterList.f115951c);
            Intrinsics.checkNotNullExpressionValue(createProcessingInstruction, "createProcessingInstruction(...)");
            createElement2.appendChild(createProcessingInstruction);
            createElement2.appendChild(createElement3);
            ProcessingInstruction createProcessingInstruction2 = newDocument.createProcessingInstruction(Result.PI_ENABLE_OUTPUT_ESCAPING, ParameterList.f115951c);
            Intrinsics.checkNotNullExpressionValue(createProcessingInstruction2, "createProcessingInstruction(...)");
            createElement2.appendChild(createProcessingInstruction2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Companion companion = INSTANCE;
            Intrinsics.checkNotNull(newDocument);
            companion.m33546a(newDocument, byteArrayOutputStream);
            String byteArrayOutputStream2 = byteArrayOutputStream.toString();
            Intrinsics.checkNotNullExpressionValue(byteArrayOutputStream2, "toString(...)");
            return byteArrayOutputStream2;
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    @NotNull
    public final String getDefaultStyle() {
        return new C7483a().m33548b();
    }

    @NotNull
    public final PdfRichTextBuilder setFontColor(int fontColor) {
        this.fontColor = fontColor;
        return this;
    }

    @NotNull
    public final PdfRichTextBuilder setFontSize(float fontSize) {
        this.fontSize = fontSize;
        return this;
    }

    @NotNull
    public final PdfRichTextBuilder setText(@Nullable String text) {
        this.text = text;
        return this;
    }

    @NotNull
    public final PdfRichTextBuilder setTextAlign(int textAlign) {
        this.textAlign = textAlign;
        return this;
    }
}
