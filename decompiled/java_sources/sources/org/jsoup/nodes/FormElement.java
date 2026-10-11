package org.jsoup.nodes;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.DebugKt;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.helper.HttpConnection;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

/* loaded from: classes13.dex */
public class FormElement extends Element {

    /* renamed from: t */
    public final Elements f114099t;

    public FormElement(Tag tag, String str, Attributes attributes) {
        super(tag, str, attributes);
        this.f114099t = new Elements();
    }

    public FormElement addElement(Element element) {
        this.f114099t.add(element);
        return this;
    }

    public Elements elements() {
        return this.f114099t;
    }

    public List<Connection.KeyVal> formData() {
        String str;
        ArrayList arrayList = new ArrayList();
        Iterator<Element> it2 = this.f114099t.iterator();
        while (it2.hasNext()) {
            Element next = it2.next();
            if (next.tag().isFormSubmittable() && !next.hasAttr("disabled")) {
                String attr = next.attr("name");
                if (attr.length() != 0) {
                    String attr2 = next.attr("type");
                    if (!attr2.equalsIgnoreCase("button")) {
                        if ("select".equals(next.normalName())) {
                            Iterator<Element> it3 = next.select("option[selected]").iterator();
                            boolean z = false;
                            while (it3.hasNext()) {
                                arrayList.add(HttpConnection.KeyVal.create(attr, it3.next().val()));
                                z = true;
                            }
                            if (!z && (next = next.select("option").first()) != null) {
                                str = next.val();
                            }
                        } else {
                            if ("checkbox".equalsIgnoreCase(attr2) || "radio".equalsIgnoreCase(attr2)) {
                                if (next.hasAttr("checked")) {
                                    if (next.val().length() <= 0) {
                                        str = DebugKt.DEBUG_PROPERTY_VALUE_ON;
                                    }
                                }
                            }
                            str = next.val();
                        }
                        arrayList.add(HttpConnection.KeyVal.create(attr, str));
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // org.jsoup.nodes.Node
    public void removeChild(Node node) {
        super.removeChild(node);
        this.f114099t.remove(node);
    }

    public Connection submit() {
        String absUrl = hasAttr("action") ? absUrl("action") : baseUri();
        Validate.notEmpty(absUrl, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing.");
        return Jsoup.connect(absUrl).data(formData()).method(attr("method").toUpperCase().equals("POST") ? Connection.Method.POST : Connection.Method.GET);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone */
    public FormElement mo74371clone() {
        return (FormElement) super.mo74371clone();
    }
}
