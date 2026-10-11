package org.jsoup.nodes;

import com.sun.org.apache.xpath.internal.compiler.PsuedoNames;
import com.sunia.HTREnginev2.bzo;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;

/* loaded from: classes13.dex */
public class Comment extends bzo {
    public Comment(String str) {
        this.f66301m = str;
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    public XmlDeclaration asXmlDeclaration() {
        String data = getData();
        Document parse = Jsoup.parse("<" + data.substring(1, data.length() - 1) + ">", baseUri(), Parser.xmlParser());
        if (parse.children().size() <= 0) {
            return null;
        }
        Element child = parse.child(0);
        XmlDeclaration xmlDeclaration = new XmlDeclaration(C20256e.m71163b(parse).settings().normalizeTag(child.tagName()), data.startsWith("!"));
        xmlDeclaration.attributes().addAll(child.attributes());
        return xmlDeclaration;
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (r5.outline() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        if (((org.jsoup.nodes.Element) r0).tag().formatAsBlock() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        indent(r3, r4, r5);
     */
    @Override // org.jsoup.nodes.Node
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo71115f(java.lang.Appendable r3, int r4, org.jsoup.nodes.Document.OutputSettings r5) throws java.io.IOException {
        /*
            r2 = this;
            boolean r0 = r5.prettyPrint()
            if (r0 == 0) goto L27
            int r0 = r2.siblingIndex()
            if (r0 != 0) goto L1e
            org.jsoup.nodes.Node r0 = r2.f114101e
            boolean r1 = r0 instanceof org.jsoup.nodes.Element
            if (r1 == 0) goto L1e
            org.jsoup.nodes.Element r0 = (org.jsoup.nodes.Element) r0
            org.jsoup.parser.Tag r0 = r0.tag()
            boolean r0 = r0.formatAsBlock()
            if (r0 != 0) goto L24
        L1e:
            boolean r0 = r5.outline()
            if (r0 == 0) goto L27
        L24:
            r2.indent(r3, r4, r5)
        L27:
            java.lang.String r4 = "<!--"
            java.lang.Appendable r3 = r3.append(r4)
            java.lang.String r2 = r2.getData()
            java.lang.Appendable r2 = r3.append(r2)
            java.lang.String r3 = "-->"
            r2.append(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.Comment.mo71115f(java.lang.Appendable, int, org.jsoup.nodes.Document$OutputSettings):void");
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: g */
    public void mo71116g(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    public String getData() {
        return m53366h();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    public boolean isXmlDeclaration() {
        String data = getData();
        return data.length() > 1 && (data.startsWith("!") || data.startsWith("?"));
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return PsuedoNames.PSEUDONAME_COMMENT;
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    public Comment setData(String str) {
        m53367i(str);
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public String toString() {
        return outerHtml();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node attr(String str, String str2) {
        return super.attr(str, str2);
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: clone */
    public Comment mo74371clone() {
        return (Comment) super.mo74371clone();
    }
}
