package net.p110sf.saxon.s9api;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.event.CloseNotifier;
import net.p110sf.saxon.event.NamespaceReducer;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.ReceivingContentHandler;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.event.SequenceNormalizer;
import net.p110sf.saxon.event.StreamWriterToReceiver;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.lib.SerializerFactory;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.QueryResult;
import net.p110sf.saxon.serialize.CharacterMap;
import net.p110sf.saxon.serialize.CharacterMapIndex;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.ContentHandler;

/* loaded from: classes11.dex */
public class Serializer extends AbstractDestination {

    /* renamed from: k */
    public static final Map<String, Property> f101366k = new HashMap();

    /* renamed from: f */
    public Processor f101367f;

    /* renamed from: g */
    public final Map<StructuredQName, String> f101368g = new HashMap(10);

    /* renamed from: h */
    public final StreamResult f101369h = new StreamResult();

    /* renamed from: i */
    public CharacterMapIndex f101370i = null;

    /* renamed from: j */
    public boolean f101371j = false;

    /* loaded from: classes11.dex */
    public enum Property {
        METHOD("method"),
        VERSION("version"),
        ENCODING("encoding"),
        OMIT_XML_DECLARATION("omit-xml-declaration"),
        STANDALONE("standalone"),
        DOCTYPE_PUBLIC("doctype-public"),
        DOCTYPE_SYSTEM("doctype-system"),
        CDATA_SECTION_ELEMENTS("cdata-section-elements"),
        INDENT("indent"),
        MEDIA_TYPE("media-type"),
        USE_CHARACTER_MAPS(SaxonOutputKeys.USE_CHARACTER_MAPS),
        INCLUDE_CONTENT_TYPE(SaxonOutputKeys.INCLUDE_CONTENT_TYPE),
        UNDECLARE_PREFIXES(SaxonOutputKeys.UNDECLARE_PREFIXES),
        ESCAPE_URI_ATTRIBUTES(SaxonOutputKeys.ESCAPE_URI_ATTRIBUTES),
        BYTE_ORDER_MARK(SaxonOutputKeys.BYTE_ORDER_MARK),
        NORMALIZATION_FORM(SaxonOutputKeys.NORMALIZATION_FORM),
        ITEM_SEPARATOR(SaxonOutputKeys.ITEM_SEPARATOR),
        HTML_VERSION(SaxonOutputKeys.HTML_VERSION),
        BUILD_TREE(SaxonOutputKeys.BUILD_TREE),
        SAXON_INDENT_SPACES(SaxonOutputKeys.INDENT_SPACES),
        SAXON_INTERNAL_DTD_SUBSET(SaxonOutputKeys.INTERNAL_DTD_SUBSET),
        SAXON_LINE_LENGTH(SaxonOutputKeys.LINE_LENGTH),
        SAXON_ATTRIBUTE_ORDER(SaxonOutputKeys.ATTRIBUTE_ORDER),
        SAXON_CANONICAL(SaxonOutputKeys.CANONICAL),
        SAXON_NEWLINE(SaxonOutputKeys.NEWLINE),
        SAXON_SUPPRESS_INDENTATION(SaxonOutputKeys.SUPPRESS_INDENTATION),
        SAXON_DOUBLE_SPACE(SaxonOutputKeys.DOUBLE_SPACE),
        SAXON_STYLESHEET_VERSION(SaxonOutputKeys.STYLESHEET_VERSION),
        SAXON_CHARACTER_REPRESENTATION(SaxonOutputKeys.CHARACTER_REPRESENTATION),
        SAXON_RECOGNIZE_BINARY(SaxonOutputKeys.RECOGNIZE_BINARY),
        SAXON_REQUIRE_WELL_FORMED(SaxonOutputKeys.REQUIRE_WELL_FORMED),
        SAXON_WRAP(SaxonOutputKeys.WRAP),
        SAXON_SUPPLY_SOURCE_LOCATOR(SaxonOutputKeys.SUPPLY_SOURCE_LOCATOR);

        private final String name;

        Property(String str) {
            this.name = str;
        }

        public static Property get(String str) {
            for (Property property : values()) {
                if (property.name.equals(str)) {
                    return property;
                }
            }
            return null;
        }

        public QName getQName() {
            return QName.fromClarkName(this.name);
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }
    }

    static {
        for (Property property : Property.values()) {
            f101366k.put(property.toString(), property);
        }
    }

    public Serializer(Processor processor) {
        setProcessor(processor);
    }

    public static Property getProperty(QName qName) {
        String clarkName = qName.getClarkName();
        Property property = f101366k.get(clarkName);
        if (property != null) {
            return property;
        }
        throw new IllegalArgumentException("Unknown serialization property " + clarkName);
    }

