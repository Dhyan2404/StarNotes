package net.p110sf.saxon.event;

import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public abstract class Event {

    /* loaded from: classes11.dex */
    public static class Append extends Event {

        /* renamed from: a */
        public Item f98967a;

        /* renamed from: b */
        public Location f98968b;

        /* renamed from: c */
        public int f98969c;

        public Append(Item item, Location location, int i) {
            this.f98967a = item;
            this.f98968b = location;
            this.f98969c = i;
        }

        @Override // net.p110sf.saxon.event.Event
        public void replay(Receiver receiver) throws XPathException {
            receiver.m62516b(this.f98967a, this.f98968b, this.f98969c);
        }
    }

    /* loaded from: classes11.dex */
    public static class Comment extends Event {

        /* renamed from: a */
        public UnicodeString f98970a;

        /* renamed from: b */
        public Location f98971b;

        /* renamed from: c */
        public int f98972c;

        public Comment(UnicodeString unicodeString, Location location, int i) {
            this.f98970a = unicodeString;
            this.f98971b = location;
            this.f98972c = i;
        }

        @Override // net.p110sf.saxon.event.Event
        public void replay(Receiver receiver) throws XPathException {
            receiver.comment(this.f98970a, this.f98971b, this.f98972c);
        }
    }

    /* loaded from: classes11.dex */
    public static class EndDocument extends Event {
        @Override // net.p110sf.saxon.event.Event
        public void replay(Receiver receiver) throws XPathException {
            receiver.endDocument();
        }
    }

    /* loaded from: classes11.dex */
    public static class EndElement extends Event {
        @Override // net.p110sf.saxon.event.Event
        public void replay(Receiver receiver) throws XPathException {
            receiver.endElement();
        }
    }

    /* loaded from: classes11.dex */
    public static class ProcessingInstruction extends Event {

        /* renamed from: a */
        public String f98973a;

        /* renamed from: b */
        public UnicodeString f98974b;

        /* renamed from: c */
        public Location f98975c;

        /* renamed from: d */
        public int f98976d;

        public ProcessingInstruction(String str, UnicodeString unicodeString, Location location, int i) {
            this.f98973a = str;
            this.f98974b = unicodeString;
            this.f98975c = location;
            this.f98976d = i;
        }

        @Override // net.p110sf.saxon.event.Event
        public void replay(Receiver receiver) throws XPathException {
            receiver.processingInstruction(this.f98973a, this.f98974b, this.f98975c, this.f98976d);
        }
    }

    /* loaded from: classes11.dex */
    public static class StartDocument extends Event {

        /* renamed from: a */
        public int f98977a;

        public StartDocument(int i) {
            this.f98977a = i;
        }

        @Override // net.p110sf.saxon.event.Event
        public void replay(Receiver receiver) throws XPathException {
            receiver.startDocument(this.f98977a);
        }
    }

    /* loaded from: classes11.dex */
    public static class StartElement extends Event {

        /* renamed from: a */
        public NodeName f98978a;

        /* renamed from: b */
        public SchemaType f98979b;

        /* renamed from: c */
        public AttributeMap f98980c;

        /* renamed from: d */
        public NamespaceMap f98981d;

        /* renamed from: e */
        public Location f98982e;

        /* renamed from: f */
        public int f98983f;

        public StartElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) {
            this.f98978a = nodeName;
            this.f98979b = schemaType;
            this.f98980c = attributeMap;
            this.f98981d = namespaceMap;
            this.f98982e = location;
            this.f98983f = i;
        }

        public int getProperties() {
            return this.f98983f;
        }

        @Override // net.p110sf.saxon.event.Event
        public void replay(Receiver receiver) throws XPathException {
            receiver.startElement(this.f98978a, this.f98979b, this.f98980c, this.f98981d, this.f98982e, this.f98983f);
        }

        public void replay(Receiver receiver, int i) throws XPathException {
            receiver.startElement(this.f98978a, this.f98979b, this.f98980c, this.f98981d, this.f98982e, i);
        }
    }

    /* loaded from: classes11.dex */
    public static class Text extends Event {

        /* renamed from: a */
        public UnicodeString f98984a;

        /* renamed from: b */
        public Location f98985b;

        /* renamed from: c */
        public int f98986c;

        public Text(UnicodeString unicodeString, Location location, int i) {
            this.f98984a = unicodeString;
            this.f98985b = location;
            this.f98986c = i;
        }

        @Override // net.p110sf.saxon.event.Event
        public void replay(Receiver receiver) throws XPathException {
            receiver.characters(this.f98984a, this.f98985b, this.f98986c);
        }
    }

    public void replay(Receiver receiver) throws XPathException {
    }
}
