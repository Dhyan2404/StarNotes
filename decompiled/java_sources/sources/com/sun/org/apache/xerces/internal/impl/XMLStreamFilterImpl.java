package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.util.NamespaceContextWrapper;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.xml.internal.stream.events.AttributeImpl;
import com.sun.xml.internal.stream.events.NamespaceImpl;
import java.util.ArrayList;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.StreamFilter;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

/* loaded from: classes10.dex */
public class XMLStreamFilterImpl implements XMLStreamReader {
    private static boolean DEBUG;
    private ArrayList fCachedAttributes;
    private ArrayList fCachedNamespaceAttr;
    private int fCurrentEventType;
    private StreamFilter fStreamFilter;
    private XMLStreamReader fStreamReader;
    private QName fElementName = null;
    private String fLocalName = null;
    private boolean fHasName = false;
    private boolean fReadNext = true;
    private boolean fHasMoreEvents = true;
    private boolean fReadFromCache = true;
    private NamespaceContextWrapper fCachedNamespaceContext = null;
    private String fCachedElementText = null;
    private int fCachedEventType = -1;
    private String fCachedVersion = null;
    private String fCachedEncoding = null;
    private boolean fCachedStandalone = false;
    private Location fCachedLocation = null;
    private String fCachedTextValue = null;
    private String fCachedPITarget = null;
    private String fCachedPIData = null;
    private String fCachedCharEncoding = null;

    public XMLStreamFilterImpl(XMLStreamReader xMLStreamReader, StreamFilter streamFilter) {
        this.fCurrentEventType = -1;
        this.fCachedAttributes = null;
        this.fCachedNamespaceAttr = null;
        this.fStreamReader = xMLStreamReader;
        this.fStreamFilter = streamFilter;
        this.fCachedAttributes = new ArrayList();
        this.fCachedNamespaceAttr = new ArrayList();
        try {
            if (!this.fStreamFilter.accept(this.fStreamReader)) {
                next();
                cache();
            }
        } catch (XMLStreamException e) {
            System.err.println("Error while creating a stream Filter" + e);
        }
        this.fCurrentEventType = this.fStreamReader.getEventType();
        if (DEBUG) {
            System.out.println("Cached Event" + this.fCachedEventType);
        }
    }

    private void cache() {
        this.fReadFromCache = true;
        this.fCachedEventType = this.fCurrentEventType;
        clearCache();
        this.fCachedLocation = this.fStreamReader.getLocation();
        switch (this.fCurrentEventType) {
            case 1:
                try {
                    this.fElementName = this.fStreamReader.getName();
                    this.fHasName = this.fStreamReader.hasName();
                    this.fLocalName = this.fElementName.getLocalPart();
                    if (DEBUG) {
                        System.out.println("Name is " + this.fLocalName);
                        System.out.println("Name is " + this.fElementName);
                    }
                    cacheAttributes();
                    cacheNamespaceAttributes();
                    cacheNamespaceContext();
                    if (this.fStreamReader.hasText()) {
                        this.fCachedElementText = this.fStreamReader.getElementText();
                        return;
                    }
                    return;
                } catch (Exception e) {
                    System.err.println("Error occurred while trying to cache START_ELEMENT" + e.getMessage());
                    return;
                }
            case 2:
                this.fElementName = this.fStreamReader.getName();
                this.fHasName = this.fStreamReader.hasName();
                this.fLocalName = this.fElementName.getLocalPart();
                cacheNamespaceContext();
                return;
            case 3:
                this.fCachedPIData = this.fStreamReader.getPIData();
                this.fCachedPITarget = this.fStreamReader.getPITarget();
                return;
            case 4:
            case 5:
            case 6:
            case 12:
                this.fCachedTextValue = this.fStreamReader.getText();
                return;
            case 7:
                this.fCachedVersion = this.fStreamReader.getVersion();
                this.fCachedEncoding = this.fStreamReader.getEncoding();
                this.fCachedStandalone = this.fStreamReader.isStandalone();
                this.fCachedCharEncoding = this.fStreamReader.getCharacterEncodingScheme();
                return;
            case 8:
            case 10:
            default:
                return;
            case 9:
                this.fLocalName = this.fStreamReader.getLocalName();
                this.fCachedTextValue = this.fStreamReader.getText();
                return;
            case 11:
                this.fCachedTextValue = this.fStreamReader.getText();
                return;
        }
    }

