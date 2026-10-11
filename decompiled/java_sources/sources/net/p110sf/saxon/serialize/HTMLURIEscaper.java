package net.p110sf.saxon.serialize;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.Scopes;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.text.Normalizer;
import java.util.function.Function;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.serialize.HTMLURIEscaper;
import net.p110sf.saxon.serialize.charcode.UTF8CharacterSet;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class HTMLURIEscaper extends ProxyReceiver {

    /* renamed from: e */
    public static final HTMLTagHashSet f101543e = new HTMLTagHashSet(47);

    /* renamed from: f */
    public static final HTMLTagHashSet f101544f = new HTMLTagHashSet(101);
    protected NodeName currentElement;
    protected boolean escapeURIAttributes;
    protected NamePool pool;

    static {
        m63829f("form", "action");
        m63829f("object", Constants.ATTRNAME_ARCHIVE);
        m63829f("body", NotificationCompat.WearableExtender.f5054t);
        m63829f("q", "cite");
        m63829f("blockquote", "cite");
        m63829f("del", "cite");
        m63829f("ins", "cite");
        m63829f("object", Constants.ATTRNAME_CLASSID);
        m63829f("object", Constants.ATTRNAME_CODEBASE);
        m63829f("applet", Constants.ATTRNAME_CODEBASE);
        m63829f("object", "data");
        m63829f("button", "datasrc");
        m63829f(gon.f71293q, "datasrc");
        m63829f("input", "datasrc");
        m63829f("object", "datasrc");
        m63829f("select", "datasrc");
        m63829f(gon.f71297s, "datasrc");
        m63829f("table", "datasrc");
        m63829f("textarea", "datasrc");
        m63829f(Constants.ELEMNAME_SCRIPT_STRING, "for");
        m63829f("a", "href");
        m63829f("a", "name");
        m63829f("area", "href");
        m63829f("link", "href");
        m63829f(gon.f71271X, "href");
        m63829f("img", "longdesc");
        m63829f(TypedValues.AttributesType.S_FRAME, "longdesc");
        m63829f("iframe", "longdesc");
        m63829f(gon.f71289o, Scopes.PROFILE);
        m63829f(Constants.ELEMNAME_SCRIPT_STRING, Constant.SRC_TAG);
        m63829f("input", Constant.SRC_TAG);
        m63829f(TypedValues.AttributesType.S_FRAME, Constant.SRC_TAG);
        m63829f("iframe", Constant.SRC_TAG);
        m63829f("img", Constant.SRC_TAG);
        m63829f("img", "usemap");
        m63829f("input", "usemap");
        m63829f("object", "usemap");
    }

    public HTMLURIEscaper(Receiver receiver) {
        super(receiver);
        this.escapeURIAttributes = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ AttributeInfo m63827d(NodeName nodeName, AttributeInfo attributeInfo) {
        if (ReceiverOption.contains(attributeInfo.getProperties(), 1) || !isUrlAttribute(nodeName, attributeInfo.getNodeName())) {
            return attributeInfo;
        }
        try {
            return new AttributeInfo(attributeInfo.getNodeName(), attributeInfo.getType(), escapeURL(attributeInfo.getValue(), true, getConfiguration()), attributeInfo.getLocation(), attributeInfo.getProperties() | 2);
        } catch (XPathException e) {
            throw new UncheckedXPathException(e);
        }
    }

    /* renamed from: e */
    public static UnicodeString m63828e(String str) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(str.length() + 20);
        IntIterator codePoints = StringTool.codePoints(str);
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (next < 32 || next > 126) {
                for (byte b : UTF8CharacterSet.encode(new IntSingletonIterator(next))) {
                    int i = b & 255;
                    unicodeBuilder.append('%').append("0123456789ABCDEF".charAt(i / 16)).append("0123456789ABCDEF".charAt(i % 16));
                }
            } else {
                unicodeBuilder.append(next);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    public static String escapeURL(String str, boolean z, Configuration configuration) throws XPathException {
        IntIterator codePoints = StringTool.codePoints(str);
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (next < 32 || next > 126) {
                return z ? m63828e(Normalizer.normalize(str, Normalizer.Form.NFC)).toString() : m63828e(str).toString();
            }
        }
        return str;
    }

    /* renamed from: f */
    public static void m63829f(String str, String str2) {
        f101543e.add(str2);
        f101544f.add(str + PhoneNumberUtil.f36455s + str2);
    }

    public boolean isUrlAttribute(NodeName nodeName, NodeName nodeName2) {
        if (this.pool == null) {
            this.pool = getNamePool();
        }
        String displayName = nodeName2.getDisplayName();
        if (!f101543e.contains(displayName)) {
            return false;
        }
        String displayName2 = nodeName.getDisplayName();
        return f101544f.contains(displayName2 + PhoneNumberUtil.f36455s + displayName);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        this.nextReceiver.startDocument(i);
        this.pool = getPipelineConfiguration().getConfiguration().getNamePool();
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
    public void startElement(final NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.currentElement = nodeName;
        if (this.escapeURIAttributes) {
            try {
                attributeMap = attributeMap.apply(new Function() { // from class: com.sunia.HTREnginev2.yeh
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        AttributeInfo m63827d;
                        m63827d = HTMLURIEscaper.this.m63827d(nodeName, (AttributeInfo) obj);
                        return m63827d;
                    }
                });
            } catch (UncheckedXPathException e) {
                throw e.getXPathException();
            }
        }
        this.nextReceiver.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }
}
