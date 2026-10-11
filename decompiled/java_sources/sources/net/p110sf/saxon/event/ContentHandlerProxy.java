package net.p110sf.saxon.event;

import java.util.Iterator;
import java.util.Properties;
import java.util.Stack;
import javax.xml.transform.Result;
import javax.xml.transform.sax.TransformerHandler;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.AttributeCollectionImpl;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes11.dex */
public class ContentHandlerProxy implements Receiver {

    /* renamed from: n */
    public static final String f98951n = "##";

    /* renamed from: o */
    public static final /* synthetic */ boolean f98952o = false;

    /* renamed from: e */
    public PipelineConfiguration f98953e;

    /* renamed from: f */
    public String f98954f;
    protected ContentHandler handler;

    /* renamed from: l */
    public ContentHandlerProxyTraceListener f98960l;
    protected LexicalHandler lexicalHandler;

    /* renamed from: g */
    public int f98955g = 0;

    /* renamed from: h */
    public boolean f98956h = false;

    /* renamed from: i */
    public boolean f98957i = false;

    /* renamed from: j */
    public final Stack<String> f98958j = new Stack<>();

    /* renamed from: k */
    public final Stack<String> f98959k = new Stack<>();

    /* renamed from: m */
    public Location f98961m = Loc.NONE;

    /* loaded from: classes11.dex */
    public static class ContentHandlerProxyTraceListener implements TraceListener {

        /* renamed from: e */
        public Stack<Item> f98962e;

        @Override // net.p110sf.saxon.lib.TraceListener
        public void close() {
            this.f98962e = null;
        }

        @Override // net.p110sf.saxon.lib.TraceListener
        public void endCurrentItem(Item item) {
            this.f98962e.pop();
        }

        public Stack<Item> getContextItemStack() {
            return this.f98962e;
        }

        @Override // net.p110sf.saxon.lib.TraceListener
        public void open(Controller controller) {
            this.f98962e = new Stack<>();
        }

        @Override // net.p110sf.saxon.lib.TraceListener
        public void setOutputDestination(Logger logger) {
        }

        @Override // net.p110sf.saxon.lib.TraceListener
        public void startCurrentItem(Item item) {
            if (this.f98962e == null) {
                this.f98962e = new Stack<>();
            }
            this.f98962e.push(item);
        }
    }

    /* renamed from: a */
    public final void m62493a(SAXException sAXException) throws XPathException {
        Exception exception = sAXException.getException();
        if (exception instanceof XPathException) {
            throw ((XPathException) exception);
        }
        if (exception instanceof SchemaException) {
            throw new XPathException(exception);
        }
        XPathException xPathException = new XPathException(sAXException);
        xPathException.setErrorCode(SaxonErrorCode.SXCH0003);
        throw xPathException;
    }

