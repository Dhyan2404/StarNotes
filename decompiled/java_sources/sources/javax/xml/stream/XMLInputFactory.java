package javax.xml.stream;

import com.sunia.HTREnginev2.ddm;
import java.io.InputStream;
import java.io.Reader;
import javax.xml.stream.FactoryFinder;
import javax.xml.stream.util.XMLEventAllocator;
import javax.xml.transform.Source;

/* loaded from: classes5.dex */
public abstract class XMLInputFactory {
    public static final String ALLOCATOR = "javax.xml.stream.allocator";
    private static final String DEFAULT_FACTORY = "com.ctc.wstx.stax.WstxInputFactory";
    public static final String IS_COALESCING = "javax.xml.stream.isCoalescing";
    public static final String IS_NAMESPACE_AWARE = "javax.xml.stream.isNamespaceAware";
    public static final String IS_REPLACING_ENTITY_REFERENCES = "javax.xml.stream.isReplacingEntityReferences";
    public static final String IS_SUPPORTING_EXTERNAL_ENTITIES = "javax.xml.stream.isSupportingExternalEntities";
    public static final String IS_VALIDATING = "javax.xml.stream.isValidating";
    private static final String PROPERTY_NAME = "javax.xml.stream.XMLInputFactory";
    public static final String REPORTER = "javax.xml.stream.reporter";
    public static final String RESOLVER = "javax.xml.stream.resolver";
    public static final String SUPPORT_DTD = "javax.xml.stream.supportDTD";

    public static XMLInputFactory newInstance() throws FactoryConfigurationError {
        try {
            return (XMLInputFactory) FactoryFinder.m61519c(PROPERTY_NAME, DEFAULT_FACTORY);
        } catch (FactoryFinder.ConfigurationError e) {
            throw new FactoryConfigurationError(e.getException(), e.getMessage());
        }
    }

    public abstract XMLEventReader createFilteredReader(XMLEventReader xMLEventReader, EventFilter eventFilter) throws XMLStreamException;

    public abstract XMLStreamReader createFilteredReader(XMLStreamReader xMLStreamReader, StreamFilter streamFilter) throws XMLStreamException;

    public abstract XMLEventReader createXMLEventReader(InputStream inputStream) throws XMLStreamException;

    public abstract XMLEventReader createXMLEventReader(InputStream inputStream, String str) throws XMLStreamException;

    public abstract XMLEventReader createXMLEventReader(Reader reader) throws XMLStreamException;

    public abstract XMLEventReader createXMLEventReader(String str, InputStream inputStream) throws XMLStreamException;

    public abstract XMLEventReader createXMLEventReader(String str, Reader reader) throws XMLStreamException;

    public abstract XMLEventReader createXMLEventReader(XMLStreamReader xMLStreamReader) throws XMLStreamException;

    public abstract XMLEventReader createXMLEventReader(Source source) throws XMLStreamException;

    public abstract XMLStreamReader createXMLStreamReader(InputStream inputStream) throws XMLStreamException;

    public abstract XMLStreamReader createXMLStreamReader(InputStream inputStream, String str) throws XMLStreamException;

    public abstract XMLStreamReader createXMLStreamReader(Reader reader) throws XMLStreamException;

    public abstract XMLStreamReader createXMLStreamReader(String str, InputStream inputStream) throws XMLStreamException;

    public abstract XMLStreamReader createXMLStreamReader(String str, Reader reader) throws XMLStreamException;

    public abstract XMLStreamReader createXMLStreamReader(Source source) throws XMLStreamException;

    public abstract XMLEventAllocator getEventAllocator();

    public abstract Object getProperty(String str) throws IllegalArgumentException;

    public abstract XMLReporter getXMLReporter();

    public abstract XMLResolver getXMLResolver();

    public abstract boolean isPropertySupported(String str);

    public abstract void setEventAllocator(XMLEventAllocator xMLEventAllocator);

    public abstract void setProperty(String str, Object obj) throws IllegalArgumentException;

    public abstract void setXMLReporter(XMLReporter xMLReporter);

    public abstract void setXMLResolver(XMLResolver xMLResolver);

    public static XMLInputFactory newInstance(String str, ClassLoader classLoader) throws FactoryConfigurationError {
        if (classLoader == null) {
            classLoader = ddm.m53636b();
        }
        try {
            return (XMLInputFactory) FactoryFinder.m61518b(str, classLoader, DEFAULT_FACTORY);
        } catch (FactoryFinder.ConfigurationError e) {
            throw new FactoryConfigurationError(e.getException(), e.getMessage());
        }
    }
}
