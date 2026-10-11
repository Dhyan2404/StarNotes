package org.jsoup.nodes;

import com.sunia.HTREnginev2.bzo;
import java.io.IOException;
import org.jsoup.nodes.Document;

/* loaded from: classes13.dex */
public class DataNode extends bzo {
    public DataNode(String str) {
        this.f66301m = str;
    }

    public static DataNode createFromEncoded(String str, String str2) {
        return new DataNode(Entities.unescape(str));
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
        appendable.append(getWholeData());
    }

    @Override // org.jsoup.nodes.Node
    /* renamed from: g */
    public void mo71116g(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    public String getWholeData() {
        return m53366h();
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    public String nodeName() {
        return "#data";
    }

    @Override // com.sunia.HTREnginev2.bzo, org.jsoup.nodes.Node
    public /* bridge */ /* synthetic */ Node removeAttr(String str) {
        return super.removeAttr(str);
    }

    public DataNode setWholeData(String str) {
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
    public DataNode mo74371clone() {
        return (DataNode) super.mo74371clone();
    }
}
