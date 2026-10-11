package com.sunia.HTREnginev2;

import java.util.Collections;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Node;

/* loaded from: classes13.dex */
public abstract class bzo extends Node {

    /* renamed from: n */
    public static final List<Node> f66300n = Collections.emptyList();

    /* renamed from: m */
    public Object f66301m;

    /* renamed from: b */
    private void m53365b() {
        if (hasAttributes()) {
            return;
        }
        Object obj = this.f66301m;
        Attributes attributes = new Attributes();
        this.f66301m = attributes;
        if (obj != null) {
            attributes.put(nodeName(), (String) obj);
        }
    }

    @Override // org.jsoup.nodes.Node
    public String absUrl(String str) {
        m53365b();
        return super.absUrl(str);
    }

    @Override // org.jsoup.nodes.Node
    public String attr(String str) {
        Validate.notNull(str);
        return !hasAttributes() ? str.equals(nodeName()) ? (String) this.f66301m : "" : super.attr(str);
    }

    @Override // org.jsoup.nodes.Node
    public final Attributes attributes() {
        m53365b();
        return (Attributes) this.f66301m;
    }

    @Override // org.jsoup.nodes.Node
    public String baseUri() {
        return hasParent() ? parent().baseUri() : "";
    }

    @Override // org.jsoup.nodes.Node
    public int childNodeSize() {
        return 0;
    }

    @Override // org.jsoup.nodes.Node
    public bzo doClone(Node node) {
        bzo bzoVar = (bzo) super.doClone(node);
        if (hasAttributes()) {
            bzoVar.f66301m = ((Attributes) this.f66301m).clone();
        }
        return bzoVar;
    }

    @Override // org.jsoup.nodes.Node
    public void doSetBaseUri(String str) {
    }

    @Override // org.jsoup.nodes.Node
    public Node empty() {
        return this;
    }

    @Override // org.jsoup.nodes.Node
    public List<Node> ensureChildNodes() {
        return f66300n;
    }

    /* renamed from: h */
    public String m53366h() {
        return attr(nodeName());
    }

    @Override // org.jsoup.nodes.Node
    public boolean hasAttr(String str) {
        m53365b();
        return super.hasAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    public final boolean hasAttributes() {
        return this.f66301m instanceof Attributes;
    }

    /* renamed from: i */
    public void m53367i(String str) {
        attr(nodeName(), str);
    }

    @Override // org.jsoup.nodes.Node
    public Node removeAttr(String str) {
        m53365b();
        return super.removeAttr(str);
    }

    @Override // org.jsoup.nodes.Node
    public Node attr(String str, String str2) {
        if (hasAttributes() || !str.equals(nodeName())) {
            m53365b();
            super.attr(str, str2);
        } else {
            this.f66301m = str2;
        }
        return this;
    }
}
