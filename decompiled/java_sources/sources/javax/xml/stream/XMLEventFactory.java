package javax.xml.stream;

import com.sunia.HTREnginev2.ddm;
import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.stream.FactoryFinder;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.Comment;
import javax.xml.stream.events.DTD;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.EntityDeclaration;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.Namespace;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.StartElement;

/* loaded from: classes5.dex */
public abstract class XMLEventFactory {
    private static final String DEFAULT_FACTORY = "org.apache.xerces.stax.XMLEventFactoryImpl";
    private static final String PROPERTY_NAME = "javax.xml.stream.XMLEventFactory";

    public static XMLEventFactory newInstance() throws FactoryConfigurationError {
        try {
            return (XMLEventFactory) FactoryFinder.m61519c(PROPERTY_NAME, DEFAULT_FACTORY);
        } catch (FactoryFinder.ConfigurationError e) {
            throw new FactoryConfigurationError(e.getException(), e.getMessage());
        }
    }

    public abstract Attribute createAttribute(String str, String str2);

    public abstract Attribute createAttribute(String str, String str2, String str3, String str4);

    public abstract Attribute createAttribute(QName qName, String str);

    public abstract Characters createCData(String str);

    public abstract Characters createCharacters(String str);

    public abstract Comment createComment(String str);

    public abstract DTD createDTD(String str);

    public abstract EndDocument createEndDocument();

    public abstract EndElement createEndElement(String str, String str2, String str3);

    public abstract EndElement createEndElement(String str, String str2, String str3, Iterator it2);

    public abstract EndElement createEndElement(QName qName, Iterator it2);

    public abstract EntityReference createEntityReference(String str, EntityDeclaration entityDeclaration);

    public abstract Characters createIgnorableSpace(String str);

    public abstract Namespace createNamespace(String str);

    public abstract Namespace createNamespace(String str, String str2);

    public abstract ProcessingInstruction createProcessingInstruction(String str, String str2);

    public abstract Characters createSpace(String str);

    public abstract StartDocument createStartDocument();

    public abstract StartDocument createStartDocument(String str);

    public abstract StartDocument createStartDocument(String str, String str2);

    public abstract StartDocument createStartDocument(String str, String str2, boolean z);

    public abstract StartElement createStartElement(String str, String str2, String str3);

    public abstract StartElement createStartElement(String str, String str2, String str3, Iterator it2, Iterator it3);

    public abstract StartElement createStartElement(String str, String str2, String str3, Iterator it2, Iterator it3, NamespaceContext namespaceContext);

    public abstract StartElement createStartElement(QName qName, Iterator it2, Iterator it3);

    public abstract void setLocation(Location location);

    public static XMLEventFactory newInstance(String str, ClassLoader classLoader) throws FactoryConfigurationError {
        if (classLoader == null) {
            classLoader = ddm.m53636b();
        }
        try {
            return (XMLEventFactory) FactoryFinder.m61518b(str, classLoader, DEFAULT_FACTORY);
        } catch (FactoryFinder.ConfigurationError e) {
            throw new FactoryConfigurationError(e.getException(), e.getMessage());
        }
    }
}
