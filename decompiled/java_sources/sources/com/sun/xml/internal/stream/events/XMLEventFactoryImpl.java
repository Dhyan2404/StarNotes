package com.sun.xml.internal.stream.events;

import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLEventFactory;
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

/* loaded from: classes10.dex */
public class XMLEventFactoryImpl extends XMLEventFactory {
    Location location = null;

    @Override // javax.xml.stream.XMLEventFactory
    public Attribute createAttribute(String str, String str2) {
        AttributeImpl attributeImpl = new AttributeImpl(str, str2);
        Location location = this.location;
        if (location != null) {
            attributeImpl.setLocation(location);
        }
        return attributeImpl;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Characters createCData(String str) {
        CharacterEvent characterEvent = new CharacterEvent(str, true);
        Location location = this.location;
        if (location != null) {
            characterEvent.setLocation(location);
        }
        return characterEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Characters createCharacters(String str) {
        CharacterEvent characterEvent = new CharacterEvent(str);
        Location location = this.location;
        if (location != null) {
            characterEvent.setLocation(location);
        }
        return characterEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Comment createComment(String str) {
        CommentEvent commentEvent = new CommentEvent(str);
        Location location = this.location;
        if (location != null) {
            commentEvent.setLocation(location);
        }
        return commentEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public DTD createDTD(String str) {
        DTDEvent dTDEvent = new DTDEvent(str);
        Location location = this.location;
        if (location != null) {
            dTDEvent.setLocation(location);
        }
        return dTDEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EndDocument createEndDocument() {
        EndDocumentEvent endDocumentEvent = new EndDocumentEvent();
        Location location = this.location;
        if (location != null) {
            endDocumentEvent.setLocation(location);
        }
        return endDocumentEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EndElement createEndElement(QName qName, Iterator it2) {
        return createEndElement(qName.getPrefix(), qName.getNamespaceURI(), qName.getLocalPart());
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EntityReference createEntityReference(String str, EntityDeclaration entityDeclaration) {
        EntityReferenceEvent entityReferenceEvent = new EntityReferenceEvent(str, entityDeclaration);
        Location location = this.location;
        if (location != null) {
            entityReferenceEvent.setLocation(location);
        }
        return entityReferenceEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Characters createIgnorableSpace(String str) {
        CharacterEvent characterEvent = new CharacterEvent(str, false, true);
        Location location = this.location;
        if (location != null) {
            characterEvent.setLocation(location);
        }
        return characterEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Namespace createNamespace(String str) {
        NamespaceImpl namespaceImpl = new NamespaceImpl(str);
        Location location = this.location;
        if (location != null) {
            namespaceImpl.setLocation(location);
        }
        return namespaceImpl;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public ProcessingInstruction createProcessingInstruction(String str, String str2) {
        ProcessingInstructionEvent processingInstructionEvent = new ProcessingInstructionEvent(str, str2);
        Location location = this.location;
        if (location != null) {
            processingInstructionEvent.setLocation(location);
        }
        return processingInstructionEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Characters createSpace(String str) {
        CharacterEvent characterEvent = new CharacterEvent(str);
        Location location = this.location;
        if (location != null) {
            characterEvent.setLocation(location);
        }
        return characterEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartDocument createStartDocument() {
        StartDocumentEvent startDocumentEvent = new StartDocumentEvent();
        Location location = this.location;
        if (location != null) {
            startDocumentEvent.setLocation(location);
        }
        return startDocumentEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartElement createStartElement(QName qName, Iterator it2, Iterator it3) {
        return createStartElement(qName.getPrefix(), qName.getNamespaceURI(), qName.getLocalPart(), it2, it3);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public void setLocation(Location location) {
        this.location = location;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EndElement createEndElement(String str, String str2, String str3) {
        EndElementEvent endElementEvent = new EndElementEvent(str, str2, str3);
        Location location = this.location;
        if (location != null) {
            endElementEvent.setLocation(location);
        }
        return endElementEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartElement createStartElement(String str, String str2, String str3) {
        StartElementEvent startElementEvent = new StartElementEvent(str, str2, str3);
        Location location = this.location;
        if (location != null) {
            startElementEvent.setLocation(location);
        }
        return startElementEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Attribute createAttribute(QName qName, String str) {
        return createAttribute(qName.getPrefix(), qName.getNamespaceURI(), qName.getLocalPart(), str);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Namespace createNamespace(String str, String str2) {
        NamespaceImpl namespaceImpl = new NamespaceImpl(str, str2);
        Location location = this.location;
        if (location != null) {
            namespaceImpl.setLocation(location);
        }
        return namespaceImpl;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartDocument createStartDocument(String str) {
        StartDocumentEvent startDocumentEvent = new StartDocumentEvent(str);
        Location location = this.location;
        if (location != null) {
            startDocumentEvent.setLocation(location);
        }
        return startDocumentEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public Attribute createAttribute(String str, String str2, String str3, String str4) {
        AttributeImpl attributeImpl = new AttributeImpl(str, str2, str3, str4, (String) null);
        Location location = this.location;
        if (location != null) {
            attributeImpl.setLocation(location);
        }
        return attributeImpl;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public EndElement createEndElement(String str, String str2, String str3, Iterator it2) {
        EndElementEvent endElementEvent = new EndElementEvent(str, str2, str3);
        if (it2 != null) {
            while (it2.hasNext()) {
                endElementEvent.addNamespace((Namespace) it2.next());
            }
        }
        Location location = this.location;
        if (location != null) {
            endElementEvent.setLocation(location);
        }
        return endElementEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartElement createStartElement(String str, String str2, String str3, Iterator it2, Iterator it3) {
        return createStartElement(str, str2, str3, it2, it3, null);
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartDocument createStartDocument(String str, String str2) {
        StartDocumentEvent startDocumentEvent = new StartDocumentEvent(str, str2);
        Location location = this.location;
        if (location != null) {
            startDocumentEvent.setLocation(location);
        }
        return startDocumentEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartElement createStartElement(String str, String str2, String str3, Iterator it2, Iterator it3, NamespaceContext namespaceContext) {
        StartElementEvent startElementEvent = new StartElementEvent(str, str2, str3);
        startElementEvent.addAttributes(it2);
        startElementEvent.addNamespaceAttributes(it3);
        startElementEvent.setNamespaceContext(namespaceContext);
        Location location = this.location;
        if (location != null) {
            startElementEvent.setLocation(location);
        }
        return startElementEvent;
    }

    @Override // javax.xml.stream.XMLEventFactory
    public StartDocument createStartDocument(String str, String str2, boolean z) {
        StartDocumentEvent startDocumentEvent = new StartDocumentEvent(str, str2, z);
        Location location = this.location;
        if (location != null) {
            startDocumentEvent.setLocation(location);
        }
        return startDocumentEvent;
    }
}
