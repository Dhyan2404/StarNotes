package org.jsoup.nodes;

import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import com.sunia.HTREnginev2.bzo;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* loaded from: classes13.dex */
public class TextNode extends bzo {
    public TextNode(String str) {
        this.f66301m = str;
    }

    public static TextNode createFromEncoded(String str) {
        return new TextNode(Entities.unescape(str));
    }

    /* renamed from: j */
    public static boolean m71157j(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    /* renamed from: k */
    public static String m71158k(String str) {
        return StringUtil.normaliseWhitespace(str);
    }

    /* renamed from: l */
    public static String m71159l(String str) {
        return str.replaceFirst("^\\s+", "");
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String baseUri() {
        return super.baseUri();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ int childNodeSize() {
        return super.childNodeSize();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node empty() {
        return super.empty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        if (isBlank() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
    
        indent(r10, r11, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
    
        if (isBlank() == false) goto L18;
     */
    @Override // org.jsoup.nodes.Node
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo71115f(java.lang.Appendable r10, int r11, org.jsoup.nodes.Document.OutputSettings r12) throws java.io.IOException {
        /*
            r9 = this;
            boolean r0 = r12.prettyPrint()
            if (r0 == 0) goto L3d
            int r1 = r9.siblingIndex()
            if (r1 != 0) goto L24
            org.jsoup.nodes.Node r1 = r9.f114101e
            boolean r2 = r1 instanceof org.jsoup.nodes.Element
            if (r2 == 0) goto L24
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            org.jsoup.parser.Tag r1 = r1.tag()
            boolean r1 = r1.formatAsBlock()
            if (r1 == 0) goto L24
            boolean r1 = r9.isBlank()
            if (r1 == 0) goto L3a
        L24:
            boolean r1 = r12.outline()
            if (r1 == 0) goto L3d
            java.util.List r1 = r9.siblingNodes()
            int r1 = r1.size()
            if (r1 <= 0) goto L3d
            boolean r1 = r9.isBlank()
            if (r1 != 0) goto L3d
        L3a:
            r9.indent(r10, r11, r12)
        L3d:
            r11 = 1
            r1 = 0
            if (r0 == 0) goto L4b
            org.jsoup.nodes.Node r2 = r9.f114101e
            boolean r2 = org.jsoup.nodes.Element.m71132t(r2)
            if (r2 != 0) goto L4b
            r7 = r11
            goto L4c
        L4b:
            r7 = r1
        L4c:
            if (r0 == 0) goto L56
            org.jsoup.nodes.Node r0 = r9.f114101e
            boolean r0 = r0 instanceof org.jsoup.nodes.Document
            if (r0 == 0) goto L56
            r8 = r11
            goto L57
        L56:
            r8 = r1
        L57:
            java.lang.String r11 = r9.m53366h()
            boolean r0 = org.jsoup.nodes.Node.DEBUG_POS
            if (r0 == 0) goto L86
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "["
            r0.append(r1)
            int r1 = r9.f114105i
            r0.append(r1)
            java.lang.String r1 = ","
            r0.append(r1)
            int r9 = r9.f114107k
            r0.append(r9)
            java.lang.String r9 = "]"
            r0.append(r9)
            r0.append(r11)
            java.lang.String r9 = r0.toString()
            r4 = r9
            goto L87
        L86:
            r4 = r11
        L87:
            r6 = 0
            r3 = r10
            r5 = r12
            org.jsoup.nodes.Entities.m71147e(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.TextNode.mo71115f(java.lang.Appendable, int, org.jsoup.nodes.Document$OutputSettings):void");
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: g */
    public void mo71116g(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    public String getWholeText() {
        return m53366h();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    public boolean isBlank() {
        return StringUtil.isBlank(m53366h());
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return PsuedoNames.PSEUDONAME_TEXT;
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    public TextNode splitText(int i) {
        String m53366h = m53366h();
        Validate.isTrue(i >= 0, "Split offset must be not be negative");
        Validate.isTrue(i < m53366h.length(), "Split offset must not be greater than current text length");
        String substring = m53366h.substring(0, i);
        String substring2 = m53366h.substring(i);
        text(substring);
        TextNode textNode = new TextNode(substring2);
        if (parent() != null) {
            parent().addChildren(siblingIndex() + 1, textNode);
        }
        return textNode;
    }

    public String text() {
        return StringUtil.normaliseWhitespace(getWholeText());
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node attr(String str, String str2) {
        return super.attr(str, str2);
    }

    public TextNode text(String str) {
        m53367i(str);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public TextNode mo74371clone() {
        return (TextNode) super.mo74371clone();
    }
}
