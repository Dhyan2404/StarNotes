package net.p110sf.saxon.event;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;

/* loaded from: classes11.dex */
public abstract class OutputterEvent {

    /* loaded from: classes11.dex */
    public static class Append extends OutputterEvent {

        /* renamed from: a */
        public Item f99014a;

        /* renamed from: b */
        public Location f99015b;

        /* renamed from: c */
        public int f99016c;

        public Append(Item item, Location location, int i) {
            this.f99014a = item;
            this.f99015b = location;
            this.f99016c = i;
        }

        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.m62516b(this.f99014a, this.f99015b, this.f99016c);
        }
    }

    /* loaded from: classes11.dex */
    public static class Attribute extends OutputterEvent {

        /* renamed from: a */
        public NodeName f99017a;

        /* renamed from: b */
        public SimpleType f99018b;

        /* renamed from: c */
        public String f99019c;

        /* renamed from: d */
        public Location f99020d;

        /* renamed from: e */
        public int f99021e;

        public Attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) {
            this.f99017a = nodeName;
            this.f99018b = simpleType;
            this.f99019c = str;
            this.f99020d = location;
            this.f99021e = i;
        }

        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.attribute(this.f99017a, this.f99018b, this.f99019c, this.f99020d, this.f99021e);
        }
    }

    /* loaded from: classes11.dex */
    public static class Comment extends OutputterEvent {

        /* renamed from: a */
        public UnicodeString f99022a;

        /* renamed from: b */
        public Location f99023b;

        /* renamed from: c */
        public int f99024c;

        public Comment(UnicodeString unicodeString, Location location, int i) {
            this.f99022a = unicodeString;
            this.f99023b = location;
            this.f99024c = i;
        }

        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.comment(this.f99022a, this.f99023b, this.f99024c);
        }
    }

    /* loaded from: classes11.dex */
    public static class EndDocument extends OutputterEvent {
        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.endDocument();
        }
    }

    /* loaded from: classes11.dex */
    public static class EndElement extends OutputterEvent {
        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.endElement();
        }
    }

    /* loaded from: classes11.dex */
    public static class Namespace extends OutputterEvent {

        /* renamed from: a */
        public String f99025a;

        /* renamed from: b */
        public String f99026b;

        /* renamed from: c */
        public int f99027c;

        public Namespace(String str, String str2, int i) {
            this.f99025a = str;
            this.f99026b = str2;
            this.f99027c = i;
        }

        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.namespace(this.f99025a, this.f99026b, this.f99027c);
        }
    }

    /* loaded from: classes11.dex */
    public static class ProcessingInstruction extends OutputterEvent {

        /* renamed from: a */
        public String f99028a;

        /* renamed from: b */
        public UnicodeString f99029b;

        /* renamed from: c */
        public Location f99030c;

        /* renamed from: d */
        public int f99031d;

        public ProcessingInstruction(String str, UnicodeString unicodeString, Location location, int i) {
            this.f99028a = str;
            this.f99029b = unicodeString;
            this.f99030c = location;
            this.f99031d = i;
        }

        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.processingInstruction(this.f99028a, this.f99029b, this.f99030c, this.f99031d);
        }
    }

    /* loaded from: classes11.dex */
    public static class StartContent extends OutputterEvent {
        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.startContent();
        }
    }

    /* loaded from: classes11.dex */
    public static class StartDocument extends OutputterEvent {

        /* renamed from: a */
        public int f99032a;

        public StartDocument(int i) {
            this.f99032a = i;
        }

        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.startDocument(this.f99032a);
        }
    }

    /* loaded from: classes11.dex */
    public static class StartElement extends OutputterEvent {

        /* renamed from: a */
        public NodeName f99033a;

        /* renamed from: b */
        public SchemaType f99034b;

        /* renamed from: c */
        public Location f99035c;

        /* renamed from: d */
        public int f99036d;

        public StartElement(NodeName nodeName, SchemaType schemaType, Location location, int i) {
            this.f99033a = nodeName;
            this.f99034b = schemaType;
            this.f99035c = location;
            this.f99036d = i;
        }

        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.startElement(this.f99033a, this.f99034b, this.f99035c, this.f99036d);
        }
    }

    /* loaded from: classes11.dex */
    public static class Text extends OutputterEvent {

        /* renamed from: a */
        public UnicodeString f99037a;

        /* renamed from: b */
        public Location f99038b;

        /* renamed from: c */
        public int f99039c;

        public Text(UnicodeString unicodeString, Location location, int i) {
            this.f99037a = unicodeString;
            this.f99038b = location;
            this.f99039c = i;
        }

        @Override // net.p110sf.saxon.event.OutputterEvent
        public void replay(Outputter outputter) throws XPathException {
            outputter.characters(this.f99037a, this.f99038b, this.f99039c);
        }
    }

    public void replay(Outputter outputter) throws XPathException {
    }
}
