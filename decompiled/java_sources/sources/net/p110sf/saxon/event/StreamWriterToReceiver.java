package net.p110sf.saxon.event;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import javax.xml.namespace.NamespaceContext;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.StandardURIChecker;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.pull.NamespaceContextImpl;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Untyped;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes11.dex */
public class StreamWriterToReceiver implements XMLStreamWriter {

    /* renamed from: o */
    public static final boolean f99108o = false;

    /* renamed from: e */
    public C18282b f99109e = null;

    /* renamed from: f */
    public final Stack<NamespaceMap> f99110f;

    /* renamed from: g */
    public final Receiver f99111g;

    /* renamed from: h */
    public final IntPredicateProxy f99112h;

    /* renamed from: i */
    public boolean f99113i;

    /* renamed from: j */
    public int f99114j;

    /* renamed from: k */
    public boolean f99115k;

    /* renamed from: l */
    public final NamespaceReducer f99116l;

    /* renamed from: m */
    public final Stack<List<NamespaceBinding>> f99117m;

    /* renamed from: n */
    public NamespaceContext f99118n;

    /* renamed from: net.sf.saxon.event.StreamWriterToReceiver$b */
    /* loaded from: classes11.dex */
    public static class C18282b {

        /* renamed from: a */
        public C18284d f99119a = new C18284d();

        /* renamed from: b */
        public List<C18284d> f99120b = new ArrayList();

        /* renamed from: c */
        public List<C18284d> f99121c = new ArrayList();
    }

    /* renamed from: net.sf.saxon.event.StreamWriterToReceiver$c */
    /* loaded from: classes11.dex */
    public static class C18283c implements NamespaceContext {

        /* renamed from: e */
        public final NamespaceContext f99122e;

        /* renamed from: f */
        public final Map<String, String> f99123f = new HashMap();

        public C18283c(StreamWriterToReceiver streamWriterToReceiver) {
            this.f99122e = streamWriterToReceiver.f99118n;
            Iterator it2 = streamWriterToReceiver.f99117m.iterator();
            while (it2.hasNext()) {
                for (NamespaceBinding namespaceBinding : (List) it2.next()) {
                    this.f99123f.put(namespaceBinding.getPrefix(), namespaceBinding.getURI());
                }
            }
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getNamespaceURI(String str) {
            String str2 = this.f99123f.get(str);
            return str2 != null ? str2 : this.f99122e.getNamespaceURI(str);
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            for (Map.Entry<String, String> entry : this.f99123f.entrySet()) {
                if (entry.getValue().equals(str)) {
                    return entry.getKey();
                }
            }
            return this.f99122e.getPrefix(str);
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator<String> getPrefixes(String str) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, String> entry : this.f99123f.entrySet()) {
                if (entry.getValue().equals(str)) {
                    arrayList.add(entry.getKey());
                }
            }
            Iterator prefixes = this.f99122e.getPrefixes(str);
            while (prefixes.hasNext()) {
                arrayList.add(prefixes.next());
            }
            return arrayList.iterator();
        }
    }

    /* renamed from: net.sf.saxon.event.StreamWriterToReceiver$d */
    /* loaded from: classes11.dex */
    public static class C18284d {

        /* renamed from: a */
        public String f99124a;

        /* renamed from: b */
        public String f99125b;

        /* renamed from: c */
        public String f99126c;

        /* renamed from: d */
        public String f99127d;

        public C18284d() {
        }
    }

    public StreamWriterToReceiver(Receiver receiver) {
        Stack<NamespaceMap> stack = new Stack<>();
        this.f99110f = stack;
        this.f99113i = false;
        this.f99114j = -1;
        Stack<List<NamespaceBinding>> stack2 = new Stack<>();
        this.f99117m = stack2;
        this.f99118n = null;
        PipelineConfiguration pipelineConfiguration = receiver.getPipelineConfiguration();
        NamespaceReducer namespaceReducer = new NamespaceReducer(receiver);
        this.f99116l = namespaceReducer;
        stack.push(NamespaceMap.emptyMap());
        this.f99111g = namespaceReducer;
        this.f99112h = pipelineConfiguration.getConfiguration().getValidCharacterChecker();
        stack2.push(new ArrayList());
        this.f99118n = new NamespaceContextImpl(NamespaceMap.emptyMap());
    }

