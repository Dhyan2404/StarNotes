package net.p110sf.saxon.event;

import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceBindingSet;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.AbstractUniStringConsumer;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class Outputter implements Receiver {
    protected PipelineConfiguration pipelineConfiguration;
    protected String systemId = null;

    /* renamed from: net.sf.saxon.event.Outputter$a */
    /* loaded from: classes11.dex */
    public class C18275a extends AbstractUniStringConsumer {

        /* renamed from: e */
        public final UnicodeBuilder f99009e = new UnicodeBuilder();

        /* renamed from: f */
        public final /* synthetic */ Location f99010f;

        public C18275a(Location location) {
            this.f99010f = location;
        }

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public UniStringConsumer accept(UnicodeString unicodeString) {
            this.f99009e.accept(unicodeString);
            return this;
        }

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public void close() throws XPathException {
            Outputter.this.characters(this.f99009e.toUnicodeString(), this.f99010f, 0);
        }
    }

    /* renamed from: net.sf.saxon.event.Outputter$b */
    /* loaded from: classes11.dex */
    public class C18276b extends AbstractUniStringConsumer {

        /* renamed from: e */
        public final UnicodeBuilder f99012e = new UnicodeBuilder();

        public C18276b() {
        }

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public UniStringConsumer accept(UnicodeString unicodeString) {
            this.f99012e.accept(unicodeString);
            return this;
        }

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public void close() throws XPathException {
            Outputter.this.append(new StringValue(this.f99012e.toUnicodeString()));
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        throw new UnsupportedOperationException();
    }

    public abstract void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException;

    @Override // net.p110sf.saxon.event.Receiver
    public abstract void characters(UnicodeString unicodeString, Location location, int i) throws XPathException;

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public abstract void comment(UnicodeString unicodeString, Location location, int i) throws XPathException;

    @Override // net.p110sf.saxon.event.Receiver
    public abstract void endDocument() throws XPathException;

    @Override // net.p110sf.saxon.event.Receiver
    public abstract void endElement() throws XPathException;

    public final Configuration getConfiguration() {
        return this.pipelineConfiguration.getConfiguration();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public PipelineConfiguration getPipelineConfiguration() {
        return this.pipelineConfiguration;
    }

    public UniStringConsumer getStringReceiver(boolean z, Location location) {
        return z ? new C18275a(location) : new C18276b();
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.systemId;
    }

    public abstract void namespace(String str, String str2, int i) throws XPathException;

    public void namespaces(NamespaceBindingSet namespaceBindingSet, int i) throws XPathException {
        for (NamespaceBinding namespaceBinding : namespaceBindingSet) {
            namespace(namespaceBinding.getPrefix(), namespaceBinding.getURI(), i);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public abstract void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException;

    @Override // net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.pipelineConfiguration = pipelineConfiguration;
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.systemId = str;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
    }

    public void startContent() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public abstract void startDocument(int i) throws XPathException;

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        startElement(nodeName, schemaType, location, i);
        Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            namespace(next.getPrefix(), next.getURI(), i);
        }
        for (AttributeInfo attributeInfo : attributeMap) {
            attribute(attributeInfo.getNodeName(), attributeInfo.getType(), attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties());
        }
        startContent();
    }

    public abstract void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) throws XPathException;

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void append(Item item) throws XPathException {
        m62516b(item, Loc.NONE, 524288);
    }
}
