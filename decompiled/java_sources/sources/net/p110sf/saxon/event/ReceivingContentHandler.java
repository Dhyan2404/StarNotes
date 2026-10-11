package net.p110sf.saxon.event;

import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Stack;
import javax.xml.transform.Result;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.QuitParsingException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.BuiltInListType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.value.Whitespace;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.Attributes2;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes11.dex */
public class ReceivingContentHandler implements ContentHandler, LexicalHandler, DTDHandler {

    /* renamed from: e */
    public PipelineConfiguration f99070e;

    /* renamed from: f */
    public Receiver f99071f;

    /* renamed from: i */
    public boolean f99074i;

    /* renamed from: j */
    public Location f99075j;

    /* renamed from: n */
    public NamespaceMap f99079n;

    /* renamed from: w */
    public Stack<Integer> f99088w;

    /* renamed from: g */
    public boolean f99072g = false;

    /* renamed from: h */
    public LocalLocator f99073h = new LocalLocator(Loc.NONE);

    /* renamed from: k */
    public char[] f99076k = new char[512];

    /* renamed from: l */
    public int f99077l = 0;

    /* renamed from: m */
    public Stack<NamespaceMap> f99078m = new Stack<>();

    /* renamed from: o */
    public boolean f99080o = false;

    /* renamed from: p */
    public boolean f99081p = false;

    /* renamed from: q */
    public boolean f99082q = false;

    /* renamed from: r */
    public boolean f99083r = false;

    /* renamed from: s */
    public boolean f99084s = true;

    /* renamed from: t */
    public final HashMap<String, HashMap<String, NodeName>> f99085t = new HashMap<>(10);

    /* renamed from: u */
    public HashMap<String, NodeName> f99086u = new HashMap<>(10);

    /* renamed from: v */
    public int f99087v = 0;

    /* loaded from: classes11.dex */
    public static class LocalLocator implements Location {

        /* renamed from: e */
        public final Locator f99089e;
        public int levelInEntity = 0;

        public LocalLocator(Locator locator) {
            this.f99089e = locator;
        }

        @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public int getColumnNumber() {
            return this.f99089e.getColumnNumber();
        }

        @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public int getLineNumber() {
            return this.f99089e.getLineNumber();
        }

        @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public String getPublicId() {
            return this.f99089e.getPublicId();
        }

        @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public String getSystemId() {
            return this.f99089e.getSystemId();
        }

        @Override // net.p110sf.saxon.s9api.Location
        public Location saveLocation() {
            return new Loc(getSystemId(), getLineNumber(), getColumnNumber());
        }
    }

    public ReceivingContentHandler() {
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        this.f99079n = emptyMap;
        this.f99078m.push(emptyMap);
    }

    /* renamed from: a */
    private void m62505a(boolean z) throws XPathException {
        int i = this.f99077l;
        if (i > 0) {
            this.f99071f.characters(StringTool.compress(this.f99076k, 0, i, z), this.f99075j, this.f99083r ? 1 : 1024);
            this.f99077l = 0;
            this.f99083r = false;
        }
    }