    /* renamed from: c */
    public final void m62521c(Object obj) {
        obj.getClass();
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void close() throws XMLStreamException {
        if (this.f99114j >= 0) {
            writeEndDocument();
        }
        try {
            this.f99111g.close();
        } catch (XPathException e) {
            throw new XMLStreamException(e);
        }
    }

    /* renamed from: d */
    public final void m62522d(C18284d c18284d, boolean z) throws XMLStreamException {
        String str = c18284d.f99126c;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Local name of ");
            sb.append(z ? "Attribute" : "Element");
            sb.append(" is missing");
            throw new XMLStreamException(sb.toString());
        }
        if (this.f99113i && !m62527i(str)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Local name of ");
            sb2.append(z ? "Attribute" : "Element");
            sb2.append(Err.wrap(c18284d.f99126c));
            sb2.append(" is invalid");
            throw new XMLStreamException(sb2.toString());
        }
        if (c18284d.f99124a == null) {
            c18284d.f99124a = "";
        }
        if (c18284d.f99125b == null) {
            c18284d.f99125b = "";
        }
        if (this.f99113i && !c18284d.f99125b.isEmpty() && m62525g(c18284d.f99125b)) {
            throw new XMLStreamException("Namespace URI " + Err.wrap(c18284d.f99126c) + " is invalid");
        }
        if (!c18284d.f99124a.isEmpty() || c18284d.f99125b.isEmpty()) {
            return;
        }
        c18284d.f99124a = m62524f(c18284d.f99125b);
    }

    /* renamed from: e */
    public final void m62523e() throws XMLStreamException {
        NodeName fingerprintedQName;
        NodeName fingerprintedQName2;
        if (this.f99114j == -1) {
            writeStartDocument();
        }
        C18282b c18282b = this.f99109e;
        if (c18282b != null) {
            try {
                m62522d(c18282b.f99119a, false);
                Iterator<C18284d> it2 = this.f99109e.f99120b.iterator();
                while (it2.hasNext()) {
                    m62522d(it2.next(), true);
                }
                if (this.f99109e.f99119a.f99125b.isEmpty()) {
                    fingerprintedQName = new NoNamespaceName(this.f99109e.f99119a.f99126c);
                } else {
                    C18284d c18284d = this.f99109e.f99119a;
                    fingerprintedQName = new FingerprintedQName(c18284d.f99124a, c18284d.f99125b, c18284d.f99126c);
                }
                NodeName nodeName = fingerprintedQName;
                NamespaceMap peek = this.f99110f.peek();
                if (!this.f99109e.f99119a.f99125b.isEmpty()) {
                    C18284d c18284d2 = this.f99109e.f99119a;
                    peek = peek.put(c18284d2.f99124a, c18284d2.f99125b);
                }
                for (C18284d c18284d3 : this.f99109e.f99121c) {
                    if (c18284d3.f99124a == null) {
                        c18284d3.f99124a = "";
                    }
                    if (c18284d3.f99125b == null) {
                        c18284d3.f99125b = "";
                    }
                    if (!c18284d3.f99125b.isEmpty()) {
                        peek = peek.put(c18284d3.f99124a, c18284d3.f99125b);
                    }
                }
                EmptyAttributeMap emptyAttributeMap = EmptyAttributeMap.getInstance();
                AttributeMap attributeMap = emptyAttributeMap;
                for (C18284d c18284d4 : this.f99109e.f99120b) {
                    if (c18284d4.f99125b.isEmpty()) {
                        fingerprintedQName2 = new NoNamespaceName(c18284d4.f99126c);
                    } else {
                        fingerprintedQName2 = new FingerprintedQName(c18284d4.f99124a, c18284d4.f99125b, c18284d4.f99126c);
                        peek = peek.put(c18284d4.f99124a, c18284d4.f99125b);
                    }
                    attributeMap = attributeMap.put(new AttributeInfo(fingerprintedQName2, BuiltInAtomicType.UNTYPED_ATOMIC, c18284d4.f99127d, Loc.NONE, 0));
                }
                this.f99111g.startElement(nodeName, Untyped.getInstance(), attributeMap, peek, Loc.NONE, 0);
                this.f99109e = null;
                if (!this.f99115k) {
                    this.f99110f.push(peek);
                    return;
                }
                this.f99115k = false;
                this.f99114j--;
                this.f99117m.pop();
                this.f99111g.endElement();
            } catch (XPathException e) {
                throw new XMLStreamException(e);
            }
        }
    }

