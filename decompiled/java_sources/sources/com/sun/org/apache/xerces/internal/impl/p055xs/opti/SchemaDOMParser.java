package com.sun.org.apache.xerces.internal.impl.p055xs.opti;

import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaSymbols;
import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import java.io.IOException;
import org.w3c.dom.Document;

/* loaded from: classes10.dex */
public class SchemaDOMParser extends DefaultXMLDocumentHandler {
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    public static final String GENERATE_SYNTHETIC_ANNOTATION = "http://apache.org/xml/features/generate-synthetic-annotations";
    XMLParserConfiguration config;
    XMLErrorReporter fErrorReporter;
    protected XMLLocator fLocator;
    SchemaDOM schemaDOM;
    protected NamespaceContext fNamespaceContext = null;
    private int fAnnotationDepth = -1;
    private int fInnerAnnotationDepth = -1;
    private int fDepth = -1;
    private boolean fGenerateSyntheticAnnotation = false;
    private BooleanStack fHasNonSchemaAttributes = new BooleanStack();
    private BooleanStack fSawAnnotation = new BooleanStack();
    private XMLAttributes fEmptyAttr = new XMLAttributesImpl();

    /* loaded from: classes10.dex */
    public static final class BooleanStack {
        private boolean[] fData;
        private int fDepth;

        private void ensureCapacity(int i) {
            boolean[] zArr = this.fData;
            if (zArr == null) {
                this.fData = new boolean[32];
            } else if (zArr.length <= i) {
                boolean[] zArr2 = new boolean[zArr.length * 2];
                System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
                this.fData = zArr2;
            }
        }

        public void clear() {
            this.fDepth = 0;
        }

        public boolean pop() {
            boolean[] zArr = this.fData;
            int i = this.fDepth - 1;
            this.fDepth = i;
            return zArr[i];
        }

        public void push(boolean z) {
            ensureCapacity(this.fDepth + 1);
            boolean[] zArr = this.fData;
            int i = this.fDepth;
            this.fDepth = i + 1;
            zArr[i] = z;
        }

        public int size() {
            return this.fDepth;
        }
    }

    public SchemaDOMParser(XMLParserConfiguration xMLParserConfiguration) {
        this.config = xMLParserConfiguration;
    }