    /* renamed from: b */
    public final NodeName m62506b(String str, String str2, String str3) throws SAXException {
        if (str3.isEmpty()) {
            throw new SAXException("Saxon requires an XML parser that reports the QName of each element");
        }
        if (str2.isEmpty()) {
            throw new SAXException("Parser configuration problem: namespace reporting is not enabled");
        }
        HashMap<String, NodeName> hashMap = str.isEmpty() ? this.f99086u : this.f99085t.get(str);
        if (hashMap == null) {
            hashMap = new HashMap<>(50);
            this.f99085t.put(str, hashMap);
            if (str.isEmpty()) {
                this.f99086u = hashMap;
            }
        }
        NodeName nodeName = hashMap.get(str3);
        if (nodeName != null) {
            return nodeName;
        }
        if (str.isEmpty()) {
            NoNamespaceName noNamespaceName = new NoNamespaceName(str2);
            hashMap.put(str3, noNamespaceName);
            return noNamespaceName;
        }
        FingerprintedQName fingerprintedQName = new FingerprintedQName(NameChecker.getPrefix(str3), str, str2);
        hashMap.put(str3, fingerprintedQName);
        return fingerprintedQName;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public final AttributeMap m62507c(Attributes attributes, Location location) throws SAXException {
        char c;
        int i;
        int i2;
        char c2;
        boolean z = attributes instanceof Attributes2;
        int length = attributes.getLength();
        if (length == 0) {
            return EmptyAttributeMap.getInstance();
        }
        Location saveLocation = location.saveLocation();
        ArrayList arrayList = new ArrayList(attributes.getLength());
        for (int i3 = 0; i3 < length; i3++) {
            String value = attributes.getValue(i3);
            String qName = attributes.getQName(i3);
            String uri = attributes.getURI(i3);
            if (!qName.startsWith("xmlns") || (qName.length() != 5 && qName.charAt(5) != ':')) {
                if (z && !((Attributes2) attributes).isSpecified(i3)) {
                    int i4 = this.f99087v;
                    if (i4 != -1) {
                        r15 = i4 == 1 ? 72 : 64;
                        if (uri != null && !uri.isEmpty() && qName.indexOf(58) < 0) {
                            String suggestPrefixForURI = getConfiguration().getNamePool().suggestPrefixForURI(uri);
                            if (suggestPrefixForURI == null) {
                                String[] uRIsAsArray = this.f99079n.getURIsAsArray();
                                for (int i5 = 0; i5 < uRIsAsArray.length; i5++) {
                                    if (uRIsAsArray[i5].equals(uri)) {
                                        suggestPrefixForURI = this.f99079n.getPrefixArray()[i5];
                                    }
                                }
                            }
                            if (suggestPrefixForURI == null) {
                                suggestPrefixForURI = "p" + Err.abbreviateURI(uri).replace("/", "").replace(RemoveAudioAction.f58149k, ".");
                                if (!NameChecker.isValidNCName(suggestPrefixForURI)) {
                                    suggestPrefixForURI = "p_" + qName;
                                }
                            }
                            while (this.f99079n.getURI(suggestPrefixForURI) != null && !this.f99079n.getURI(suggestPrefixForURI).equals(uri)) {
                                suggestPrefixForURI = suggestPrefixForURI + "z";
                            }
                            this.f99079n = this.f99079n.put(suggestPrefixForURI, uri);
                            qName = suggestPrefixForURI + ":" + qName;
                            getConfiguration().getNamePool().suggestPrefix(suggestPrefixForURI, uri);
                        }
                    }
                }
                NodeName m62506b = m62506b(uri, attributes.getLocalName(i3), qName);
                String type = attributes.getType(i3);
                SimpleType simpleType = BuiltInAtomicType.UNTYPED_ATOMIC;
                if (this.f99081p) {
                    type.hashCode();
                    switch (type.hashCode()) {
                        case -2139728421:
                            if (type.equals("IDREFS")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1504708742:
                            if (type.equals("NMTOKEN")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -1319487551:
                            if (type.equals("ENTITIES")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 2331:
                            if (type.equals("ID")) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 69523832:
                            if (type.equals("IDREF")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 598669337:
                            if (type.equals("NMTOKENS")) {
                                c2 = 5;
                                break;
                            }
                            break;
                        case 2050021347:
                            if (type.equals("ENTITY")) {
                                c2 = 6;
                                break;
                            }
                            break;
                    }
                    c2 = 65535;
                    switch (c2) {
                        case 0:
                            simpleType = BuiltInListType.IDREFS;
                            break;
                        case 1:
                            simpleType = BuiltInAtomicType.NMTOKEN;
                            break;
                        case 2:
                            simpleType = BuiltInListType.ENTITIES;
                            break;
                        case 3:
                            simpleType = BuiltInAtomicType.f102764ID;
                            break;
                        case 4:
                            simpleType = BuiltInAtomicType.IDREF;
                            break;
                        case 5:
                            simpleType = BuiltInListType.NMTOKENS;
                            break;
                        case 6:
                            simpleType = BuiltInAtomicType.ENTITY;
                            break;
                    }
                    arrayList.add(new AttributeInfo(m62506b, simpleType, value, saveLocation, i2));
                } else {
                    type.hashCode();
                    switch (type.hashCode()) {
                        case -2139728421:
                            if (type.equals("IDREFS")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 2331:
                            if (type.equals("ID")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 69523832:
                            if (type.equals("IDREF")) {
                                c = 2;
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    switch (c) {
                        case 0:
                        case 2:
                            i = r15 | 4096;
                            break;
                        case 1:
                            i = r15 | 2048;
                            break;
                    }
                    i2 = i;
                    arrayList.add(new AttributeInfo(m62506b, simpleType, value, saveLocation, i2));
                }
                i2 = r15;
                arrayList.add(new AttributeInfo(m62506b, simpleType, value, saveLocation, i2));
            }
        }
        return SequenceTool.attributeMapFromList(arrayList);
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        int i3;
        char[] cArr2;
        while (true) {
            i3 = this.f99077l;
            int i4 = i3 + i2;
            cArr2 = this.f99076k;
            if (i4 <= cArr2.length) {
                break;
            } else {
                this.f99076k = Arrays.copyOf(cArr2, cArr2.length * 2);
            }
        }
        System.arraycopy(cArr, i, cArr2, i3, i2);
        this.f99077l += i2;
        if (this.f99074i) {
            this.f99075j = this.f99073h.saveLocation();
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        try {
            m62505a(true);
            if (this.f99072g) {
                return;
            }
            this.f99071f.comment(StringView.m63901of(new String(cArr, i, i2)), this.f99073h, 0);
        } catch (XPathException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() {
        this.f99072g = false;
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        try {
            m62505a(true);
            this.f99071f.endDocument();
            this.f99071f.close();
        } catch (QuitParsingException unused) {
        } catch (ValidationException e) {
            e.setLocator(this.f99073h);
            throw new SAXException(e);
        } catch (XPathException e2) {
            e2.maybeSetLocation(this.f99073h);
            throw new SAXException(e2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        try {
            m62505a(!this.f99084s);
            this.f99073h.levelInEntity--;
            this.f99071f.endElement();
            this.f99084s = false;
            this.f99078m.pop();
            this.f99079n = this.f99078m.peek();
        } catch (ValidationException e) {
            e.maybeSetLocation(this.f99073h);
            if (!e.hasBeenReported()) {
                this.f99070e.getErrorReporter().report(new XmlProcessingException(e));
            }
            e.setHasBeenReported(true);
            throw new SAXException(e);
        } catch (XPathException e2) {
            e2.maybeSetLocation(this.f99073h);
            throw new SAXException(e2);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) {
        this.f99073h.levelInEntity = this.f99088w.pop().intValue();
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
    }

    public Configuration getConfiguration() {
        return this.f99070e.getConfiguration();
    }

    public PipelineConfiguration getPipelineConfiguration() {
        return this.f99070e;
    }

    public Receiver getReceiver() {
        return this.f99071f;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) {
        if (this.f99080o) {
            return;
        }
        characters(cArr, i, i2);
    }

    public boolean isIgnoringIgnorableWhitespace() {
        return this.f99080o;
    }

    @Override // org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) {
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        try {
            m62505a(true);
            if (this.f99072g) {
                return;
            }
            if (str == null) {
                comment(str2.toCharArray(), 0, str2.length());
                return;
            }
            if (!NameChecker.isValidNCName(str)) {
                throw new SAXException("Invalid processing instruction name (" + str + ')');
            }
            if (this.f99082q) {
                if (str.equals(Result.PI_DISABLE_OUTPUT_ESCAPING)) {
                    this.f99083r = true;
                    return;
                } else if (str.equals(Result.PI_ENABLE_OUTPUT_ESCAPING)) {
                    this.f99083r = false;
                    return;
                }
            }
            this.f99071f.processingInstruction(str, str2 == null ? EmptyUnicodeString.getInstance() : Whitespace.removeLeadingWhitespace(StringView.tidy(str2)), this.f99073h, 0);
        } catch (XPathException e) {
            throw new SAXException(e);
        }
    }

    public void reset() {
        this.f99070e = null;
        this.f99071f = null;
        this.f99080o = false;
        this.f99081p = false;
        this.f99077l = 0;
        this.f99078m = new Stack<>();
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        this.f99079n = emptyMap;
        this.f99078m.push(emptyMap);
        this.f99073h = new LocalLocator(Loc.NONE);
        this.f99082q = false;
        this.f99083r = false;
        this.f99074i = false;
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        LocalLocator localLocator = new LocalLocator(locator);
        this.f99073h = localLocator;
        if (this.f99074i) {
            return;
        }
        this.f99075j = localLocator;
    }

    public void setIgnoreIgnorableWhitespace(boolean z) {
        this.f99080o = z;
    }

    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.f99070e = pipelineConfiguration;
        Configuration configuration = pipelineConfiguration.getConfiguration();
        this.f99080o = pipelineConfiguration.getParseOptions().getSpaceStrippingRule() != NoElementsSpaceStrippingRule.getInstance();
        this.f99081p = configuration.getBooleanProperty(Feature.RETAIN_DTD_ATTRIBUTE_TYPES);
        if (!pipelineConfiguration.getParseOptions().isExpandAttributeDefaults()) {
            this.f99087v = -1;
        } else if (configuration.getBooleanProperty(Feature.MARK_DEFAULTED_ATTRIBUTES)) {
            this.f99087v = 1;
        }
        this.f99082q = ((Boolean) configuration.getConfigurationProperty(Feature.USE_PI_DISABLE_OUTPUT_ESCAPING)).booleanValue();
        this.f99074i = pipelineConfiguration.getParseOptions().isLineNumbering();
    }

    public void setReceiver(Receiver receiver) {
        this.f99071f = receiver;
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String str, String str2, String str3) {
        this.f99072g = true;
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        try {
            this.f99077l = 0;
            this.f99079n = NamespaceMap.emptyMap();
            Stack<NamespaceMap> stack = new Stack<>();
            this.f99078m = stack;
            stack.push(this.f99079n);
            this.f99071f.setPipelineConfiguration(this.f99070e);
            if (this.f99073h.getSystemId() != null) {
                this.f99071f.setSystemId(this.f99073h.getSystemId());
            }
            this.f99071f.open();
            this.f99071f.startDocument(0);
        } catch (QuitParsingException e) {
            getPipelineConfiguration().getErrorReporter().report(new XmlProcessingException(e).asWarning());
            throw new SAXException(e);
        } catch (XPathException e2) {
            throw new SAXException(e2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        try {
            m62505a(true);
            this.f99071f.startElement(m62506b(str, str2, str3), Untyped.getInstance(), m62507c(attributes, this.f99073h), this.f99079n, this.f99073h, 524352);
            this.f99073h.levelInEntity++;
            this.f99078m.push(this.f99079n);
            this.f99084s = true;
        } catch (XPathException e) {
            e.maybeSetLocation(this.f99073h);
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) {
        if (this.f99088w == null) {
            this.f99088w = new Stack<>();
        }
        this.f99088w.push(Integer.valueOf(this.f99073h.levelInEntity));
        this.f99073h.levelInEntity = 0;
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
        if (str.equals("xmlns")) {
            return;
        }
        this.f99079n = this.f99079n.bind(str, str2);
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        String systemId;
        if (this.f99073h != null) {
            try {
                if (!new URI(str3).isAbsolute() && (systemId = this.f99073h.getSystemId()) != null) {
                    str3 = ResolveURI.makeAbsolute(str3, systemId).toString();
                }
            } catch (URISyntaxException unused) {
            }
        }
        try {
            this.f99071f.setUnparsedEntity(str, str3, str2);
        } catch (XPathException e) {
            throw new SAXException(e);
        }
    }
}
