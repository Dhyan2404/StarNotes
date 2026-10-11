package net.p110sf.saxon.event;

import java.util.Arrays;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class TreeReceiver extends SequenceReceiver {

    /* renamed from: e */
    public final Receiver f99136e;

    /* renamed from: f */
    public int f99137f;

    /* renamed from: g */
    public boolean[] f99138g;

    public TreeReceiver(Receiver receiver) {
        super(receiver.getPipelineConfiguration());
        this.f99137f = 0;
        this.f99138g = new boolean[20];
        this.f99136e = receiver;
        this.previousAtomic = false;
        setPipelineConfiguration(receiver.getPipelineConfiguration());
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        decompose(item, location, i);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (!unicodeString.isEmpty()) {
            this.f99136e.characters(unicodeString, location, i);
        }
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        Receiver receiver = this.f99136e;
        if (receiver != null) {
            receiver.close();
        }
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f99136e.comment(unicodeString, location, i);
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        int i = this.f99137f - 1;
        this.f99137f = i;
        if (i == 0) {
            this.f99136e.endDocument();
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f99136e.endElement();
        this.previousAtomic = false;
        this.f99137f--;
    }

    public Receiver getNextReceiver() {
        return this.f99136e;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        Receiver receiver = this.f99136e;
        if (receiver == null) {
            throw new IllegalStateException("TreeReceiver.open(): no underlying receiver provided");
        }
        receiver.open();
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        this.f99136e.processingInstruction(str, unicodeString, location, i);
        this.previousAtomic = false;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        if (this.pipelineConfiguration != pipelineConfiguration) {
            this.pipelineConfiguration = pipelineConfiguration;
            Receiver receiver = this.f99136e;
            if (receiver != null) {
                receiver.setPipelineConfiguration(pipelineConfiguration);
            }
        }
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, javax.xml.transform.Result
    public void setSystemId(String str) {
        if (str == null || str.equals(this.systemId)) {
            return;
        }
        this.systemId = str;
        Receiver receiver = this.f99136e;
        if (receiver != null) {
            receiver.setSystemId(str);
        }
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
        this.f99136e.setUnparsedEntity(str, str2, str3);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        if (this.f99137f == 0) {
            this.f99136e.startDocument(i);
        }
        boolean[] zArr = this.f99138g;
        int length = zArr.length - 1;
        int i2 = this.f99137f;
        if (length < i2) {
            this.f99138g = Arrays.copyOf(zArr, i2 * 2);
        }
        boolean[] zArr2 = this.f99138g;
        int i3 = this.f99137f;
        this.f99137f = i3 + 1;
        zArr2[i3] = true;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        this.f99136e.startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
        this.previousAtomic = false;
        boolean[] zArr = this.f99138g;
        int length = zArr.length - 1;
        int i2 = this.f99137f;
        if (length < i2) {
            this.f99138g = Arrays.copyOf(zArr, i2 * 2);
        }
        boolean[] zArr2 = this.f99138g;
        int i3 = this.f99137f;
        this.f99137f = i3 + 1;
        zArr2[i3] = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return this.f99136e.usesTypeAnnotations();
    }
}