    private void cacheAttributes() {
        int attributeCount = this.fStreamReader.getAttributeCount();
        this.fCachedAttributes.clear();
        for (int i = 0; i < attributeCount; i++) {
            QName attributeName = this.fStreamReader.getAttributeName(i);
            attributeName.getPrefix();
            attributeName.getLocalPart();
            AttributeImpl attributeImpl = new AttributeImpl();
            attributeImpl.setName(attributeName);
            attributeImpl.setAttributeType(this.fStreamReader.getAttributeType(i));
            attributeImpl.setSpecified(this.fStreamReader.isAttributeSpecified(i));
            attributeImpl.setValue(this.fStreamReader.getAttributeValue(i));
            this.fCachedAttributes.add(attributeImpl);
        }
    }

    private void cacheNamespaceContext() {
        this.fCachedNamespaceContext = new NamespaceContextWrapper(new NamespaceSupport(((NamespaceContextWrapper) this.fStreamReader.getNamespaceContext()).getNamespaceContext()));
    }

    private void clearCache() {
        this.fCachedAttributes.clear();
        this.fCachedNamespaceAttr.clear();
        this.fCachedNamespaceContext = null;
        this.fCachedElementText = null;
        this.fCachedVersion = null;
        this.fCachedEncoding = null;
        this.fCachedLocation = null;
        this.fCachedTextValue = null;
        this.fCachedPITarget = null;
        this.fCachedPIData = null;
        this.fCachedCharEncoding = null;
        this.fElementName = null;
        this.fHasName = false;
        this.fLocalName = null;
    }

    private AttributeImpl getCachedAttribute(int i) {
        int i2 = this.fCachedEventType;
        if (i2 == 1 || i2 == 10) {
            if (i < this.fCachedAttributes.size()) {
                return (AttributeImpl) this.fCachedAttributes.get(i);
            }
            return null;
        }
        throw new IllegalStateException("Current event state is " + this.fCachedEventType);
    }

    private boolean readNext() throws XMLStreamException {
        while (this.fStreamReader.hasNext()) {
            this.fStreamReader.next();
            boolean accept = this.fStreamFilter.accept(this.fStreamReader);
            this.fHasMoreEvents = accept;
            if (accept) {
                this.fCurrentEventType = this.fStreamReader.getEventType();
                return true;
            }
        }
        this.fHasMoreEvents = false;
        return false;
    }

    private boolean readNextTag() throws XMLStreamException {
        while (this.fStreamReader.hasNext()) {
            this.fStreamReader.nextTag();
            boolean accept = this.fStreamFilter.accept(this.fStreamReader);
            this.fHasMoreEvents = accept;
            if (accept) {
                this.fCurrentEventType = this.fStreamReader.getEventType();
                return true;
            }
        }
        this.fHasMoreEvents = false;
        return false;
    }

    public void cacheNamespaceAttributes() {
        int namespaceCount = this.fStreamReader.getNamespaceCount();
        this.fCachedNamespaceAttr.clear();
        for (int i = 0; i < namespaceCount; i++) {
            String namespaceURI = this.fStreamReader.getNamespaceURI(i);
            String namespacePrefix = this.fStreamReader.getNamespacePrefix(i);
            if (namespacePrefix == null) {
                namespacePrefix = "";
            }
            this.fCachedNamespaceAttr.add(new NamespaceImpl(namespacePrefix, namespaceURI));
        }
    }

