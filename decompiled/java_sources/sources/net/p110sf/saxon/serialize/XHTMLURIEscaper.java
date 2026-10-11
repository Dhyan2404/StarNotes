package net.p110sf.saxon.serialize;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.Scopes;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.text.Normalizer;
import java.util.HashSet;
import java.util.function.Function;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.XHTMLURIEscaper;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class XHTMLURIEscaper extends HTMLURIEscaper {

    /* renamed from: g */
    public static final HashSet<String> f101622g = new HashSet<>(70);

    /* renamed from: h */
    public static final HashSet<String> f101623h = new HashSet<>(20);

    static {
        m63863j("form", "action");
        m63863j("object", Constants.ATTRNAME_ARCHIVE);
        m63863j("body", NotificationCompat.WearableExtender.f5054t);
        m63863j("q", "cite");
        m63863j("blockquote", "cite");
        m63863j("del", "cite");
        m63863j("ins", "cite");
        m63863j("object", Constants.ATTRNAME_CLASSID);
        m63863j("object", Constants.ATTRNAME_CODEBASE);
        m63863j("applet", Constants.ATTRNAME_CODEBASE);
        m63863j("object", "data");
        m63863j("button", "datasrc");
        m63863j(gon.f71293q, "datasrc");
        m63863j("input", "datasrc");
        m63863j("object", "datasrc");
        m63863j("select", "datasrc");
        m63863j(gon.f71297s, "datasrc");
        m63863j("table", "datasrc");
        m63863j("textarea", "datasrc");
        m63863j(Constants.ELEMNAME_SCRIPT_STRING, "for");
        m63863j("a", "href");
        m63863j("a", "name");
        m63863j("area", "href");
        m63863j("link", "href");
        m63863j(gon.f71271X, "href");
        m63863j("img", "longdesc");
        m63863j(TypedValues.AttributesType.S_FRAME, "longdesc");
        m63863j("iframe", "longdesc");
        m63863j(gon.f71289o, Scopes.PROFILE);
        m63863j(Constants.ELEMNAME_SCRIPT_STRING, Constant.SRC_TAG);
        m63863j("input", Constant.SRC_TAG);
        m63863j(TypedValues.AttributesType.S_FRAME, Constant.SRC_TAG);
        m63863j("iframe", Constant.SRC_TAG);
        m63863j("img", Constant.SRC_TAG);
        m63863j("img", "usemap");
        m63863j("input", "usemap");
        m63863j("object", "usemap");
    }

    public XHTMLURIEscaper(Receiver receiver) {
        super(receiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ AttributeInfo m63859d(NodeName nodeName, AttributeInfo attributeInfo) {
        if (!ReceiverOption.contains(attributeInfo.getProperties(), 1)) {
            NodeName nodeName2 = attributeInfo.getNodeName();
            if (isUrlAttribute(nodeName, nodeName2)) {
                String value = attributeInfo.getValue();
                try {
                    if (!m63861h(value)) {
                        value = Normalizer.normalize(value, Normalizer.Form.NFC);
                    }
                    return new AttributeInfo(nodeName2, attributeInfo.getType(), HTMLURIEscaper.escapeURL(value, true, getConfiguration()), attributeInfo.getLocation(), attributeInfo.getProperties() | 2);
                } catch (XPathException e) {
                    throw new UncheckedXPathException(e);
                }
            }
        }
        return attributeInfo;
    }

    /* renamed from: h */
    public static boolean m63861h(CharSequence charSequence) {
        for (int i = 0; i < charSequence.length(); i++) {
            if (charSequence.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    public static boolean m63862i(NodeName nodeName, NodeName nodeName2) {
        if (!nodeName.hasURI("http://www.w3.org/1999/xhtml") || !nodeName2.hasURI("")) {
            return false;
        }
        String localPart = nodeName2.getLocalPart();
        if (!f101623h.contains(localPart)) {
            return false;
        }
        HashSet<String> hashSet = f101622g;
        StringBuilder sb = new StringBuilder();
        sb.append(nodeName.getLocalPart());
        sb.append("+");
        sb.append(localPart);
        return hashSet.contains(sb.toString());
    }

    /* renamed from: j */
    public static void m63863j(String str, String str2) {
        f101623h.add(str2);
        f101622g.add(str + "+" + str2);
    }

    @Override // net.p110sf.saxon.serialize.HTMLURIEscaper, net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(final NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.currentElement = nodeName;
        if (this.escapeURIAttributes) {
            try {
                attributeMap = attributeMap.apply(new Function() { // from class: com.sunia.HTREnginev2.jlo
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        AttributeInfo m63859d;
                        m63859d = XHTMLURIEscaper.this.m63859d(nodeName, (AttributeInfo) obj);
                        return m63859d;
                    }
                });
            } catch (UncheckedXPathException e) {
                throw e.getXPathException();
            }
        }
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