    /* renamed from: a */
    public final void m63663a(XdmNode xdmNode, Result result) throws SaxonApiException {
        try {
            QueryResult.serialize(xdmNode.getUnderlyingNode(), result, getLocallyDefinedProperties());
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() throws SaxonApiException {
        if (this.f101371j) {
            OutputStream outputStream = this.f101369h.getOutputStream();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    throw new SaxonApiException("Failed while closing output file", e);
                }
            }
            Writer writer = this.f101369h.getWriter();
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e2) {
                    throw new SaxonApiException("Failed while closing output file", e2);
                }
            }
        }
    }

    public CharacterMapIndex getCharacterMapIndex() {
        if (this.f101370i == null) {
            this.f101370i = new CharacterMapIndex();
        }
        return this.f101370i;
    }

    public Properties getCombinedOutputProperties(Properties properties) {
        Properties properties2 = properties == null ? new Properties() : new Properties(properties);
        for (StructuredQName structuredQName : this.f101368g.keySet()) {
            properties2.setProperty(structuredQName.getClarkName(), this.f101368g.get(structuredQName));
        }
        return properties2;
    }

    public ContentHandler getContentHandler() throws SaxonApiException {
        NamespaceReducer namespaceReducer = new NamespaceReducer(getReceiver(this.f101367f.getUnderlyingConfiguration().makePipelineConfiguration(), getSerializationProperties()));
        ReceivingContentHandler receivingContentHandler = new ReceivingContentHandler();
        receivingContentHandler.setReceiver(namespaceReducer);
        receivingContentHandler.setPipelineConfiguration(namespaceReducer.getPipelineConfiguration());
        return receivingContentHandler;
    }

    public Properties getLocallyDefinedProperties() {
        Properties properties = new Properties();
        for (StructuredQName structuredQName : this.f101368g.keySet()) {
            properties.setProperty(structuredQName.getClarkName(), this.f101368g.get(structuredQName));
        }
        return properties;
    }

    public Object getOutputDestination() {
        if (this.f101369h.getOutputStream() != null) {
            return this.f101369h.getOutputStream();
        }
        if (this.f101369h.getWriter() != null) {
            return this.f101369h.getWriter();
        }
        String systemId = this.f101369h.getSystemId();
        if (systemId != null) {
            try {
                return new File(new URI(systemId));
            } catch (URISyntaxException unused) {
            }
        }
        return null;
    }

    public String getOutputProperty(Property property) {
        return this.f101368g.get(property.getQName().getStructuredQName());
    }

    public Processor getProcessor() {
        return this.f101367f;
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) throws SaxonApiException {
        try {
            Receiver receiver = pipelineConfiguration.getConfiguration().getSerializerFactory().getReceiver(this.f101369h, getSerializationProperties().combineWith(serializationProperties), pipelineConfiguration);
            if (this.helper.getListeners() != null) {
                if (receiver instanceof SequenceNormalizer) {
                    ((SequenceNormalizer) receiver).onClose(this.helper.getListeners());
                } else {
                    receiver = new CloseNotifier(receiver, this.helper.getListeners());
                }
            }
            if (receiver.getSystemId() == null && getDestinationBaseURI() != null) {
                receiver.setSystemId(getDestinationBaseURI().toASCIIString());
            }
            return receiver;
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public Result getResult() {
        return this.f101369h;
    }

    public SerializationProperties getSerializationProperties() {
        return new SerializationProperties(getLocallyDefinedProperties(), this.f101370i);
    }

    public StreamWriterToReceiver getXMLStreamWriter() throws SaxonApiException {
        return new StreamWriterToReceiver(new NamespaceReducer(getReceiver(this.f101367f.getUnderlyingConfiguration().makePipelineConfiguration(), getSerializationProperties())));
    }

    public boolean isMustCloseAfterUse() {
        return this.f101371j;
    }

    public void serialize(Source source) throws SaxonApiException {
        try {
            Sender.send(source, this.f101367f.getUnderlyingConfiguration().getSerializerFactory().getReceiver(this.f101369h, new SerializationProperties(getLocallyDefinedProperties())), this.f101367f.getUnderlyingConfiguration().getParseOptions());
            closeAndNotify();
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void serializeNode(XdmNode xdmNode) throws SaxonApiException {
        StreamResult streamResult = this.f101369h;
        if (streamResult.getOutputStream() == null && streamResult.getWriter() == null && streamResult.getSystemId() == null) {
            throw new IllegalStateException("Either an outputStream, or a Writer, or a File must be supplied");
        }
        m63663a(xdmNode, streamResult);
    }

    public String serializeNodeToString(XdmNode xdmNode) throws SaxonApiException {
        StringWriter stringWriter = new StringWriter();
        m63663a(xdmNode, new StreamResult(stringWriter));
        return stringWriter.toString();
    }

    public String serializeToString(Source source) throws SaxonApiException {
        try {
            SerializerFactory serializerFactory = this.f101367f.getUnderlyingConfiguration().getSerializerFactory();
            StringWriter stringWriter = new StringWriter();
            Sender.send(source, serializerFactory.getReceiver(new StreamResult(stringWriter), new SerializationProperties(getLocallyDefinedProperties())), this.f101367f.getUnderlyingConfiguration().getParseOptions());
            closeAndNotify();
            return stringWriter.toString();
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void serializeXdmValue(XdmValue xdmValue) throws SaxonApiException {
        if (xdmValue instanceof XdmNode) {
            serializeNode((XdmNode) xdmValue);
        } else {
            try {
                QueryResult.serializeSequence(xdmValue.getUnderlyingValue().iterate(), this.f101367f.getUnderlyingConfiguration(), this.f101369h, new SerializationProperties(getLocallyDefinedProperties(), this.f101370i));
            } catch (XPathException e) {
                throw new SaxonApiException(e);
            }
        }
        closeAndNotify();
    }

    public void setCharacterMap(CharacterMapIndex characterMapIndex) {
        CharacterMapIndex characterMapIndex2 = this.f101370i;
        if (characterMapIndex2 != null && !characterMapIndex2.isEmpty()) {
            if (characterMapIndex != null && !characterMapIndex.isEmpty() && characterMapIndex2 != characterMapIndex) {
                characterMapIndex2 = characterMapIndex2.copy();
                Iterator<CharacterMap> it2 = characterMapIndex.iterator();
                while (it2.hasNext()) {
                    CharacterMap next = it2.next();
                    characterMapIndex2.putCharacterMap(next.getName(), next);
                }
            }
            characterMapIndex = characterMapIndex2;
        }
        this.f101370i = characterMapIndex;
    }

    public void setCloseOnCompletion(boolean z) {
        this.f101371j = z;
    }

    public void setOutputFile(File file) {
        this.f101369h.setOutputStream(null);
        this.f101369h.setWriter(null);
        this.f101369h.setSystemId(file);
        setDestinationBaseURI(file.toURI());
        this.f101371j = true;
    }

    public void setOutputProperties(Properties properties) {
        for (String str : properties.stringPropertyNames()) {
            this.f101368g.put(StructuredQName.fromClarkName(str), properties.getProperty(str));
        }
    }

    public void setOutputProperty(Property property, String str) {
        try {
            String checkOutputProperty = this.f101367f.getUnderlyingConfiguration().getSerializerFactory().checkOutputProperty(property.toString(), str);
            if (checkOutputProperty == null) {
                this.f101368g.remove(property.getQName().getStructuredQName());
            } else {
                this.f101368g.put(property.getQName().getStructuredQName(), checkOutputProperty);
            }
        } catch (XPathException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    public void setOutputStream(OutputStream outputStream) {
        this.f101369h.setWriter(null);
        this.f101369h.setSystemId((String) null);
        this.f101369h.setOutputStream(outputStream);
        this.f101371j = false;
    }

    public void setOutputWriter(Writer writer) {
        this.f101369h.setOutputStream(null);
        this.f101369h.setSystemId((String) null);
        this.f101369h.setWriter(writer);
        this.f101371j = false;
    }

    public void setProcessor(Processor processor) {
        Objects.requireNonNull(processor);
        this.f101367f = processor;
    }

    public String getOutputProperty(QName qName) {
        return this.f101368g.get(qName.getStructuredQName());
    }

    public void setOutputProperties(SerializationProperties serializationProperties) {
        setOutputProperties(serializationProperties.getProperties());
        setCharacterMap(serializationProperties.getCharacterMapIndex());
    }

    public void setOutputProperty(QName qName, String str) {
        SerializerFactory serializerFactory = this.f101367f.getUnderlyingConfiguration().getSerializerFactory();
        String namespaceURI = qName.getNamespaceURI();
        if (namespaceURI.isEmpty() || namespaceURI.equals(NamespaceConstant.SAXON)) {
            try {
                str = serializerFactory.checkOutputProperty(qName.getClarkName(), str);
                if (namespaceURI.equals(NamespaceConstant.SAXON) && qName.getLocalName().equals("next-in-chain")) {
                    throw new IllegalArgumentException("saxon:next-in-chain is not a valid serialization property");
                }
            } catch (XPathException e) {
                throw new IllegalArgumentException(e.getMessage());
            }
        }
        if (str == null) {
            this.f101368g.remove(qName.getStructuredQName());
        } else {
            this.f101368g.put(qName.getStructuredQName(), str);
        }
    }
}
