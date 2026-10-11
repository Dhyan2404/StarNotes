package net.p110sf.saxon.pull;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Stack;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLReporter;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class StaxBridge implements PullProvider {

    /* renamed from: a */
    public XMLStreamReader f100953a;

    /* renamed from: b */
    public AttributeMap f100954b;

    /* renamed from: c */
    public PipelineConfiguration f100955c;

    /* renamed from: d */
    public NamePool f100956d;

    /* renamed from: e */
    public final HashMap<String, NodeName> f100957e = new HashMap<>();

    /* renamed from: f */
    public final Stack<NamespaceMap> f100958f;

    /* renamed from: g */
    public List<?> f100959g;

    /* renamed from: h */
    public PullEvent f100960h;

    /* renamed from: i */
    public int f100961i;

    /* renamed from: j */
    public boolean f100962j;

    /* renamed from: net.sf.saxon.pull.StaxBridge$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18432a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100963a;

        static {
            int[] iArr = new int[PullEvent.values().length];
            f100963a = iArr;
            try {
                iArr[PullEvent.START_DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100963a[PullEvent.START_ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100963a[PullEvent.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100963a[PullEvent.COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100963a[PullEvent.PROCESSING_INSTRUCTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: net.sf.saxon.pull.StaxBridge$b */
    /* loaded from: classes11.dex */
    public class C18433b implements XMLReporter {
        public C18433b() {
        }

        @Override // javax.xml.stream.XMLReporter
        public void report(String str, String str2, Object obj, Location location) {
            XmlProcessingIncident xmlProcessingIncident = new XmlProcessingIncident("Error reported by XML parser: " + str + " (" + str2 + ')');
            xmlProcessingIncident.setLocation(StaxBridge.this.m63478d(location));
            StaxBridge.this.f100955c.getErrorReporter().report(xmlProcessingIncident);
        }

        public /* synthetic */ C18433b(StaxBridge staxBridge, C18432a c18432a) {
            this();
        }
    }

    public StaxBridge() {
        Stack<NamespaceMap> stack = new Stack<>();
        this.f100958f = stack;
        this.f100959g = null;
        this.f100960h = PullEvent.START_OF_INPUT;
        this.f100961i = 0;
        this.f100962j = false;
        stack.push(NamespaceMap.emptyMap());
    }

    /* renamed from: c */
    public final PullEvent m63477c(int i) throws XPathException {
        switch (i) {
            case 1:
                this.f100961i++;
                return PullEvent.START_ELEMENT;
            case 2:
                this.f100961i--;
                return PullEvent.END_ELEMENT;
            case 3:
                return PullEvent.PROCESSING_INSTRUCTION;
            case 4:
                return (this.f100961i == 0 && this.f100953a.isWhiteSpace()) ? next() : PullEvent.TEXT;
            case 5:
                return PullEvent.COMMENT;
            case 6:
                if (this.f100961i != 0 && !this.f100962j) {
                    return PullEvent.TEXT;
                }
                return next();
            case 7:
                return next();
            case 8:
                return PullEvent.END_DOCUMENT;
            case 9:
                return next();
            case 10:
                return PullEvent.ATTRIBUTE;
            case 11:
                this.f100959g = (List) this.f100953a.getProperty("javax.xml.stream.entities");
                return next();
            case 12:
                return PullEvent.TEXT;
            case 13:
                return PullEvent.NAMESPACE;
            case 14:
                return next();
            case 15:
                return next();
            default:
                throw new IllegalStateException("Unknown StAX event " + i);
        }
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public void close() {
        try {
            this.f100953a.close();
        } catch (XMLStreamException unused) {
        }
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public PullEvent current() {
        return this.f100960h;
    }

    /* renamed from: d */
    public final Loc m63478d(Location location) {
        return location == null ? Loc.NONE : new Loc(location.getSystemId(), location.getLineNumber(), location.getColumnNumber());
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public AtomicValue getAtomicValue() {
        throw new IllegalStateException();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public AttributeMap getAttributes() {
        return this.f100954b;
    }

    public NamePool getNamePool() {
        return this.f100955c.getConfiguration().getNamePool();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public NamespaceBinding[] getNamespaceDeclarations() {
        int namespaceCount = this.f100953a.getNamespaceCount();
        if (namespaceCount == 0) {
            return NamespaceBinding.EMPTY_ARRAY;
        }
        NamespaceBinding[] namespaceBindingArr = new NamespaceBinding[namespaceCount];
        for (int i = 0; i < namespaceCount; i++) {
            String namespacePrefix = this.f100953a.getNamespacePrefix(i);
            String str = "";
            if (namespacePrefix == null) {
                namespacePrefix = "";
            }
            String namespaceURI = this.f100953a.getNamespaceURI(i);
            if (namespaceURI != null) {
                str = namespaceURI;
            }
            namespaceBindingArr[i] = new NamespaceBinding(namespacePrefix, str);
        }
        return namespaceBindingArr;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public NodeName getNodeName() {
        PullEvent pullEvent = this.f100960h;
        if (pullEvent != PullEvent.START_ELEMENT && pullEvent != PullEvent.END_ELEMENT) {
            if (pullEvent == PullEvent.PROCESSING_INSTRUCTION) {
                return new NoNamespaceName(this.f100953a.getPITarget());
            }
            throw new IllegalStateException();
        }
        String localName = this.f100953a.getLocalName();
        String namespaceURI = this.f100953a.getNamespaceURI();
        NodeName nodeName = this.f100957e.get(localName);
        if (nodeName != null) {
            if (nodeName.hasURI(namespaceURI == null ? "" : namespaceURI) && nodeName.getPrefix().equals(this.f100953a.getPrefix())) {
                return nodeName;
            }
        }
        int allocateFingerprint = this.f100956d.allocateFingerprint(namespaceURI, localName);
        NodeName noNamespaceName = namespaceURI == null ? new NoNamespaceName(localName, allocateFingerprint) : new FingerprintedQName(this.f100953a.getPrefix(), namespaceURI, localName, allocateFingerprint);
        this.f100957e.put(localName, noNamespaceName);
        return noNamespaceName;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public PipelineConfiguration getPipelineConfiguration() {
        return this.f100955c;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public SchemaType getSchemaType() {
        PullEvent pullEvent = this.f100960h;
        if (pullEvent == PullEvent.START_ELEMENT) {
            return Untyped.getInstance();
        }
        if (pullEvent == PullEvent.ATTRIBUTE) {
            return BuiltInAtomicType.UNTYPED_ATOMIC;
        }
        return null;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public net.p110sf.saxon.s9api.Location getSourceLocator() {
        return m63478d(this.f100953a.getLocation());
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public UnicodeString getStringValue() throws XPathException {
        int i = C18432a.f100963a[this.f100960h.ordinal()];
        if (i == 2) {
            UnicodeBuilder unicodeBuilder = null;
            int i2 = 0;
            while (this.f100953a.hasNext()) {
                try {
                    int next = this.f100953a.next();
                    if (next == 4) {
                        if (unicodeBuilder == null) {
                            unicodeBuilder = new UnicodeBuilder();
                        }
                        unicodeBuilder.accept(StringView.m63901of(new String(this.f100953a.getTextCharacters(), this.f100953a.getTextStart(), this.f100953a.getTextLength())));
                    } else if (next == 1) {
                        i2++;
                    } else if (next == 2) {
                        int i3 = i2 - 1;
                        if (i2 == 0) {
                            this.f100960h = PullEvent.END_ELEMENT;
                            return unicodeBuilder != null ? unicodeBuilder.toUnicodeString() : EmptyUnicodeString.getInstance();
                        }
                        i2 = i3;
                    } else {
                        continue;
                    }
                } catch (XMLStreamException e) {
                    throw new XPathException(e);
                }
            }
        } else {
            if (i == 3) {
                return StringTool.compress(this.f100953a.getTextCharacters(), this.f100953a.getTextStart(), this.f100953a.getTextLength(), true);
            }
            if (i == 4) {
                return StringView.m63901of(new String(this.f100953a.getTextCharacters(), this.f100953a.getTextStart(), this.f100953a.getTextLength()));
            }
            if (i == 5) {
                return Whitespace.removeLeadingWhitespace(StringView.tidy(this.f100953a.getPIData()));
            }
        }
        throw new IllegalStateException("getStringValue() called when current event is " + this.f100960h);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0017 A[SYNTHETIC] */
    @Override // net.p110sf.saxon.pull.PullProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<net.p110sf.saxon.pull.UnparsedEntity> getUnparsedEntities() {
        /*
            r10 = this;
            java.util.List<?> r0 = r10.f100959g
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.util.ArrayList r0 = new java.util.ArrayList
            java.util.List<?> r2 = r10.f100959g
            int r2 = r2.size()
            r0.<init>(r2)
            java.util.List<?> r10 = r10.f100959g
            java.util.Iterator r10 = r10.iterator()
        L17:
            boolean r2 = r10.hasNext()
            if (r2 == 0) goto Lbf
            java.lang.Object r2 = r10.next()
            boolean r3 = r2 instanceof javax.xml.stream.events.EntityDeclaration
            if (r3 == 0) goto L39
            javax.xml.stream.events.EntityDeclaration r2 = (javax.xml.stream.events.EntityDeclaration) r2
            java.lang.String r3 = r2.getName()
            java.lang.String r4 = r2.getSystemId()
            java.lang.String r5 = r2.getPublicId()
            java.lang.String r2 = r2.getBaseURI()
            goto L9b
        L39:
            java.lang.Class r3 = r2.getClass()
            java.lang.String r3 = r3.getName()
            java.lang.String r4 = "com.ctc.wstx.ent.UnparsedExtEntity"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L97
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Throwable -> L92
            r4 = 0
            java.lang.Class[] r5 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L92
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L92
            java.lang.String r6 = "getName"
            java.lang.reflect.Method r6 = r3.getMethod(r6, r5)     // Catch: java.lang.Throwable -> L92
            java.lang.Object r6 = r6.invoke(r2, r4)     // Catch: java.lang.Throwable -> L92
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L92
            java.lang.String r7 = "getSystemId"
            java.lang.reflect.Method r7 = r3.getMethod(r7, r5)     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r7 = r7.invoke(r2, r4)     // Catch: java.lang.Throwable -> L8e
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L8e
            java.lang.String r8 = "getPublicId"
            java.lang.reflect.Method r8 = r3.getMethod(r8, r5)     // Catch: java.lang.Throwable -> L8a
            java.lang.Object r8 = r8.invoke(r2, r4)     // Catch: java.lang.Throwable -> L8a
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L8a
            java.lang.String r9 = "getBaseURI"
            java.lang.reflect.Method r3 = r3.getMethod(r9, r5)     // Catch: java.lang.Throwable -> L86
            java.lang.Object r2 = r3.invoke(r2, r4)     // Catch: java.lang.Throwable -> L86
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L86
            r3 = r6
            r4 = r7
            r5 = r8
            goto L9b
        L86:
            r3 = r6
            r4 = r7
            r5 = r8
            goto L95
        L8a:
            r5 = r1
            r3 = r6
            r4 = r7
            goto L95
        L8e:
            r4 = r1
            r5 = r4
            r3 = r6
            goto L95
        L92:
            r3 = r1
            r4 = r3
            r5 = r4
        L95:
            r2 = r1
            goto L9b
        L97:
            r2 = r1
            r3 = r2
            r4 = r3
            r5 = r4
        L9b:
            if (r3 == 0) goto L17
            if (r2 == 0) goto La9
            if (r4 == 0) goto La9
            java.net.URI r6 = net.p110sf.saxon.functions.ResolveURI.makeAbsolute(r4, r2)     // Catch: java.net.URISyntaxException -> La9
            java.lang.String r4 = r6.toString()     // Catch: java.net.URISyntaxException -> La9
        La9:
            net.sf.saxon.pull.UnparsedEntity r6 = new net.sf.saxon.pull.UnparsedEntity
            r6.<init>()
            r6.setName(r3)
            r6.setSystemId(r4)
            r6.setPublicId(r5)
            r6.setBaseURI(r2)
            r0.add(r6)
            goto L17
        Lbf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.pull.StaxBridge.getUnparsedEntities():java.util.List");
    }

    public XMLStreamReader getXMLStreamReader() {
        return this.f100953a;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public PullEvent next() throws XPathException {
        int indexOf;
        PullEvent pullEvent = this.f100960h;
        if (pullEvent == PullEvent.START_OF_INPUT) {
            PullEvent pullEvent2 = PullEvent.START_DOCUMENT;
            this.f100960h = pullEvent2;
            return pullEvent2;
        }
        PullEvent pullEvent3 = PullEvent.END_OF_INPUT;
        if (pullEvent == pullEvent3 || pullEvent == PullEvent.END_DOCUMENT) {
            try {
                this.f100953a.close();
                return pullEvent3;
            } catch (XMLStreamException e) {
                throw new XPathException(e);
            }
        }
        try {
            if (this.f100953a.hasNext()) {
                PullEvent m63477c = m63477c(this.f100953a.next());
                this.f100960h = m63477c;
                if (m63477c == PullEvent.START_ELEMENT) {
                    NamespaceMap peek = this.f100958f.peek();
                    int namespaceCount = this.f100953a.getNamespaceCount();
                    for (int i = 0; i < namespaceCount; i++) {
                        String namespacePrefix = this.f100953a.getNamespacePrefix(i);
                        String namespaceURI = this.f100953a.getNamespaceURI(i);
                        if (namespacePrefix == null) {
                            namespacePrefix = "";
                        }
                        if (namespaceURI == null) {
                            namespaceURI = "";
                        }
                        peek = peek.bind(namespacePrefix, namespaceURI);
                    }
                    this.f100958f.push(peek);
                    int attributeCount = this.f100953a.getAttributeCount();
                    if (attributeCount == 0) {
                        this.f100954b = EmptyAttributeMap.getInstance();
                    } else {
                        ArrayList arrayList = new ArrayList();
                        NamePool namePool = getNamePool();
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            QName attributeName = this.f100953a.getAttributeName(i2);
                            arrayList.add(new AttributeInfo(new FingerprintedQName(attributeName.getPrefix(), attributeName.getNamespaceURI(), attributeName.getLocalPart(), namePool), BuiltInAtomicType.UNTYPED_ATOMIC, this.f100953a.getAttributeValue(i2), Loc.NONE, 0));
                        }
                        this.f100954b = SequenceTool.attributeMapFromList(arrayList);
                    }
                } else if (m63477c == PullEvent.END_ELEMENT) {
                    this.f100958f.pop();
                }
            } else {
                this.f100960h = pullEvent3;
            }
            return this.f100960h;
        } catch (XMLStreamException e2) {
            String message = e2.getMessage();
            if (message.startsWith("ParseError at") && (indexOf = message.indexOf("\nMessage: ")) > 0) {
                message = message.substring(indexOf + 10);
            }
            XPathException xPathException = new XPathException("Error reported by XML parser: " + message, e2);
            xPathException.setErrorCode(SaxonErrorCode.SXXP0003);
            xPathException.setLocator(m63478d(e2.getLocation()));
            throw xPathException;
        }
    }

    public void setInputStream(String str, InputStream inputStream) throws XPathException {
        try {
            XMLInputFactory newInstance = XMLInputFactory.newInstance();
            newInstance.setXMLReporter(new C18433b(this, null));
            this.f100953a = newInstance.createXMLStreamReader(str, inputStream);
        } catch (XMLStreamException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.f100955c = new PipelineConfiguration(pipelineConfiguration);
        this.f100956d = pipelineConfiguration.getConfiguration().getNamePool();
        this.f100962j = pipelineConfiguration.getConfiguration().getParseOptions().getSpaceStrippingRule() != NoElementsSpaceStrippingRule.getInstance();
    }

    public void setXMLStreamReader(XMLStreamReader xMLStreamReader) {
        this.f100953a = xMLStreamReader;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public PullEvent skipToMatchingEnd() throws XPathException {
        int i = C18432a.f100963a[this.f100960h.ordinal()];
        if (i == 1) {
            PullEvent pullEvent = PullEvent.END_DOCUMENT;
            this.f100960h = pullEvent;
            return pullEvent;
        }
        if (i != 2) {
            throw new IllegalStateException("Cannot call skipToMatchingEnd() except when at start of element or document");
        }
        int i2 = 0;
        while (this.f100953a.hasNext()) {
            try {
                int next = this.f100953a.next();
                if (next == 1) {
                    i2++;
                } else if (next == 2) {
                    int i3 = i2 - 1;
                    if (i2 == 0) {
                        PullEvent pullEvent2 = PullEvent.END_ELEMENT;
                        this.f100960h = pullEvent2;
                        return pullEvent2;
                    }
                    i2 = i3;
                } else {
                    continue;
                }
            } catch (XMLStreamException e) {
                throw new XPathException(e);
            }
        }
        throw new IllegalStateException("Element start has no matching element end");
    }
}
