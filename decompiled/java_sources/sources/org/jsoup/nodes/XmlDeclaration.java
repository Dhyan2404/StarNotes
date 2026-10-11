package org.jsoup.nodes;

import com.sunia.HTREnginev2.bzo;
import java.io.IOException;
import java.util.Iterator;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;

/* loaded from: classes13.dex */
public class XmlDeclaration extends bzo {

    /* renamed from: o */
    public final boolean f114110o;

    public XmlDeclaration(String str, boolean z) {
        Validate.notNull(str);
        this.f66301m = str;
        this.f114110o = z;
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

    @Override // org.jsoup.nodes.Node
    /* renamed from: f */
    public void mo71115f(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        appendable.append("<").append(this.f114110o ? "!" : "?").append(m53366h());
        m71160j(appendable, outputSettings);
        appendable.append(this.f114110o ? "!" : "?").append(">");
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: g */
    public void mo71116g(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    public String getWholeDeclaration() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        try {
            m71160j(borrowBuilder, new Document.OutputSettings());
            return StringUtil.releaseBuilder(borrowBuilder).trim();
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    /* renamed from: j */
    public final void m71160j(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        Iterator<Attribute> it2 = attributes().iterator();
        while (it2.hasNext()) {
            Attribute next = it2.next();
            if (!next.getKey().equals(nodeName())) {
                appendable.append(' ');
                next.html(appendable, outputSettings);
            }
        }
    }

    public String name() {
        return m53366h();
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#declaration";
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
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
    public XmlDeclaration mo74371clone() {
        return (XmlDeclaration) super.mo74371clone();
    }
}
