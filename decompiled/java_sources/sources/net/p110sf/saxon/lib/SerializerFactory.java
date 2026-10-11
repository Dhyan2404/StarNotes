package net.p110sf.saxon.lib;

import com.caverock.androidsvg.SVGParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import java.util.Properties;
import java.util.regex.Pattern;
import javax.xml.transform.Result;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stax.StAXResult;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.ContentHandlerProxy;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.NamespaceDifferencer;
import net.p110sf.saxon.event.NamespaceReducer;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceNormalizerWithItemSeparator;
import net.p110sf.saxon.event.SequenceNormalizerWithSpaceSeparator;
import net.p110sf.saxon.event.SequenceReceiver;
import net.p110sf.saxon.event.Sink;
import net.p110sf.saxon.event.StreamWriterToReceiver;
import net.p110sf.saxon.event.TreeReceiver;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.query.SequenceWrapper;
import net.p110sf.saxon.serialize.AdaptiveEmitter;
import net.p110sf.saxon.serialize.CDATAFilter;
import net.p110sf.saxon.serialize.CharacterMapExpander;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.serialize.Emitter;
import net.p110sf.saxon.serialize.ExpandedStreamResult;
import net.p110sf.saxon.serialize.HTML40Emitter;
import net.p110sf.saxon.serialize.HTML50Emitter;
import net.p110sf.saxon.serialize.HTMLIndenter;
import net.p110sf.saxon.serialize.HTMLURIEscaper;
import net.p110sf.saxon.serialize.JSONSerializer;
import net.p110sf.saxon.serialize.MetaTagAdjuster;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.serialize.TEXTEmitter;
import net.p110sf.saxon.serialize.UncommittedSerializer;
import net.p110sf.saxon.serialize.UnicodeNormalizer;
import net.p110sf.saxon.serialize.XHTML1Emitter;
import net.p110sf.saxon.serialize.XHTML5Emitter;
import net.p110sf.saxon.serialize.XHTMLPrefixRemover;
import net.p110sf.saxon.serialize.XHTMLURIEscaper;
import net.p110sf.saxon.serialize.XML10ContentChecker;
import net.p110sf.saxon.serialize.XMLEmitter;
import net.p110sf.saxon.serialize.XMLIndenter;
import net.p110sf.saxon.stax.StAXResultHandlerImpl;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.BigDecimalValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class SerializerFactory {

    /* renamed from: c */
    public static final Pattern f100544c = Pattern.compile("^[\\s\\r\\na-zA-Z0-9\\-'()+,./:=?;!*#@$_%]*$");

    /* renamed from: d */
    public static final /* synthetic */ boolean f100545d = false;

    /* renamed from: a */
    public Configuration f100546a;

    /* renamed from: b */
    public PipelineConfiguration f100547b;

    public SerializerFactory(Configuration configuration) {
        this.f100546a = configuration;
    }

    /* renamed from: a */
    public static void m63271a(String str, String str2) throws XPathException {
        if (BigDecimalValue.castableAsDecimal(str2)) {
            return;
        }
        throw new XPathException("Value of " + Err.wrap(str) + " must be a decimal number", "SEPM0016");
    }

    /* renamed from: c */
    public static void m63272c(String str) throws XPathException {
        if (!NameChecker.isValidNmtoken(StringView.m63901of(str))) {
            throw new XPathException("Invalid value for normalization-form: must be NFC, NFD, NFKC, NFKD, fully-normalized, or none", "SEPM0016");
        }
    }

    public static String checkListOfEQNames(String str, String str2) throws XPathException {
        Whitespace.Tokenizer tokenizer = new Whitespace.Tokenizer(StringView.m63901of(str2).tidy());
        StringBuilder sb = new StringBuilder();
        while (true) {
            StringValue next = tokenizer.next();
            if (next == null) {
                return sb.toString();
            }
            String stringValue = next.getStringValue();
            if (m63276h(stringValue) || NameChecker.isValidNCName(next.codePoints())) {
                sb.append(stringValue);
            } else {
                if (!m63275g(stringValue)) {
                    throw new XPathException("Value of " + Err.wrap(str) + " must be a list of QNames in 'Q{uri}local' notation", "SEPM0016");
                }
                if (stringValue.startsWith("{")) {
                    sb.append("Q");
                    sb.append(stringValue);
                } else {
                    sb.append("Q{}");
                    sb.append(stringValue);
                }
            }
            sb.append(" ");
        }
    }

    public static String checkListOfEQNamesAllowingStar(String str, String str2) throws XPathException {
        Whitespace.Tokenizer tokenizer = new Whitespace.Tokenizer(StringView.m63901of(str2).tidy());
        StringBuilder sb = new StringBuilder();
        while (true) {
            StringValue next = tokenizer.next();
            if (next == null) {
                return sb.toString().trim();
            }
            String stringValue = next.getStringValue();
            if ("*".equals(stringValue) || m63276h(stringValue) || NameChecker.isValidNCName(stringValue)) {
                sb.append(stringValue);
            } else {
                if (!m63275g(stringValue)) {
                    throw new XPathException("Value of " + Err.wrap(str) + " must be a list of QNames in 'Q{uri}local' notation", "SEPM0016");
                }
                if (stringValue.startsWith("{")) {
                    sb.append("Q");
                    sb.append(stringValue);
                } else {
                    sb.append("Q{}");
                    sb.append(stringValue);
                }
            }
            sb.append(" ");
        }
    }

    public static void checkNonNegativeInteger(String str, String str2) throws XPathException {
        try {
            if (Integer.parseInt(str2) >= 0) {
                return;
            }
            throw new XPathException("Value of " + Err.wrap(str) + " must be a non-negative integer", "SEPM0016");
        } catch (NumberFormatException unused) {
            throw new XPathException("Value of " + Err.wrap(str) + " must be a non-negative integer", "SEPM0016");
        }
    }

    public static String checkYesOrNo(String str, String str2) throws XPathException {
        String str3 = "yes";
        if (!"yes".equals(str2) && !"true".equals(str2) && !"1".equals(str2)) {
            str3 = SVGParser.f16048t;
            if (!SVGParser.f16048t.equals(str2) && !"false".equals(str2) && !"0".equals(str2)) {
                throw new XPathException("Serialization parameter " + Err.wrap(str) + " must have the value yes|no, true|false, or 1|0", "SEPM0016");
            }
        }
        return str3;
    }

    /* renamed from: d */
    public static void m63273d(String str) throws XPathException {
        if (!f100544c.matcher(str).matches()) {
            throw new XPathException("Invalid character in doctype-public parameter", "SEPM0016");
        }
    }

    /* renamed from: e */
    public static void m63274e(String str) throws XPathException {
        if (str.contains(CloudStorageConstants.SINGLE_QUOTES) && str.contains("\"")) {
            throw new XPathException("The doctype-system parameter must not contain both an apostrophe and a quotation mark", "SEPM0016");
        }
    }

    /* renamed from: g */
    public static boolean m63275g(String str) {
        if (str.startsWith("{")) {
            return m63276h("Q" + str);
        }
        return m63276h("Q{}" + str);
    }

    /* renamed from: h */
    public static boolean m63276h(String str) {
        int indexOf;
        Objects.requireNonNull(str);
        return !str.isEmpty() && str.startsWith("Q{") && (indexOf = str.indexOf(125, 2)) >= 2 && indexOf != str.length() - 1 && NameChecker.isValidNCName(str.substring(indexOf + 1));
    }

    public Receiver addHtml5Component(Receiver receiver, Properties properties) {
        return new XHTMLPrefixRemover(new NamespaceReducer(receiver));
    }

    public Receiver addTextOutputFilter(Receiver receiver, Properties properties) throws XPathException {
        return receiver;
    }

    /* renamed from: b */
    public final String m63277b(String str, String str2) throws XPathException {
        if (!"xml".equals(str2) && !"html".equals(str2) && !"xhtml".equals(str2) && !"text".equals(str2)) {
            if (!SaxonOutputKeys.JSON_NODE_OUTPUT_METHOD.equals(str) && ("json".equals(str2) || "adaptive".equals(str2))) {
                return str2;
            }
            if (str2.startsWith("{")) {
                str2 = "Q" + str2;
            }
            if (!m63276h(str2)) {
                throw new XPathException("Invalid value (" + str2 + ") for serialization method: must be xml|html|xhtml|text|json|adaptive, or a QName in 'Q{uri}local' form", "SEPM0016");
            }
            checkExtensions(str2);
        }
        return str2;
    }

    public void checkExtensions(String str) throws XPathException {
        throw new XPathException("Serialization property " + Err.wrap(str, 8) + " is not available in Saxon-HE");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01c4, code lost:
    
        if (r9.equals(net.p110sf.saxon.lib.SaxonOutputKeys.PARAMETER_DOCUMENT_BASE_URI) == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00dc, code lost:
    
        if (r9.equals("method") == false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String checkOutputProperty(java.lang.String r9, java.lang.String r10) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.lib.SerializerFactory.checkOutputProperty(java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SequenceReceiver createHTMLSerializer(Emitter emitter, SerializationProperties serializationProperties, PipelineConfiguration pipelineConfiguration) throws XPathException {
        Properties properties = serializationProperties.getProperties();
        ProxyReceiver proxyReceiver = emitter;
        if (!SVGParser.f16048t.equals(properties.getProperty("indent"))) {
            proxyReceiver = newHTMLIndenter(emitter, properties);
        }
        Receiver injectCharacterMapExpander = injectCharacterMapExpander(serializationProperties, injectUnicodeNormalizer(serializationProperties, new NamespaceDifferencer(proxyReceiver, properties)), true);
        String property = properties.getProperty("cdata-section-elements");
        if (property != null && !property.isEmpty()) {
            injectCharacterMapExpander = newCDATAFilter(injectCharacterMapExpander, properties);
        }
        if (SaxonOutputKeys.isHtmlVersion5(properties)) {
            injectCharacterMapExpander = addHtml5Component(injectCharacterMapExpander, properties);
        }
        if (!SVGParser.f16048t.equals(properties.getProperty(SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES))) {
            injectCharacterMapExpander = newHTMLURIEscaper(injectCharacterMapExpander, properties);
        }
        if (!SVGParser.f16048t.equals(properties.getProperty(SaxonOutputKeys.INCLUDE_CONTENT_TYPE))) {
            injectCharacterMapExpander = newHTMLMetaTagAdjuster(injectCharacterMapExpander, properties);
        }
        String property2 = properties.getProperty(SaxonOutputKeys.ATTRIBUTE_ORDER);
        if (property2 != null && !property2.isEmpty()) {
            injectCharacterMapExpander = newAttributeSorter(injectCharacterMapExpander, properties);
        }
        FilterFactory validationFactory = serializationProperties.getValidationFactory();
        if (validationFactory != null) {
            injectCharacterMapExpander = validationFactory.makeFilter(injectCharacterMapExpander);
        }
        return makeSequenceNormalizer(injectCharacterMapExpander, properties);
    }

    public SequenceReceiver createSaxonSerializationMethod(String str, SerializationProperties serializationProperties, PipelineConfiguration pipelineConfiguration, CharacterMapExpander characterMapExpander, ProxyReceiver proxyReceiver, ExpandedStreamResult expandedStreamResult, Result result) throws XPathException {
        throw new XPathException("Saxon serialization methods require Saxon-PE to be enabled");
    }

    public SequenceReceiver createTextSerializer(Emitter emitter, SerializationProperties serializationProperties) throws XPathException {
        Properties properties = serializationProperties.getProperties();
        Receiver addTextOutputFilter = addTextOutputFilter(injectCharacterMapExpander(serializationProperties, injectUnicodeNormalizer(serializationProperties, emitter), false), properties);
        FilterFactory validationFactory = serializationProperties.getValidationFactory();
        if (validationFactory != null) {
            addTextOutputFilter = validationFactory.makeFilter(addTextOutputFilter);
        }
        return makeSequenceNormalizer(addTextOutputFilter, properties);
    }

    public SequenceReceiver createUserDefinedOutputMethod(String str, Properties properties, PipelineConfiguration pipelineConfiguration) throws XPathException {
        Receiver makeEmitter = pipelineConfiguration.getConfiguration().makeEmitter(str, properties);
        makeEmitter.setPipelineConfiguration(pipelineConfiguration);
        if ((makeEmitter instanceof ContentHandlerProxy) && "yes".equals(properties.getProperty(SaxonOutputKeys.SUPPLY_SOURCE_LOCATOR))) {
            if (!pipelineConfiguration.getConfiguration().isCompileWithTracing() || pipelineConfiguration.getController() == null) {
                throw new XPathException("Cannot use saxon:supply-source-locator unless tracing was enabled at compile time", SaxonErrorCode.SXSE0002);
            }
            pipelineConfiguration.getController().addTraceListener(((ContentHandlerProxy) makeEmitter).getTraceListener());
        }
        return makeEmitter instanceof SequenceReceiver ? (SequenceReceiver) makeEmitter : new TreeReceiver(makeEmitter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SequenceReceiver createXHTMLSerializer(Emitter emitter, SerializationProperties serializationProperties, PipelineConfiguration pipelineConfiguration) throws XPathException {
        Properties properties = serializationProperties.getProperties();
        ProxyReceiver proxyReceiver = emitter;
        if (!SVGParser.f16048t.equals(properties.getProperty("indent"))) {
            proxyReceiver = newXHTMLIndenter(emitter, properties);
        }
        Receiver injectCharacterMapExpander = injectCharacterMapExpander(serializationProperties, injectUnicodeNormalizer(serializationProperties, new NamespaceDifferencer(proxyReceiver, properties)), true);
        String property = properties.getProperty("cdata-section-elements");
        if (property != null && !property.isEmpty()) {
            injectCharacterMapExpander = newCDATAFilter(injectCharacterMapExpander, properties);
        }
        if (SaxonOutputKeys.isXhtmlHtmlVersion5(properties)) {
            injectCharacterMapExpander = addHtml5Component(injectCharacterMapExpander, properties);
        }
        if (!SVGParser.f16048t.equals(properties.getProperty(SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES))) {
            injectCharacterMapExpander = newXHTMLURIEscaper(injectCharacterMapExpander, properties);
        }
        if (!SVGParser.f16048t.equals(properties.getProperty(SaxonOutputKeys.INCLUDE_CONTENT_TYPE))) {
            injectCharacterMapExpander = newXHTMLMetaTagAdjuster(injectCharacterMapExpander, properties);
        }
        String property2 = properties.getProperty(SaxonOutputKeys.ATTRIBUTE_ORDER);
        if (property2 != null && !property2.isEmpty()) {
            injectCharacterMapExpander = newAttributeSorter(injectCharacterMapExpander, properties);
        }
        if (serializationProperties.getValidationFactory() != null) {
            injectCharacterMapExpander = serializationProperties.getValidationFactory().makeFilter(injectCharacterMapExpander);
        }
        return makeSequenceNormalizer(injectCharacterMapExpander, properties);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SequenceReceiver createXMLSerializer(XMLEmitter xMLEmitter, SerializationProperties serializationProperties) throws XPathException {
        Properties properties = serializationProperties.getProperties();
        boolean equals = "yes".equals(properties.getProperty(SaxonOutputKeys.CANONICAL));
        ProxyReceiver proxyReceiver = xMLEmitter;
        if ("yes".equals(properties.getProperty("indent")) || equals) {
            proxyReceiver = newXMLIndenter(xMLEmitter, properties);
        }
        Receiver namespaceDifferencer = new NamespaceDifferencer(proxyReceiver, properties);
        if ("1.0".equals(properties.getProperty("version")) && this.f100546a.getXMLVersion() == 11) {
            namespaceDifferencer = newXML10ContentChecker(namespaceDifferencer, properties);
        }
        Receiver injectUnicodeNormalizer = injectUnicodeNormalizer(serializationProperties, namespaceDifferencer);
        if (!equals) {
            injectUnicodeNormalizer = injectCharacterMapExpander(serializationProperties, injectUnicodeNormalizer, true);
        }
        String property = properties.getProperty("cdata-section-elements");
        if (property != null && !property.isEmpty() && !equals) {
            injectUnicodeNormalizer = newCDATAFilter(injectUnicodeNormalizer, properties);
        }
        if (equals) {
            injectUnicodeNormalizer = newNamespaceSorter(newAttributeSorter(injectUnicodeNormalizer, properties), properties);
        } else {
            String property2 = properties.getProperty(SaxonOutputKeys.ATTRIBUTE_ORDER);
            if (property2 != null && !property2.isEmpty()) {
                injectUnicodeNormalizer = newAttributeSorter(injectUnicodeNormalizer, properties);
            }
        }
        if (serializationProperties.getValidationFactory() != null) {
            injectUnicodeNormalizer = serializationProperties.getValidationFactory().makeFilter(injectUnicodeNormalizer);
        }
        return makeSequenceNormalizer(injectUnicodeNormalizer, properties);
    }

    public SequenceReceiver customizeAdaptiveSerializer(AdaptiveEmitter adaptiveEmitter, Properties properties, CharacterMapExpander characterMapExpander, ProxyReceiver proxyReceiver) {
        if (proxyReceiver instanceof UnicodeNormalizer) {
            adaptiveEmitter.setNormalizationForm(((UnicodeNormalizer) proxyReceiver).getNormalizationForm());
        }
        if (characterMapExpander != null) {
            adaptiveEmitter.setCharacterMap(characterMapExpander.getCharacterMap());
        }
        return adaptiveEmitter;
    }

    public SequenceReceiver customizeJSONSerializer(JSONSerializer jSONSerializer, Properties properties, CharacterMapExpander characterMapExpander, ProxyReceiver proxyReceiver) throws XPathException {
        if (proxyReceiver instanceof UnicodeNormalizer) {
            jSONSerializer.setNormalizationForm(((UnicodeNormalizer) proxyReceiver).getNormalizationForm());
        }
        if (characterMapExpander != null) {
            jSONSerializer.setCharacterMap(characterMapExpander.getCharacterMap());
        }
        return jSONSerializer;
    }

    /* renamed from: f */
    public final Receiver m63278f(Result result, Properties properties, PipelineConfiguration pipelineConfiguration) throws XPathException {
        if (result instanceof Emitter) {
            Emitter emitter = (Emitter) result;
            if (emitter.getOutputProperties() == null) {
                emitter.setOutputProperties(properties);
            }
            return emitter;
        }
        if (result instanceof JSONSerializer) {
            JSONSerializer jSONSerializer = (JSONSerializer) result;
            if (jSONSerializer.getOutputProperties() == null) {
                jSONSerializer.setOutputProperties(properties);
            }
            return jSONSerializer;
        }
        if (result instanceof AdaptiveEmitter) {
            AdaptiveEmitter adaptiveEmitter = (AdaptiveEmitter) result;
            if (adaptiveEmitter.getOutputProperties() == null) {
                adaptiveEmitter.setOutputProperties(properties);
            }
            return adaptiveEmitter;
        }
        if (result instanceof Receiver) {
            Receiver receiver = (Receiver) result;
            receiver.setSystemId(result.getSystemId());
            receiver.setPipelineConfiguration(pipelineConfiguration);
            return (((Receiver) result).handlesAppend() && SVGParser.f16048t.equals(properties.getProperty(SaxonOutputKeys.BUILD_TREE))) ? receiver : new TreeReceiver(receiver);
        }
        if (result instanceof SAXResult) {
            ContentHandlerProxy newContentHandlerProxy = newContentHandlerProxy();
            newContentHandlerProxy.setUnderlyingContentHandler(((SAXResult) result).getHandler());
            newContentHandlerProxy.setPipelineConfiguration(pipelineConfiguration);
            newContentHandlerProxy.setOutputProperties(properties);
            if ("yes".equals(properties.getProperty(SaxonOutputKeys.SUPPLY_SOURCE_LOCATOR))) {
                if (!this.f100546a.isCompileWithTracing() || pipelineConfiguration.getController() == null) {
                    throw new XPathException("Cannot use saxon:supply-source-locator unless tracing was enabled at compile time", SaxonErrorCode.SXSE0002);
                }
                pipelineConfiguration.getController().addTraceListener(newContentHandlerProxy.getTraceListener());
            }
            return makeSequenceNormalizer(newContentHandlerProxy, properties);
        }
        if (result instanceof StAXResult) {
            Receiver receiver2 = new StAXResultHandlerImpl().getReceiver(result, properties);
            receiver2.setPipelineConfiguration(pipelineConfiguration);
            return makeSequenceNormalizer(receiver2, properties);
        }
        if (pipelineConfiguration != null) {
            Iterator<ExternalObjectModel> it2 = pipelineConfiguration.getConfiguration().getExternalObjectModels().iterator();
            while (it2.hasNext()) {
                Receiver documentBuilder = it2.next().getDocumentBuilder(result);
                if (documentBuilder != null) {
                    documentBuilder.setSystemId(result.getSystemId());
                    documentBuilder.setPipelineConfiguration(pipelineConfiguration);
                    return new TreeReceiver(documentBuilder);
                }
            }
        }
        throw new IllegalArgumentException("Unknown type of result: " + result.getClass());
    }

    public Configuration getConfiguration() {
        return this.f100546a;
    }

    public Comparator<AtomicValue> getPropertySorter(String str) throws XPathException {
        throw new XPathException("Serialization property saxon:property-order is not available in Saxon-HE");
    }

    @Deprecated
    public Receiver getReceiver(Result result, PipelineConfiguration pipelineConfiguration, Properties properties) throws XPathException {
        return getReceiver(result, new SerializationProperties(properties), pipelineConfiguration);
    }

    public StreamWriterToReceiver getXMLStreamWriter(StreamResult streamResult, Properties properties) throws XPathException {
        return new StreamWriterToReceiver(new NamespaceReducer(getReceiver(streamResult, new SerializationProperties(properties))));
    }

    /* renamed from: i */
    public final CharacterMapExpander m63279i(PipelineConfiguration pipelineConfiguration, Properties properties, CharacterMapIndex characterMapIndex) throws XPathException {
        String property = properties.getProperty(SaxonOutputKeys.USE_CHARACTER_MAPS);
        if (property != null) {
            return characterMapIndex.makeCharacterMapExpander(property, new Sink(pipelineConfiguration), this);
        }
        return null;
    }

    public Receiver injectCharacterMapExpander(SerializationProperties serializationProperties, Receiver receiver, boolean z) throws XPathException {
        String property;
        CharacterMapIndex characterMapIndex = serializationProperties.getCharacterMapIndex();
        if (characterMapIndex == null || (property = serializationProperties.getProperties().getProperty(SaxonOutputKeys.USE_CHARACTER_MAPS)) == null) {
            return receiver;
        }
        CharacterMapExpander makeCharacterMapExpander = characterMapIndex.makeCharacterMapExpander(property, receiver, this);
        makeCharacterMapExpander.setUseNullMarkers(z);
        return makeCharacterMapExpander;
    }

    public Receiver injectUnicodeNormalizer(SerializationProperties serializationProperties, Receiver receiver) throws XPathException {
        Properties properties = serializationProperties.getProperties();
        String property = properties.getProperty(SaxonOutputKeys.NORMALIZATION_FORM);
        return (property == null || property.equals("none")) ? receiver : newUnicodeNormalizer(receiver, properties);
    }

    /* renamed from: j */
    public final ProxyReceiver m63280j(PipelineConfiguration pipelineConfiguration, Properties properties) throws XPathException {
        String property = properties.getProperty(SaxonOutputKeys.NORMALIZATION_FORM);
        if (property == null || property.equals("none")) {
            return null;
        }
        return newUnicodeNormalizer(new Sink(pipelineConfiguration), properties);
    }

    public SequenceReceiver makeSequenceNormalizer(Receiver receiver, Properties properties) {
        String property = properties.getProperty("method");
        if ("json".equals(property) || "adaptive".equals(property)) {
            return receiver instanceof SequenceReceiver ? (SequenceReceiver) receiver : new TreeReceiver(receiver);
        }
        PipelineConfiguration pipelineConfiguration = receiver.getPipelineConfiguration();
        String property2 = properties.getProperty(SaxonOutputKeys.ITEM_SEPARATOR);
        SequenceReceiver sequenceNormalizerWithSpaceSeparator = (property2 == null || "#absent".equals(property2)) ? new SequenceNormalizerWithSpaceSeparator(receiver) : new SequenceNormalizerWithItemSeparator(receiver, StringView.m63901of(property2));
        sequenceNormalizerWithSpaceSeparator.setPipelineConfiguration(pipelineConfiguration);
        return sequenceNormalizerWithSpaceSeparator;
    }

    public Receiver newAttributeSorter(Receiver receiver, Properties properties) throws XPathException {
        return receiver;
    }

    public ProxyReceiver newCDATAFilter(Receiver receiver, Properties properties) throws XPathException {
        CDATAFilter cDATAFilter = new CDATAFilter(receiver);
        cDATAFilter.setOutputProperties(properties);
        return cDATAFilter;
    }

    public CharacterMapExpander newCharacterMapExpander(Receiver receiver) {
        return new CharacterMapExpander(receiver);
    }

    public ContentHandlerProxy newContentHandlerProxy() {
        return new ContentHandlerProxy();
    }

    public Emitter newHTMLEmitter(Properties properties) {
        return SaxonOutputKeys.isHtmlVersion5(properties) ? new HTML50Emitter() : new HTML40Emitter();
    }

    public ProxyReceiver newHTMLIndenter(Receiver receiver, Properties properties) {
        HTMLIndenter hTMLIndenter = new HTMLIndenter(receiver, "html");
        hTMLIndenter.setOutputProperties(properties);
        return hTMLIndenter;
    }

    public MetaTagAdjuster newHTMLMetaTagAdjuster(Receiver receiver, Properties properties) {
        MetaTagAdjuster metaTagAdjuster = new MetaTagAdjuster(receiver);
        metaTagAdjuster.setIsXHTML(false);
        metaTagAdjuster.setOutputProperties(properties);
        return metaTagAdjuster;
    }

    public ProxyReceiver newHTMLURIEscaper(Receiver receiver, Properties properties) {
        return new HTMLURIEscaper(receiver);
    }

    public Receiver newNamespaceSorter(Receiver receiver, Properties properties) throws XPathException {
        return receiver;
    }

    public SequenceWrapper newSequenceWrapper(Receiver receiver) {
        return new SequenceWrapper(receiver);
    }

    public Emitter newTEXTEmitter() {
        return new TEXTEmitter();
    }

    public UncommittedSerializer newUncommittedSerializer(Result result, Receiver receiver, SerializationProperties serializationProperties) {
        return new UncommittedSerializer(result, receiver, serializationProperties);
    }

    public ProxyReceiver newUnicodeNormalizer(Receiver receiver, Properties properties) throws XPathException {
        return new UnicodeNormalizer(properties.getProperty(SaxonOutputKeys.NORMALIZATION_FORM), receiver);
    }

    public Emitter newXHTMLEmitter(Properties properties) {
        return SaxonOutputKeys.isXhtmlHtmlVersion5(properties) ? new XHTML5Emitter() : new XHTML1Emitter();
    }

    public ProxyReceiver newXHTMLIndenter(Receiver receiver, Properties properties) {
        String property = properties.getProperty(SaxonOutputKeys.HTML_VERSION);
        HTMLIndenter hTMLIndenter = new HTMLIndenter(receiver, (property == null || !property.startsWith("5")) ? "xhtml" : "xhtml5");
        hTMLIndenter.setOutputProperties(properties);
        return hTMLIndenter;
    }

    public MetaTagAdjuster newXHTMLMetaTagAdjuster(Receiver receiver, Properties properties) {
        MetaTagAdjuster metaTagAdjuster = new MetaTagAdjuster(receiver);
        metaTagAdjuster.setIsXHTML(true);
        metaTagAdjuster.setOutputProperties(properties);
        return metaTagAdjuster;
    }

    public ProxyReceiver newXHTMLURIEscaper(Receiver receiver, Properties properties) {
        return new XHTMLURIEscaper(receiver);
    }

    public ProxyReceiver newXML10ContentChecker(Receiver receiver, Properties properties) {
        return new XML10ContentChecker(receiver);
    }

    public Emitter newXMLEmitter(Properties properties) {
        return new XMLEmitter();
    }

    public ProxyReceiver newXMLIndenter(XMLEmitter xMLEmitter, Properties properties) {
        XMLIndenter xMLIndenter = new XMLIndenter(xMLEmitter);
        xMLIndenter.setOutputProperties(properties);
        return xMLIndenter;
    }

    public SequenceReceiver prepareNextStylesheet(PipelineConfiguration pipelineConfiguration, String str, String str2, Result result) throws XPathException {
        pipelineConfiguration.getConfiguration().checkLicensedFeature(8, "saxon:next-in-chain", -1);
        return null;
    }

    public Receiver getReceiver(Result result) throws XPathException {
        return getReceiver(result, new SerializationProperties(), this.f100546a.makePipelineConfiguration());
    }

    public SerializerFactory(PipelineConfiguration pipelineConfiguration) {
        this.f100547b = pipelineConfiguration;
        this.f100546a = pipelineConfiguration.getConfiguration();
    }

    public Receiver getReceiver(Result result, SerializationProperties serializationProperties) throws XPathException {
        return getReceiver(result, serializationProperties, this.f100546a.makePipelineConfiguration());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0160, code lost:
    
        if (r14.equals("text") == false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public net.p110sf.saxon.event.Receiver getReceiver(javax.xml.transform.Result r13, net.p110sf.saxon.serialize.SerializationProperties r14, net.p110sf.saxon.event.PipelineConfiguration r15) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.lib.SerializerFactory.getReceiver(javax.xml.transform.Result, net.sf.saxon.serialize.SerializationProperties, net.sf.saxon.event.PipelineConfiguration):net.sf.saxon.event.Receiver");
    }
}