    /* renamed from: f */
    public final String m62524f(String str) {
        for (C18284d c18284d : this.f99109e.f99121c) {
            if (str.equals(c18284d.f99125b)) {
                String str2 = c18284d.f99124a;
                return str2 == null ? "" : str2;
            }
        }
        String prefix = getPrefix(str);
        if (prefix != null) {
            return prefix;
        }
        Iterator<String> iteratePrefixes = this.f99116l.iteratePrefixes();
        while (iteratePrefixes.hasNext()) {
            String next = iteratePrefixes.next();
            if (this.f99116l.getURIForPrefix(next, false).equals(str)) {
                return next;
            }
        }
        return "";
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void flush() {
    }

    /* renamed from: g */
    public final boolean m62525g(String str) {
        return this.f99113i && !StandardURIChecker.getInstance().isValidURI(str);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public NamespaceContext getNamespaceContext() {
        return new C18283c(this);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public String getPrefix(String str) {
        for (int size = this.f99117m.size() - 1; size >= 0; size--) {
            List<NamespaceBinding> list = this.f99117m.get(size);
            for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                NamespaceBinding namespaceBinding = list.get(size2);
                if (namespaceBinding.getURI().equals(str)) {
                    return namespaceBinding.getPrefix();
                }
            }
        }
        NamespaceContext namespaceContext = this.f99118n;
        if (namespaceContext != null) {
            return namespaceContext.getPrefix(str);
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public Object getProperty(String str) throws IllegalArgumentException {
        if (str.equals(XMLOutputFactory.IS_REPAIRING_NAMESPACES)) {
            return Boolean.valueOf(this.f99111g instanceof NamespaceReducer);
        }
        throw new IllegalArgumentException(str);
    }

    public Receiver getReceiver() {
        return this.f99111g;
    }

    /* renamed from: h */
    public final boolean m62526h(UnicodeString unicodeString) {
        return !this.f99113i || UTF16CharacterSet.firstInvalidChar(unicodeString.codePoints(), this.f99112h) == -1;
    }

    /* renamed from: i */
    public final boolean m62527i(String str) {
        return !this.f99113i || NameChecker.isValidNCName(str);
    }

    public boolean isCheckValues() {
        return this.f99113i;
    }

    public void setCheckValues(boolean z) {
        this.f99113i = z;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setDefaultNamespace(String str) {
        setPrefix("", str);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setNamespaceContext(NamespaceContext namespaceContext) {
        if (this.f99114j > 0) {
            throw new IllegalStateException("setNamespaceContext may only be called at the start of the document");
        }
        this.f99118n = namespaceContext;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void setPrefix(String str, String str2) {
        m62521c(str);
        if (str2 == null) {
            str2 = "";
        }
        if (m62525g(str2)) {
            throw new IllegalArgumentException("Invalid namespace URI: " + str2);
        }
        if ("".equals(str) || m62527i(str)) {
            this.f99117m.peek().add(new NamespaceBinding(str, str2));
            return;
        }
        throw new IllegalArgumentException("Invalid namespace prefix: " + str);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2) {
        m62521c(str);
        m62521c(str2);
        if (this.f99109e != null) {
            C18284d c18284d = new C18284d();
            c18284d.f99126c = str;
            c18284d.f99127d = str2;
            this.f99109e.f99120b.add(c18284d);
            return;
        }
        throw new IllegalStateException("Cannot write attribute when not in a start tag");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCData(String str) throws XMLStreamException {
        m62521c(str);
        m62523e();
        writeCharacters(str);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCharacters(String str) throws XMLStreamException {
        m62521c(str);
        m62523e();
        UnicodeString m63901of = StringView.m63901of(str);
        if (m62526h(m63901of)) {
            try {
                this.f99111g.characters(m63901of, Loc.NONE, 0);
            } catch (XPathException e) {
                throw new XMLStreamException(e);
            }
        } else {
            throw new IllegalArgumentException("illegal XML character: " + str);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeComment(String str) throws XMLStreamException {
        m62523e();
        if (str == null) {
            str = "";
        }
        UnicodeString m63901of = StringView.m63901of(str);
        try {
            if (!m62526h(m63901of)) {
                throw new IllegalArgumentException("Invalid XML character in comment: " + str);
            }
            if (this.f99113i && str.contains(MultiPartWriter.f115320h)) {
                throw new IllegalArgumentException("Comment contains '--'");
            }
            this.f99111g.comment(m63901of, Loc.NONE, 0);
        } catch (XPathException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeDTD(String str) throws XMLStreamException {
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeDefaultNamespace(String str) {
        m62521c(str);
        if (this.f99109e == null) {
            throw new IllegalStateException("Cannot write namespace when not in a start tag");
        }
        C18284d c18284d = new C18284d();
        c18284d.f99125b = str;
        this.f99109e.f99121c.add(c18284d);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str, String str2) throws XMLStreamException {
        m62521c(str);
        m62521c(str2);
        m62523e();
        writeStartElement(str, str2);
        this.f99115k = true;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEndDocument() throws XMLStreamException {
        if (this.f99114j == -1) {
            throw new IllegalStateException("writeEndDocument with no matching writeStartDocument");
        }
        try {
            m62523e();
            while (this.f99114j > 0) {
                writeEndElement();
            }
            this.f99111g.endDocument();
            this.f99114j = -1;
        } catch (XPathException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEndElement() throws XMLStreamException {
        if (this.f99114j <= 0) {
            throw new IllegalStateException("writeEndElement with no matching writeStartElement");
        }
        try {
            m62523e();
            this.f99117m.pop();
            this.f99110f.pop();
            this.f99111g.endElement();
            this.f99114j--;
        } catch (XPathException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEntityRef(String str) {
        throw new UnsupportedOperationException("writeEntityRef");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeNamespace(String str, String str2) throws XMLStreamException {
        if (str == null || str.equals("") || str.equals("xmlns")) {
            writeDefaultNamespace(str2);
            return;
        }
        m62521c(str2);
        if (this.f99109e == null) {
            throw new IllegalStateException("Cannot write namespace when not in a start tag");
        }
        C18284d c18284d = new C18284d();
        c18284d.f99125b = str2;
        c18284d.f99124a = str;
        this.f99109e.f99121c.add(c18284d);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeProcessingInstruction(String str) throws XMLStreamException {
        writeProcessingInstruction(str, "");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartDocument() throws XMLStreamException {
        writeStartDocument("utf-8", "1.0");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str) throws XMLStreamException {
        m62521c(str);
        this.f99117m.push(new ArrayList());
        m62523e();
        this.f99114j++;
        C18282b c18282b = new C18282b();
        this.f99109e = c18282b;
        c18282b.f99119a.f99126c = str;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeProcessingInstruction(String str, String str2) throws XMLStreamException {
        m62521c(str);
        m62521c(str2);
        m62523e();
        UnicodeString m63901of = StringView.m63901of(str2);
        try {
            if (this.f99113i) {
                if (m62527i(str) && !"xml".equalsIgnoreCase(str)) {
                    if (!m62526h(m63901of)) {
                        throw new IllegalArgumentException("Invalid character in PI data: " + str2);
                    }
                } else {
                    throw new IllegalArgumentException("Invalid PITarget: " + str);
                }
            }
            this.f99111g.processingInstruction(str, m63901of, Loc.NONE, 0);
        } catch (XPathException e) {
            throw new XMLStreamException(e);
        }
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartDocument(String str) throws XMLStreamException {
        writeStartDocument("utf-8", str);
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartDocument(String str, String str2) throws XMLStreamException {
        if (this.f99114j == -1) {
            try {
                this.f99111g.open();
                this.f99111g.startDocument(0);
                this.f99114j = 0;
                return;
            } catch (XPathException e) {
                throw new XMLStreamException(e);
            }
        }
        throw new IllegalStateException("writeStartDocument must be the first call");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str, String str2, String str3) throws XMLStreamException {
        m62521c(str);
        m62521c(str2);
        m62521c(str3);
        m62523e();
        writeStartElement(str, str2, str3);
        this.f99115k = true;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str, String str2) throws XMLStreamException {
        m62521c(str);
        m62521c(str2);
        this.f99117m.push(new ArrayList());
        m62523e();
        this.f99114j++;
        C18282b c18282b = new C18282b();
        this.f99109e = c18282b;
        C18284d c18284d = c18282b.f99119a;
        c18284d.f99126c = str2;
        c18284d.f99125b = str;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeCharacters(char[] cArr, int i, int i2) throws XMLStreamException {
        m62521c(cArr);
        writeCharacters(new String(cArr, i, i2));
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2, String str3, String str4) {
        m62521c(str);
        m62521c(str2);
        m62521c(str3);
        m62521c(str4);
        if (this.f99109e != null) {
            C18284d c18284d = new C18284d();
            c18284d.f99124a = str;
            c18284d.f99125b = str2;
            c18284d.f99126c = str3;
            c18284d.f99127d = str4;
            this.f99109e.f99120b.add(c18284d);
            return;
        }
        throw new IllegalStateException("Cannot write attribute when not in a start tag");
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeEmptyElement(String str) throws XMLStreamException {
        m62521c(str);
        m62523e();
        writeStartElement(str);
        this.f99115k = true;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeStartElement(String str, String str2, String str3) throws XMLStreamException {
        m62521c(str);
        m62521c(str2);
        m62521c(str3);
        this.f99117m.push(new ArrayList());
        m62523e();
        this.f99114j++;
        C18282b c18282b = new C18282b();
        this.f99109e = c18282b;
        C18284d c18284d = c18282b.f99119a;
        c18284d.f99126c = str2;
        c18284d.f99125b = str3;
        c18284d.f99124a = str;
    }

    @Override // javax.xml.stream.XMLStreamWriter
    public void writeAttribute(String str, String str2, String str3) {
        m62521c(str);
        m62521c(str2);
        m62521c(str3);
        C18284d c18284d = new C18284d();
        c18284d.f99125b = str;
        c18284d.f99126c = str2;
        c18284d.f99127d = str3;
        this.f99109e.f99120b.add(c18284d);
    }
}