    @Override // javax.xml.stream.XMLStreamReader
    public void close() throws XMLStreamException {
        this.fStreamReader.close();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getAttributeCount() {
        return !this.fReadFromCache ? this.fStreamReader.getAttributeCount() : this.fCachedAttributes.size();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeLocalName(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getAttributeLocalName(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute == null) {
            return null;
        }
        cachedAttribute.getName().getLocalPart();
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public QName getAttributeName(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getAttributeName(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute != null) {
            return cachedAttribute.getName();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeNamespace(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getAttributeNamespace(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute != null) {
            return cachedAttribute.getName().getNamespaceURI();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributePrefix(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getAttributePrefix(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute != null) {
            return cachedAttribute.getName().getPrefix();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeType(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getAttributeType(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute != null) {
            return cachedAttribute.getDTDType();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeValue(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getAttributeValue(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute != null) {
            return cachedAttribute.getValue();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getCharacterEncodingScheme() {
        return !this.fReadFromCache ? this.fStreamReader.getCharacterEncodingScheme() : this.fCachedCharEncoding;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getElementText() throws XMLStreamException {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getElementText();
        }
        if (this.fCachedEventType == 1) {
            return this.fCachedElementText;
        }
        throw new XMLStreamException("parser must be on START_ELEMENT to read next text", getLocation());
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getEncoding() {
        return !this.fReadFromCache ? this.fStreamReader.getEncoding() : this.fCachedEncoding;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getEventType() {
        return !this.fReadFromCache ? this.fStreamReader.getEventType() : this.fCachedEventType;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getLocalName() {
        return !this.fReadFromCache ? this.fStreamReader.getLocalName() : this.fLocalName;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public Location getLocation() {
        return !this.fReadFromCache ? this.fStreamReader.getLocation() : this.fCachedLocation;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public QName getName() {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getName();
        }
        int i = this.fCachedEventType;
        if (i == 1 || i == 2) {
            return this.fElementName;
        }
        throw new IllegalArgumentException("Illegal to call getName() when event type is " + this.fCachedEventType);
    }

    @Override // javax.xml.stream.XMLStreamReader
    public NamespaceContext getNamespaceContext() {
        return !this.fReadFromCache ? this.fStreamReader.getNamespaceContext() : this.fCachedNamespaceContext;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getNamespaceCount() {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getNamespaceCount();
        }
        int i = this.fCachedEventType;
        if (i == 1 || i == 2 || i == 13) {
            return this.fCachedNamespaceAttr.size();
        }
        throw new IllegalStateException("Current event state is " + this.fCachedEventType);
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getNamespacePrefix(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getNamespacePrefix(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute != null) {
            return cachedAttribute.getName().getPrefix();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getNamespaceURI() {
        QName qName;
        if (!this.fReadFromCache) {
            return this.fStreamReader.getNamespaceURI();
        }
        int i = this.fCachedEventType;
        if ((i == 1 || i == 2) && (qName = this.fElementName) != null) {
            return qName.getNamespaceURI();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getPIData() {
        return !this.fReadFromCache ? this.fStreamReader.getPIData() : this.fCachedPIData;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getPITarget() {
        return !this.fReadFromCache ? this.fStreamReader.getPITarget() : this.fCachedPITarget;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getPrefix() {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getPrefix();
        }
        int i = this.fCachedEventType;
        if (i == 1 || i == 2) {
            return this.fElementName.getPrefix();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public Object getProperty(String str) throws IllegalArgumentException {
        return this.fStreamReader.getProperty(str);
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getText() {
        return !this.fReadFromCache ? this.fStreamReader.getText() : this.fCachedTextValue;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public char[] getTextCharacters() {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getTextCharacters();
        }
        String str = this.fCachedTextValue;
        if (str != null) {
            return str.toCharArray();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getTextLength() {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getTextLength();
        }
        String str = this.fCachedTextValue;
        if (str != null) {
            return str.length();
        }
        return 0;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getTextStart() {
        if (this.fReadFromCache) {
            return 0;
        }
        return this.fStreamReader.getTextStart();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getVersion() {
        return !this.fReadFromCache ? this.fStreamReader.getVersion() : this.fCachedVersion;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean hasName() {
        if (!this.fReadFromCache) {
            return this.fStreamReader.hasName();
        }
        int i = this.fCachedEventType;
        return i == 1 || i == 2 || i == 9 || i == 3;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean hasNext() throws XMLStreamException {
        if (!this.fReadNext) {
            return this.fHasMoreEvents;
        }
        this.fReadNext = false;
        cache();
        if (DEBUG) {
            System.out.println("Cached Event in hasNext" + this.fCachedEventType);
        }
        return readNext();
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean hasText() {
        return !this.fReadFromCache ? this.fStreamReader.hasText() : this.fCachedTextValue != null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isAttributeSpecified(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.isAttributeSpecified(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute != null) {
            return cachedAttribute.isSpecified();
        }
        return false;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isCharacters() {
        return !this.fReadFromCache ? this.fStreamReader.isCharacters() : this.fCachedEventType == 4;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isEndElement() {
        return !this.fReadFromCache ? this.fStreamReader.isEndElement() : this.fCachedEventType == 2;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isStandalone() {
        return !this.fReadFromCache ? this.fStreamReader.isStandalone() : this.fCachedStandalone;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isStartElement() {
        return !this.fReadFromCache ? this.fStreamReader.isStartElement() : this.fCachedEventType == 1;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean isWhiteSpace() {
        String str;
        if (!this.fReadFromCache) {
            return this.fStreamReader.isWhiteSpace();
        }
        if ((!isCharacters() && this.fCachedEventType != 12) || (str = this.fCachedTextValue) == null) {
            return false;
        }
        char[] charArray = str.toCharArray();
        int length = this.fCachedTextValue.length();
        for (int i = 0; i < length; i++) {
            if (!XMLChar.isSpace(charArray[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int next() throws XMLStreamException {
        if (!this.fReadNext) {
            this.fReadNext = true;
            this.fReadFromCache = false;
        } else if (readNext()) {
            this.fReadFromCache = false;
        }
        return this.fCurrentEventType;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int nextTag() throws XMLStreamException {
        if (!this.fReadNext) {
            this.fReadNext = true;
            int i = this.fCurrentEventType;
            if (i != 1 || i != 2) {
                this.fCurrentEventType = this.fStreamReader.nextTag();
                this.fReadFromCache = false;
            }
        } else if (readNextTag()) {
            this.fReadFromCache = false;
        }
        return this.fCurrentEventType;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public void require(int i, String str, String str2) throws XMLStreamException {
        if (!this.fReadFromCache) {
            this.fStreamReader.require(i, str, str2);
            return;
        }
        if (i != this.fCachedEventType) {
            throw new XMLStreamException("Event type " + XMLStreamReaderImpl.getEventTypeString(i) + " specified did not match with current parser event");
        }
        if (str != null && !str.equals(getNamespaceURI())) {
            throw new XMLStreamException("Namespace URI " + str + " specified did not match with current namespace URI");
        }
        if (str2 == null || str2.equals(getLocalName())) {
            return;
        }
        throw new XMLStreamException("LocalName " + str2 + " specified did not match with current local name");
    }

    public void setStreamFilter(StreamFilter streamFilter) {
        this.fStreamFilter = streamFilter;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public boolean standaloneSet() {
        return !this.fReadFromCache ? this.fStreamReader.standaloneSet() : this.fCachedStandalone;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getAttributeValue(String str, String str2) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getAttributeValue(str, str2);
        }
        int i = this.fCachedEventType;
        if (i == 1 && i == 10) {
            for (int i2 = 0; i2 < this.fCachedAttributes.size(); i2++) {
                AttributeImpl attributeImpl = (AttributeImpl) this.fCachedAttributes.get(i2);
                if (attributeImpl != null && attributeImpl.getName().getLocalPart().equals(str2) && str.equals(attributeImpl.getName().getNamespaceURI())) {
                    return attributeImpl.getValue();
                }
            }
            return null;
        }
        throw new IllegalStateException("Current event state is " + this.fCachedEventType);
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getNamespaceURI(int i) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getNamespaceURI(i);
        }
        AttributeImpl cachedAttribute = getCachedAttribute(i);
        if (cachedAttribute != null) {
            return cachedAttribute.getName().getNamespaceURI();
        }
        return null;
    }

    @Override // javax.xml.stream.XMLStreamReader
    public int getTextCharacters(int i, char[] cArr, int i2, int i3) throws XMLStreamException {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getTextCharacters(i, cArr, i2, i3);
        }
        if (cArr != null) {
            if (i2 >= 0 && i3 >= 0 && i >= 0 && i2 < cArr.length && i2 + i3 <= cArr.length) {
                String str = this.fCachedTextValue;
                if (str == null) {
                    return 0;
                }
                int length = str.length() - i;
                if (length >= 0) {
                    if (length < i3) {
                        i3 = length;
                    }
                    System.arraycopy(this.fCachedTextValue, i, cArr, i2, i3);
                    return i3;
                }
                throw new IndexOutOfBoundsException("sourceStart is greater thannumber of characters associated with this event");
            }
            throw new IndexOutOfBoundsException();
        }
        throw new NullPointerException("target char array can't be null");
    }

    @Override // javax.xml.stream.XMLStreamReader
    public String getNamespaceURI(String str) {
        if (!this.fReadFromCache) {
            return this.fStreamReader.getNamespaceURI();
        }
        return this.fCachedNamespaceContext.getNamespaceURI(str);
    }
}