    /* renamed from: b */
    public final void m62494b(boolean z) {
        try {
            this.handler.processingInstruction(z ? Result.PI_ENABLE_OUTPUT_ESCAPING : Result.PI_DISABLE_OUTPUT_ESCAPING, "");
        } catch (SAXException e) {
            throw new AssertionError(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98961m = location;
        boolean contains = ReceiverOption.contains(i, 1);
        if (contains) {
            m62494b(false);
        }
        try {
            if (this.f98955g > 0 || !this.f98956h) {
                String obj = unicodeString.toString();
                this.handler.characters(obj.toCharArray(), 0, obj.length());
            } else if (!Whitespace.isAllWhite(unicodeString)) {
                notifyNotWellFormed();
            }
        } catch (SAXException e) {
            m62493a(e);
        }
        if (contains) {
            m62494b(true);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        if (this.f98955g >= 0) {
            try {
                this.handler.endDocument();
            } catch (SAXException e) {
                m62493a(e);
            }
        }
        this.f98955g = -1;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98961m = location;
        try {
            if (this.lexicalHandler != null) {
                String obj = unicodeString.toString();
                this.lexicalHandler.comment(obj.toCharArray(), 0, obj.length());
            }
        } catch (SAXException e) {
            m62493a(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        if (this.f98955g > 0) {
            try {
                String pop = this.f98958j.pop();
                this.handler.endElement(this.f98958j.pop(), this.f98958j.pop(), pop);
            } catch (SAXException e) {
                m62493a(e);
            }
        }
        while (true) {
            String pop2 = this.f98959k.pop();
            if (pop2.equals(f98951n)) {
                break;
            }
            try {
                this.handler.endPrefixMapping(pop2);
            } catch (SAXException e2) {
                m62493a(e2);
            }
        }
        int i = this.f98955g - 1;
        this.f98955g = i;
        if (!this.f98956h || i > 0) {
            return;
        }
        this.f98955g = Integer.MIN_VALUE;
    }

    public Configuration getConfiguration() {
        return this.f98953e.getConfiguration();
    }

    public Location getCurrentLocation() {
        return this.f98961m;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public PipelineConfiguration getPipelineConfiguration() {
        return this.f98953e;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.f98954f;
    }

    public ContentHandlerProxyTraceListener getTraceListener() {
        if (this.f98960l == null) {
            this.f98960l = new ContentHandlerProxyTraceListener();
        }
        return this.f98960l;
    }

    public ContentHandler getUnderlyingContentHandler() {
        return this.handler;
    }

    public boolean isRequireWellFormed() {
        return this.f98956h;
    }

    public boolean isUndeclareNamespaces() {
        return this.f98957i;
    }

    public void notifyNotWellFormed() throws XPathException {
        XPathException xPathException = new XPathException("The result tree cannot be supplied to the ContentHandler because it is not well-formed XML");
        xPathException.setErrorCode(SaxonErrorCode.SXCH0002);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        if (this.handler == null) {
            throw new IllegalStateException("ContentHandlerProxy.open(): no underlying handler provided");
        }
        try {
            this.handler.setDocumentLocator(new ContentHandlerProxyLocator(this));
            this.handler.startDocument();
        } catch (SAXException e) {
            m62493a(e);
        }
        this.f98955g = 0;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f98961m = location;
        try {
            this.handler.processingInstruction(str, unicodeString.toString());
        } catch (SAXException e) {
            m62493a(e);
        }
    }

    public void setLexicalHandler(LexicalHandler lexicalHandler) {
        this.lexicalHandler = lexicalHandler;
    }

    public void setOutputProperties(Properties properties) {
        String property = properties.getProperty(SaxonOutputKeys.REQUIRE_WELL_FORMED);
        if (property != null) {
            this.f98956h = property.equals("yes");
        }
        String property2 = properties.getProperty(SaxonOutputKeys.UNDECLARE_PREFIXES);
        if (property2 != null) {
            this.f98957i = property2.equals("yes");
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.f98953e = pipelineConfiguration;
    }

    public void setRequireWellFormed(boolean z) {
        this.f98956h = z;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.f98954f = str;
    }

    public void setUndeclareNamespaces(boolean z) {
        this.f98957i = z;
    }

    public void setUnderlyingContentHandler(ContentHandler contentHandler) {
        this.handler = contentHandler;
        if (contentHandler instanceof LexicalHandler) {
            this.lexicalHandler = (LexicalHandler) contentHandler;
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
        ContentHandler contentHandler = this.handler;
        if (contentHandler instanceof TransformerHandler) {
            try {
                ((TransformerHandler) contentHandler).unparsedEntityDecl(str, str3, str2, "unknown");
            } catch (SAXException e) {
                throw new XPathException(e);
            }
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        Attributes attributes;
        int i2 = this.f98955g + 1;
        this.f98955g = i2;
        if (i2 <= 0 && this.f98956h) {
            notifyNotWellFormed();
        }
        this.f98961m = location.saveLocation();
        this.f98959k.push(f98951n);
        Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            String prefix = next.getPrefix();
            if (prefix.equals("xml")) {
                return;
            }
            String uri = next.getURI();
            if (!this.f98957i && uri.isEmpty() && !prefix.isEmpty()) {
                return;
            }
            try {
                this.handler.startPrefixMapping(prefix, uri);
                this.f98959k.push(prefix);
            } catch (SAXException e) {
                m62493a(e);
            }
        }
        if (attributeMap instanceof Attributes) {
            attributes = (Attributes) attributeMap;
        } else {
            AttributeCollectionImpl attributeCollectionImpl = new AttributeCollectionImpl(getConfiguration(), attributeMap.size());
            for (AttributeInfo attributeInfo : attributeMap) {
                attributeCollectionImpl.addAttribute(attributeInfo.getNodeName(), BuiltInAtomicType.UNTYPED_ATOMIC, attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties());
            }
            attributes = attributeCollectionImpl;
        }
        if (this.f98955g > 0 || !this.f98956h) {
            try {
                String uri2 = nodeName.getURI();
                String localPart = nodeName.getLocalPart();
                String displayName = nodeName.getDisplayName();
                this.handler.startElement(uri2, localPart, displayName, attributes);
                this.f98958j.push(uri2);
                this.f98958j.push(localPart);
                this.f98958j.push(displayName);
            } catch (SAXException e2) {
                m62493a(e2);
            }
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return false;
    }
}