    private boolean hasNonSchemaAttributes(QName qName, XMLAttributes xMLAttributes) {
        int length = xMLAttributes.getLength();
        for (int i = 0; i < length; i++) {
            String uri = xMLAttributes.getURI(i);
            if (uri != null && uri != SchemaSymbols.URI_SCHEMAFORSCHEMA && uri != NamespaceContext.XMLNS_URI && (uri != NamespaceContext.XML_URI || xMLAttributes.getQName(i) != SchemaSymbols.ATT_XML_LANG || qName.localpart != SchemaSymbols.ELT_SCHEMA)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fInnerAnnotationDepth != -1) {
            this.schemaDOM.characters(xMLString);
            return;
        }
        for (int i = xMLString.offset; i < xMLString.offset + xMLString.length; i++) {
            if (!XMLChar.isSpace(xMLString.f64120ch[i])) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "s4s-elt-character", new Object[]{new String(xMLString.f64120ch, i, (xMLString.length + xMLString.offset) - i)}, (short) 1);
                return;
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fAnnotationDepth > -1) {
            this.schemaDOM.comment(xMLString);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        if (this.fGenerateSyntheticAnnotation && this.fAnnotationDepth == -1) {
            String str = qName.uri;
            String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            if (str == str2) {
                String str3 = qName.localpart;
                String str4 = SchemaSymbols.ELT_ANNOTATION;
                if (str3 != str4 && hasNonSchemaAttributes(qName, xMLAttributes)) {
                    this.schemaDOM.startElement(qName, xMLAttributes, this.fLocator.getLineNumber(), this.fLocator.getColumnNumber(), this.fLocator.getCharacterOffset());
                    xMLAttributes.removeAllAttributes();
                    String prefix = this.fNamespaceContext.getPrefix(str2);
                    StringBuilder sb = new StringBuilder();
                    sb.append(prefix);
                    sb.append(prefix.length() == 0 ? "" : ":");
                    sb.append(str4);
                    QName qName2 = new QName(prefix, str4, sb.toString(), str2);
                    this.schemaDOM.startAnnotation(qName2, xMLAttributes, this.fNamespaceContext);
                    String str5 = SchemaSymbols.ELT_DOCUMENTATION;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(prefix);
                    sb2.append(prefix.length() != 0 ? ":" : "");
                    sb2.append(str5);
                    QName qName3 = new QName(prefix, str5, sb2.toString(), str2);
                    this.schemaDOM.startAnnotationElement(qName3, xMLAttributes);
                    this.schemaDOM.characters(new XMLString("SYNTHETIC_ANNOTATION".toCharArray(), 0, 20));
                    this.schemaDOM.endSyntheticAnnotationElement(qName3, false);
                    this.schemaDOM.endSyntheticAnnotationElement(qName2, true);
                    this.schemaDOM.endElement();
                    return;
                }
            }
        }
        if (this.fAnnotationDepth != -1) {
            this.schemaDOM.startAnnotationElement(qName, xMLAttributes);
        } else if (qName.uri == SchemaSymbols.URI_SCHEMAFORSCHEMA && qName.localpart == SchemaSymbols.ELT_ANNOTATION) {
            this.schemaDOM.startAnnotation(qName, xMLAttributes, this.fNamespaceContext);
        }
        this.schemaDOM.emptyElement(qName, xMLAttributes, this.fLocator.getLineNumber(), this.fLocator.getColumnNumber(), this.fLocator.getCharacterOffset());
        if (this.fAnnotationDepth != -1) {
            this.schemaDOM.endAnnotationElement(qName, false);
        } else if (qName.uri == SchemaSymbols.URI_SCHEMAFORSCHEMA && qName.localpart == SchemaSymbols.ELT_ANNOTATION) {
            this.schemaDOM.endAnnotationElement(qName, true);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        if (this.fAnnotationDepth != -1) {
            this.schemaDOM.endAnnotationCDATA();
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        int i = this.fAnnotationDepth;
        if (i > -1) {
            int i2 = this.fInnerAnnotationDepth;
            int i3 = this.fDepth;
            if (i2 == i3) {
                this.fInnerAnnotationDepth = -1;
                this.schemaDOM.endAnnotationElement(qName, false);
                this.schemaDOM.endElement();
            } else if (i == i3) {
                this.fAnnotationDepth = -1;
                this.schemaDOM.endAnnotationElement(qName, true);
                this.schemaDOM.endElement();
            } else {
                this.schemaDOM.endAnnotationElement(qName, false);
            }
        } else {
            String str = qName.uri;
            String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            if (str == str2 && this.fGenerateSyntheticAnnotation) {
                boolean pop = this.fHasNonSchemaAttributes.pop();
                boolean pop2 = this.fSawAnnotation.pop();
                if (pop && !pop2) {
                    String prefix = this.fNamespaceContext.getPrefix(str2);
                    String str3 = SchemaSymbols.ELT_ANNOTATION;
                    StringBuilder sb = new StringBuilder();
                    sb.append(prefix);
                    sb.append(prefix.length() == 0 ? "" : ":");
                    sb.append(str3);
                    QName qName2 = new QName(prefix, str3, sb.toString(), str2);
                    this.schemaDOM.startAnnotation(qName2, this.fEmptyAttr, this.fNamespaceContext);
                    String str4 = SchemaSymbols.ELT_DOCUMENTATION;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(prefix);
                    sb2.append(prefix.length() != 0 ? ":" : "");
                    sb2.append(str4);
                    QName qName3 = new QName(prefix, str4, sb2.toString(), str2);
                    this.schemaDOM.startAnnotationElement(qName3, this.fEmptyAttr);
                    this.schemaDOM.characters(new XMLString("SYNTHETIC_ANNOTATION".toCharArray(), 0, 20));
                    this.schemaDOM.endSyntheticAnnotationElement(qName3, false);
                    this.schemaDOM.endSyntheticAnnotationElement(qName2, true);
                }
            }
            this.schemaDOM.endElement();
        }
        this.fDepth--;
    }

    public Document getDocument() {
        return this.schemaDOM;
    }

    public Document getDocument2() {
        return ((SchemaParsingConfig) this.config).getDocument();
    }

    public boolean getFeature(String str) {
        return this.config.getFeature(str);
    }

    public Object getProperty(String str) {
        return this.config.getProperty(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fAnnotationDepth != -1) {
            this.schemaDOM.characters(xMLString);
        }
    }

    public void parse(XMLInputSource xMLInputSource) throws IOException {
        this.config.parse(xMLInputSource);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fAnnotationDepth > -1) {
            this.schemaDOM.processingInstruction(str, xMLString.toString());
        }
    }

    public void reset() {
        ((SchemaParsingConfig) this.config).reset();
    }

    public void resetNodePool() {
        ((SchemaParsingConfig) this.config).resetNodePool();
    }

    public void setEntityResolver(XMLEntityResolver xMLEntityResolver) {
        this.config.setEntityResolver(xMLEntityResolver);
    }

    public void setFeature(String str, boolean z) {
        this.config.setFeature(str, z);
    }

    public void setProperty(String str, Object obj) {
        this.config.setProperty(str, obj);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        if (this.fAnnotationDepth != -1) {
            this.schemaDOM.startAnnotationCDATA();
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        this.fErrorReporter = (XMLErrorReporter) this.config.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fGenerateSyntheticAnnotation = this.config.getFeature("http://apache.org/xml/features/generate-synthetic-annotations");
        this.fHasNonSchemaAttributes.clear();
        this.fSawAnnotation.clear();
        SchemaDOM schemaDOM = new SchemaDOM();
        this.schemaDOM = schemaDOM;
        this.fAnnotationDepth = -1;
        this.fInnerAnnotationDepth = -1;
        this.fDepth = -1;
        this.fLocator = xMLLocator;
        this.fNamespaceContext = namespaceContext;
        schemaDOM.setDocumentURI(xMLLocator.getExpandedSystemId());
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultXMLDocumentHandler, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        int i = this.fDepth + 1;
        this.fDepth = i;
        int i2 = this.fAnnotationDepth;
        if (i2 == -1) {
            String str = qName.uri;
            String str2 = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            if (str == str2 && qName.localpart == SchemaSymbols.ELT_ANNOTATION) {
                if (this.fGenerateSyntheticAnnotation) {
                    if (this.fSawAnnotation.size() > 0) {
                        this.fSawAnnotation.pop();
                    }
                    this.fSawAnnotation.push(true);
                }
                this.fAnnotationDepth = this.fDepth;
                this.schemaDOM.startAnnotation(qName, xMLAttributes, this.fNamespaceContext);
            } else if (str == str2 && this.fGenerateSyntheticAnnotation) {
                this.fSawAnnotation.push(false);
                this.fHasNonSchemaAttributes.push(hasNonSchemaAttributes(qName, xMLAttributes));
            }
        } else if (i != i2 + 1) {
            this.schemaDOM.startAnnotationElement(qName, xMLAttributes);
            return;
        } else {
            this.fInnerAnnotationDepth = i;
            this.schemaDOM.startAnnotationElement(qName, xMLAttributes);
        }
        this.schemaDOM.startElement(qName, xMLAttributes, this.fLocator.getLineNumber(), this.fLocator.getColumnNumber(), this.fLocator.getCharacterOffset());
    }
}
