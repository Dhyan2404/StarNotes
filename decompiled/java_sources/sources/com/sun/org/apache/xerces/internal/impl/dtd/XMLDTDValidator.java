package com.sun.org.apache.xerces.internal.impl.dtd;

import com.google.firebase.installations.local.IidStore;
import com.sun.org.apache.xerces.internal.impl.Constants;
import com.sun.org.apache.xerces.internal.impl.RevalidationHandler;
import com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p053dv.DTDDVFactory;
import com.sun.org.apache.xerces.internal.impl.p053dv.DatatypeValidator;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationState;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import java.io.IOException;

/* loaded from: classes10.dex */
public class XMLDTDValidator implements XMLComponent, XMLDocumentFilter, XMLDTDValidatorFilter, RevalidationHandler {
    private static final boolean DEBUG_ATTRIBUTES = false;
    private static final boolean DEBUG_ELEMENT_CHILDREN = false;
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    private static final int TOP_LEVEL_SCOPE = -1;
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected static final String WARN_ON_DUPLICATE_ATTDEF = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef";
    protected DTDGrammar fDTDGrammar;
    protected boolean fDTDValidation;
    protected DTDDVFactory fDatatypeValidatorFactory;
    protected XMLLocator fDocLocation;
    protected XMLDocumentHandler fDocumentHandler;
    protected XMLDocumentSource fDocumentSource;
    protected boolean fDynamicValidation;
    protected XMLErrorReporter fErrorReporter;
    protected DTDGrammarBucket fGrammarBucket;
    protected XMLGrammarPool fGrammarPool;
    protected boolean fNamespaces;
    private boolean fPerformValidation;
    private String fSchemaType;
    protected SymbolTable fSymbolTable;
    protected DatatypeValidator fValENTITIES;
    protected DatatypeValidator fValENTITY;
    protected DatatypeValidator fValID;
    protected DatatypeValidator fValIDRef;
    protected DatatypeValidator fValIDRefs;
    protected DatatypeValidator fValNMTOKEN;
    protected DatatypeValidator fValNMTOKENS;
    protected DatatypeValidator fValNOTATION;
    protected boolean fValidation;
    protected boolean fWarnDuplicateAttdef;
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    private static final String[] RECOGNIZED_FEATURES = {"http://xml.org/sax/features/namespaces", "http://xml.org/sax/features/validation", DYNAMIC_VALIDATION};
    private static final Boolean[] FEATURE_DEFAULTS = {null, null, Boolean.FALSE};
    protected static final String DATATYPE_VALIDATOR_FACTORY = "http://apache.org/xml/properties/internal/datatype-validator-factory";
    private static final String[] RECOGNIZED_PROPERTIES = {"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/grammar-pool", DATATYPE_VALIDATOR_FACTORY, "http://apache.org/xml/properties/internal/validation-manager"};
    private static final Object[] PROPERTY_DEFAULTS = {null, null, null, null, null};
    protected ValidationManager fValidationManager = null;
    protected ValidationState fValidationState = new ValidationState();
    protected NamespaceContext fNamespaceContext = null;
    protected boolean fSeenDoctypeDecl = false;
    private final QName fCurrentElement = new QName();
    private int fCurrentElementIndex = -1;
    private int fCurrentContentSpecType = -1;
    private final QName fRootElement = new QName();
    private boolean fInCDATASection = false;
    private int[] fElementIndexStack = new int[8];
    private int[] fContentSpecTypeStack = new int[8];
    private QName[] fElementQNamePartsStack = new QName[8];
    private QName[] fElementChildren = new QName[32];
    private int fElementChildrenLength = 0;
    private int[] fElementChildrenOffsetStack = new int[32];
    private int fElementDepth = -1;
    private boolean fSeenRootElement = false;
    private boolean fInElementContent = false;
    private XMLElementDecl fTempElementDecl = new XMLElementDecl();
    private XMLAttributeDecl fTempAttDecl = new XMLAttributeDecl();
    private XMLEntityDecl fEntityDecl = new XMLEntityDecl();
    private QName fTempQName = new QName();
    private StringBuffer fBuffer = new StringBuffer();

    public XMLDTDValidator() {
        int i = 0;
        while (true) {
            QName[] qNameArr = this.fElementQNamePartsStack;
            if (i >= qNameArr.length) {
                this.fGrammarBucket = new DTDGrammarBucket();
                return;
            } else {
                qNameArr[i] = new QName();
                i++;
            }
        }
    }

    private void charDataInContent() {
        QName[] qNameArr;
        QName[] qNameArr2 = this.fElementChildren;
        if (qNameArr2.length <= this.fElementChildrenLength) {
            QName[] qNameArr3 = new QName[qNameArr2.length * 2];
            System.arraycopy(qNameArr2, 0, qNameArr3, 0, qNameArr2.length);
            this.fElementChildren = qNameArr3;
        }
        QName[] qNameArr4 = this.fElementChildren;
        int i = this.fElementChildrenLength;
        QName qName = qNameArr4[i];
        if (qName == null) {
            while (true) {
                qNameArr = this.fElementChildren;
                if (i >= qNameArr.length) {
                    break;
                }
                qNameArr[i] = new QName();
                i++;
            }
            qName = qNameArr[this.fElementChildrenLength];
        }
        qName.clear();
        this.fElementChildrenLength++;
    }

    private int checkContent(int i, QName[] qNameArr, int i2, int i3) throws XNIException {
        this.fDTDGrammar.getElementDecl(i, this.fTempElementDecl);
        String str = this.fCurrentElement.rawname;
        int i4 = this.fCurrentContentSpecType;
        if (i4 == 1) {
            return i3 != 0 ? 0 : -1;
        }
        if (i4 == 0) {
            return -1;
        }
        if (i4 == 2 || i4 == 3) {
            return this.fTempElementDecl.contentModelValidator.validate(qNameArr, i2, i3);
        }
        return -1;
    }

    private void ensureStackCapacity(int i) {
        QName[] qNameArr = this.fElementQNamePartsStack;
        if (i == qNameArr.length) {
            int i2 = i * 2;
            int[] iArr = new int[i2];
            QName[] qNameArr2 = new QName[i2];
            System.arraycopy(qNameArr, 0, qNameArr2, 0, i);
            this.fElementQNamePartsStack = qNameArr2;
            if (qNameArr2[i] == null) {
                int i3 = i;
                while (true) {
                    QName[] qNameArr3 = this.fElementQNamePartsStack;
                    if (i3 >= qNameArr3.length) {
                        break;
                    }
                    qNameArr3[i3] = new QName();
                    i3++;
                }
            }
            int[] iArr2 = new int[i2];
            System.arraycopy(this.fElementIndexStack, 0, iArr2, 0, i);
            this.fElementIndexStack = iArr2;
            int[] iArr3 = new int[i2];
            System.arraycopy(this.fContentSpecTypeStack, 0, iArr3, 0, i);
            this.fContentSpecTypeStack = iArr3;
        }
    }

    private String getAttributeTypeName(XMLAttributeDecl xMLAttributeDecl) {
        XMLSimpleType xMLSimpleType = xMLAttributeDecl.simpleType;
        switch (xMLSimpleType.type) {
            case 1:
                return xMLSimpleType.list ? XMLSymbols.fENTITIESSymbol : XMLSymbols.fENTITYSymbol;
            case 2:
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append('(');
                for (int i = 0; i < xMLAttributeDecl.simpleType.enumeration.length; i++) {
                    if (i > 0) {
                        stringBuffer.append(IidStore.f35940g);
                    }
                    stringBuffer.append(xMLAttributeDecl.simpleType.enumeration[i]);
                }
                stringBuffer.append(')');
                return this.fSymbolTable.addSymbol(stringBuffer.toString());
            case 3:
                return XMLSymbols.fIDSymbol;
            case 4:
                return xMLSimpleType.list ? XMLSymbols.fIDREFSSymbol : XMLSymbols.fIDREFSymbol;
            case 5:
                return xMLSimpleType.list ? XMLSymbols.fNMTOKENSSymbol : XMLSymbols.fNMTOKENSymbol;
            case 6:
                return XMLSymbols.fNOTATIONSymbol;
            default:
                return XMLSymbols.fCDATASymbol;
        }
    }

    private int getContentSpecType(int i) {
        if (i <= -1 || !this.fDTDGrammar.getElementDecl(i, this.fTempElementDecl)) {
            return -1;
        }
        return this.fTempElementDecl.type;
    }

    private boolean normalizeAttrValue(XMLAttributes xMLAttributes, int i) {
        String value = xMLAttributes.getValue(i);
        int length = value.length();
        char[] cArr = new char[length];
        this.fBuffer.setLength(0);
        value.getChars(0, value.length(), cArr, 0);
        boolean z = true;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        for (int i3 = 0; i3 < length; i3++) {
            char c = cArr[i3];
            if (c == ' ') {
                if (z2) {
                    z3 = true;
                    z2 = false;
                }
                if (z3 && !z) {
                    this.fBuffer.append(c);
                    i2++;
                    z3 = false;
                }
            } else {
                this.fBuffer.append(c);
                i2++;
                z2 = true;
                z3 = false;
                z = false;
            }
        }
        if (i2 > 0) {
            int i4 = i2 - 1;
            if (this.fBuffer.charAt(i4) == ' ') {
                this.fBuffer.setLength(i4);
            }
        }
        xMLAttributes.setValue(i, this.fBuffer.toString());
        return !value.equals(r12);
    }

    private final void rootElementSpecified(QName qName) throws XNIException {
        if (this.fPerformValidation) {
            String str = this.fRootElement.rawname;
            String str2 = qName.rawname;
            if (str == null || !str.equals(str2)) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "RootElementTypeMustMatchDoctypedecl", new Object[]{str, str2}, (short) 1);
            }
        }
    }

    public void addDTDDefaultAttrsAndValidate(QName qName, int i, XMLAttributes xMLAttributes) throws XNIException {
        DTDGrammar dTDGrammar;
        boolean z;
        String nonNormalizedValue;
        String externalEntityRefInAttrValue;
        boolean z2;
        int indexOf;
        if (i == -1 || (dTDGrammar = this.fDTDGrammar) == null) {
            return;
        }
        int firstAttributeDeclIndex = dTDGrammar.getFirstAttributeDeclIndex(i);
        for (int i2 = -1; firstAttributeDeclIndex != i2; i2 = -1) {
            this.fDTDGrammar.getAttributeDecl(firstAttributeDeclIndex, this.fTempAttDecl);
            XMLAttributeDecl xMLAttributeDecl = this.fTempAttDecl;
            QName qName2 = xMLAttributeDecl.name;
            String str = qName2.prefix;
            String str2 = qName2.localpart;
            String str3 = qName2.rawname;
            String attributeTypeName = getAttributeTypeName(xMLAttributeDecl);
            XMLSimpleType xMLSimpleType = this.fTempAttDecl.simpleType;
            short s = xMLSimpleType.defaultType;
            String str4 = xMLSimpleType.defaultValue;
            if (str4 == null) {
                str4 = null;
            }
            boolean z3 = s == 2;
            if (!(attributeTypeName == XMLSymbols.fCDATASymbol) || z3 || str4 != null) {
                int length = xMLAttributes.getLength();
                for (int i3 = 0; i3 < length; i3++) {
                    if (xMLAttributes.getQName(i3) == str3) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (!z2) {
                if (z3) {
                    if (this.fPerformValidation) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_REQUIRED_ATTRIBUTE_NOT_SPECIFIED", new Object[]{qName.localpart, str3}, (short) 1);
                    }
                } else if (str4 != null) {
                    if (this.fPerformValidation && this.fGrammarBucket.getStandalone() && this.fDTDGrammar.getAttributeDeclIsExternal(firstAttributeDeclIndex)) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DEFAULTED_ATTRIBUTE_NOT_SPECIFIED", new Object[]{qName.localpart, str3}, (short) 1);
                    }
                    if (this.fNamespaces && (indexOf = str3.indexOf(58)) != -1) {
                        str = this.fSymbolTable.addSymbol(str3.substring(0, indexOf));
                        str2 = this.fSymbolTable.addSymbol(str3.substring(indexOf + 1));
                    }
                    this.fTempQName.setValues(str, str2, str3, this.fTempAttDecl.name.uri);
                    xMLAttributes.addAttribute(this.fTempQName, attributeTypeName, str4);
                }
            }
            firstAttributeDeclIndex = this.fDTDGrammar.getNextAttributeDeclIndex(firstAttributeDeclIndex);
        }
        boolean z4 = false;
        int length2 = xMLAttributes.getLength();
        int i4 = 0;
        while (i4 < length2) {
            String qName3 = xMLAttributes.getQName(i4);
            if (this.fPerformValidation && this.fGrammarBucket.getStandalone() && (nonNormalizedValue = xMLAttributes.getNonNormalizedValue(i4)) != null && (externalEntityRefInAttrValue = getExternalEntityRefInAttrValue(nonNormalizedValue)) != null) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE", new Object[]{externalEntityRefInAttrValue}, (short) 1);
            }
            int firstAttributeDeclIndex2 = this.fDTDGrammar.getFirstAttributeDeclIndex(i);
            while (true) {
                if (firstAttributeDeclIndex2 == -1) {
                    z = z4;
                    break;
                }
                this.fDTDGrammar.getAttributeDecl(firstAttributeDeclIndex2, this.fTempAttDecl);
                if (this.fTempAttDecl.name.rawname == qName3) {
                    z = true;
                    break;
                }
                firstAttributeDeclIndex2 = this.fDTDGrammar.getNextAttributeDeclIndex(firstAttributeDeclIndex2);
            }
            if (z) {
                String attributeTypeName2 = getAttributeTypeName(this.fTempAttDecl);
                xMLAttributes.setType(i4, attributeTypeName2);
                xMLAttributes.getAugmentations(i4).putItem("ATTRIBUTE_DECLARED", Boolean.TRUE);
                String value = xMLAttributes.getValue(i4);
                if (xMLAttributes.isSpecified(i4) && attributeTypeName2 != XMLSymbols.fCDATASymbol) {
                    boolean normalizeAttrValue = normalizeAttrValue(xMLAttributes, i4);
                    String value2 = xMLAttributes.getValue(i4);
                    if (this.fPerformValidation && this.fGrammarBucket.getStandalone() && normalizeAttrValue && this.fDTDGrammar.getAttributeDeclIsExternal(firstAttributeDeclIndex2)) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ATTVALUE_CHANGED_DURING_NORMALIZATION_WHEN_STANDALONE", new Object[]{qName3, value, value2}, (short) 1);
                    }
                    value = value2;
                }
                if (this.fPerformValidation) {
                    XMLSimpleType xMLSimpleType2 = this.fTempAttDecl.simpleType;
                    if (xMLSimpleType2.defaultType == 1) {
                        String str5 = xMLSimpleType2.defaultValue;
                        if (!value.equals(str5)) {
                            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_FIXED_ATTVALUE_INVALID", new Object[]{qName.localpart, qName3, value, str5}, (short) 1);
                        }
                    }
                    XMLAttributeDecl xMLAttributeDecl2 = this.fTempAttDecl;
                    short s2 = xMLAttributeDecl2.simpleType.type;
                    if (s2 == 1 || s2 == 2 || s2 == 3 || s2 == 4 || s2 == 5 || s2 == 6) {
                        validateDTDattribute(qName, value, xMLAttributeDecl2);
                    }
                }
            } else if (this.fPerformValidation) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ATTRIBUTE_NOT_DECLARED", new Object[]{qName.rawname, qName3}, (short) 1);
            }
            i4++;
            z4 = false;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.RevalidationHandler
    public boolean characterData(String str, Augmentations augmentations) {
        characters(new XMLString(str.toCharArray(), 0, str.length()), augmentations);
        return true;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        boolean z;
        boolean z2;
        XMLDocumentHandler xMLDocumentHandler;
        XMLDocumentHandler xMLDocumentHandler2;
        int i = xMLString.offset;
        while (true) {
            z = false;
            if (i >= xMLString.offset + xMLString.length) {
                z2 = true;
                break;
            } else {
                if (!isSpace(xMLString.f64120ch[i])) {
                    z2 = false;
                    break;
                }
                i++;
            }
        }
        if (!this.fInElementContent || !z2 || this.fInCDATASection || (xMLDocumentHandler2 = this.fDocumentHandler) == null) {
            z = true;
        } else {
            xMLDocumentHandler2.ignorableWhitespace(xMLString, augmentations);
        }
        if (this.fPerformValidation) {
            if (this.fInElementContent) {
                if (this.fGrammarBucket.getStandalone() && this.fDTDGrammar.getElementDeclIsExternal(this.fCurrentElementIndex) && z2) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_WHITE_SPACE_IN_ELEMENT_CONTENT_WHEN_STANDALONE", null, (short) 1);
                }
                if (!z2) {
                    charDataInContent();
                }
                if (augmentations != null && augmentations.getItem("CHAR_REF_PROBABLE_WS") == Boolean.TRUE) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID_SPECIFIED", new Object[]{this.fCurrentElement.rawname, this.fDTDGrammar.getContentSpecAsString(this.fElementDepth), "character reference"}, (short) 1);
                }
            }
            if (this.fCurrentContentSpecType == 1) {
                charDataInContent();
            }
        }
        if (!z || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        xMLDocumentHandler.characters(xMLString, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar;
        if (this.fPerformValidation && this.fElementDepth >= 0 && (dTDGrammar = this.fDTDGrammar) != null) {
            dTDGrammar.getElementDecl(this.fCurrentElementIndex, this.fTempElementDecl);
            if (this.fTempElementDecl.type == 1) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID_SPECIFIED", new Object[]{this.fCurrentElement.rawname, "EMPTY", "comment"}, (short) 1);
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.comment(xMLString, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLGrammarPool xMLGrammarPool;
        this.fSeenDoctypeDecl = true;
        String str4 = null;
        this.fRootElement.setValues(null, str, str, null);
        try {
            str4 = XMLEntityManager.expandSystemId(str3, this.fDocLocation.getExpandedSystemId(), false);
        } catch (IOException unused) {
        }
        XMLDTDDescription xMLDTDDescription = new XMLDTDDescription(str2, str3, this.fDocLocation.getExpandedSystemId(), str4, str);
        DTDGrammar grammar = this.fGrammarBucket.getGrammar(xMLDTDDescription);
        this.fDTDGrammar = grammar;
        if (grammar == null && (xMLGrammarPool = this.fGrammarPool) != null && (str3 != null || str2 != null)) {
            this.fDTDGrammar = (DTDGrammar) xMLGrammarPool.retrieveGrammar(xMLDTDDescription);
        }
        if (this.fDTDGrammar == null) {
            this.fDTDGrammar = new DTDGrammar(this.fSymbolTable, xMLDTDDescription);
        } else {
            this.fValidationManager.setCachedDTD(true);
        }
        this.fGrammarBucket.setActiveGrammar(this.fDTDGrammar);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.doctypeDecl(str, str2, str3, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        boolean handleStartElement = handleStartElement(qName, xMLAttributes, augmentations);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.emptyElement(qName, xMLAttributes, augmentations);
        }
        if (handleStartElement) {
            return;
        }
        handleEndElement(qName, augmentations, true);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATASection = false;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endCDATA(augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endDocument(augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        handleEndElement(qName, augmentations, false);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endGeneralEntity(str, augmentations);
        }
    }

    public void endNamespaceScope(QName qName, Augmentations augmentations, boolean z) {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler == null || z) {
            return;
        }
        xMLDocumentHandler.endElement(this.fCurrentElement, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.fDocumentSource;
    }

    public String getExternalEntityRefInAttrValue(String str) {
        int length = str.length();
        int indexOf = str.indexOf(38);
        while (indexOf != -1) {
            int i = indexOf + 1;
            if (i < length && str.charAt(i) != '#') {
                String addSymbol = this.fSymbolTable.addSymbol(str.substring(i, str.indexOf(59, i)));
                int entityDeclIndex = this.fDTDGrammar.getEntityDeclIndex(addSymbol);
                if (entityDeclIndex > -1) {
                    this.fDTDGrammar.getEntityDecl(entityDeclIndex, this.fEntityDecl);
                    XMLEntityDecl xMLEntityDecl = this.fEntityDecl;
                    if (xMLEntityDecl.inExternal || (addSymbol = getExternalEntityRefInAttrValue(xMLEntityDecl.value)) != null) {
                        return addSymbol;
                    }
                } else {
                    continue;
                }
            }
            indexOf = str.indexOf(38, i);
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_FEATURES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return FEATURE_DEFAULTS[i];
            }
            i++;
        }
    }

    public DTDGrammarBucket getGrammarBucket() {
        return this.fGrammarBucket;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_PROPERTIES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return PROPERTY_DEFAULTS[i];
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) RECOGNIZED_FEATURES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) RECOGNIZED_PROPERTIES.clone();
    }

    public void handleEndElement(QName qName, Augmentations augmentations, boolean z) throws XNIException {
        String checkIDRefID;
        int i = this.fElementDepth - 1;
        this.fElementDepth = i;
        if (this.fPerformValidation) {
            int i2 = this.fCurrentElementIndex;
            if (i2 != -1 && this.fCurrentContentSpecType != -1) {
                QName[] qNameArr = this.fElementChildren;
                int i3 = this.fElementChildrenOffsetStack[i + 1] + 1;
                int i4 = this.fElementChildrenLength - i3;
                int checkContent = checkContent(i2, qNameArr, i3, i4);
                if (checkContent != -1) {
                    this.fDTDGrammar.getElementDecl(i2, this.fTempElementDecl);
                    if (this.fTempElementDecl.type == 1) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID", new Object[]{qName.rawname, "EMPTY"}, (short) 1);
                    } else {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", checkContent == i4 ? "MSG_CONTENT_INCOMPLETE" : "MSG_CONTENT_INVALID", new Object[]{qName.rawname, this.fDTDGrammar.getContentSpecAsString(i2)}, (short) 1);
                    }
                }
            }
            this.fElementChildrenLength = this.fElementChildrenOffsetStack[this.fElementDepth + 1] + 1;
        }
        endNamespaceScope(this.fCurrentElement, augmentations, z);
        int i5 = this.fElementDepth;
        if (i5 < -1) {
            throw new RuntimeException("FWK008 Element stack underflow");
        }
        if (i5 >= 0) {
            this.fCurrentElement.setValues(this.fElementQNamePartsStack[i5]);
            int[] iArr = this.fElementIndexStack;
            int i6 = this.fElementDepth;
            this.fCurrentElementIndex = iArr[i6];
            int i7 = this.fContentSpecTypeStack[i6];
            this.fCurrentContentSpecType = i7;
            this.fInElementContent = i7 == 3;
            return;
        }
        this.fCurrentElement.clear();
        this.fCurrentElementIndex = -1;
        this.fCurrentContentSpecType = -1;
        this.fInElementContent = false;
        if (!this.fPerformValidation || (checkIDRefID = this.fValidationState.checkIDRefID()) == null) {
            return;
        }
        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ELEMENT_WITH_ID_REQUIRED", new Object[]{checkIDRefID}, (short) 1);
    }

    public boolean handleStartElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        QName[] qNameArr;
        if (!this.fSeenRootElement) {
            this.fPerformValidation = validate();
            this.fSeenRootElement = true;
            this.fValidationManager.setEntityState(this.fDTDGrammar);
            this.fValidationManager.setGrammarFound(this.fSeenDoctypeDecl);
            rootElementSpecified(qName);
        }
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar == null) {
            boolean z = this.fPerformValidation;
            if (!z) {
                this.fCurrentElementIndex = -1;
                this.fCurrentContentSpecType = -1;
                this.fInElementContent = false;
            }
            if (z) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_GRAMMAR_NOT_FOUND", new Object[]{qName.rawname}, (short) 1);
            }
            XMLDocumentSource xMLDocumentSource = this.fDocumentSource;
            if (xMLDocumentSource != null) {
                xMLDocumentSource.setDocumentHandler(this.fDocumentHandler);
                XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
                if (xMLDocumentHandler != null) {
                    xMLDocumentHandler.setDocumentSource(this.fDocumentSource);
                }
                return true;
            }
        } else {
            int elementDeclIndex = dTDGrammar.getElementDeclIndex(qName);
            this.fCurrentElementIndex = elementDeclIndex;
            short contentSpecType = this.fDTDGrammar.getContentSpecType(elementDeclIndex);
            this.fCurrentContentSpecType = contentSpecType;
            if (contentSpecType == -1 && this.fPerformValidation) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ELEMENT_NOT_DECLARED", new Object[]{qName.rawname}, (short) 1);
            }
            addDTDDefaultAttrsAndValidate(qName, this.fCurrentElementIndex, xMLAttributes);
        }
        this.fInElementContent = this.fCurrentContentSpecType == 3;
        int i = this.fElementDepth + 1;
        this.fElementDepth = i;
        if (this.fPerformValidation) {
            int[] iArr = this.fElementChildrenOffsetStack;
            if (iArr.length <= i) {
                int[] iArr2 = new int[iArr.length * 2];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                this.fElementChildrenOffsetStack = iArr2;
            }
            int[] iArr3 = this.fElementChildrenOffsetStack;
            int i2 = this.fElementDepth;
            int i3 = this.fElementChildrenLength;
            iArr3[i2] = i3;
            QName[] qNameArr2 = this.fElementChildren;
            if (qNameArr2.length <= i3) {
                QName[] qNameArr3 = new QName[i3 * 2];
                System.arraycopy(qNameArr2, 0, qNameArr3, 0, qNameArr2.length);
                this.fElementChildren = qNameArr3;
            }
            QName[] qNameArr4 = this.fElementChildren;
            int i4 = this.fElementChildrenLength;
            QName qName2 = qNameArr4[i4];
            if (qName2 == null) {
                while (true) {
                    qNameArr = this.fElementChildren;
                    if (i4 >= qNameArr.length) {
                        break;
                    }
                    qNameArr[i4] = new QName();
                    i4++;
                }
                qName2 = qNameArr[this.fElementChildrenLength];
            }
            qName2.setValues(qName);
            this.fElementChildrenLength++;
        }
        this.fCurrentElement.setValues(qName);
        ensureStackCapacity(this.fElementDepth);
        this.fElementQNamePartsStack[this.fElementDepth].setValues(this.fCurrentElement);
        int[] iArr4 = this.fElementIndexStack;
        int i5 = this.fElementDepth;
        iArr4[i5] = this.fCurrentElementIndex;
        this.fContentSpecTypeStack[i5] = this.fCurrentContentSpecType;
        startNamespaceScope(qName, xMLAttributes, augmentations);
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidatorFilter
    public final boolean hasGrammar() {
        return this.fDTDGrammar != null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.ignorableWhitespace(xMLString, augmentations);
        }
    }

    public void init() {
        if (this.fValidation || this.fDynamicValidation) {
            try {
                this.fValID = this.fDatatypeValidatorFactory.getBuiltInDV(XMLSymbols.fIDSymbol);
                this.fValIDRef = this.fDatatypeValidatorFactory.getBuiltInDV(XMLSymbols.fIDREFSymbol);
                this.fValIDRefs = this.fDatatypeValidatorFactory.getBuiltInDV(XMLSymbols.fIDREFSSymbol);
                this.fValENTITY = this.fDatatypeValidatorFactory.getBuiltInDV(XMLSymbols.fENTITYSymbol);
                this.fValENTITIES = this.fDatatypeValidatorFactory.getBuiltInDV(XMLSymbols.fENTITIESSymbol);
                this.fValNMTOKEN = this.fDatatypeValidatorFactory.getBuiltInDV(XMLSymbols.fNMTOKENSymbol);
                this.fValNMTOKENS = this.fDatatypeValidatorFactory.getBuiltInDV(XMLSymbols.fNMTOKENSSymbol);
                this.fValNOTATION = this.fDatatypeValidatorFactory.getBuiltInDV(XMLSymbols.fNOTATIONSymbol);
            } catch (Exception e) {
                e.printStackTrace(System.err);
            }
        }
    }

    public boolean invalidStandaloneAttDef(QName qName, QName qName2) {
        return true;
    }

    public boolean isSpace(int i) {
        return XMLChar.isSpace(i);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar;
        if (this.fPerformValidation && this.fElementDepth >= 0 && (dTDGrammar = this.fDTDGrammar) != null) {
            dTDGrammar.getElementDecl(this.fCurrentElementIndex, this.fTempElementDecl);
            if (this.fTempElementDecl.type == 1) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID_SPECIFIED", new Object[]{this.fCurrentElement.rawname, "EMPTY", "processing instruction"}, (short) 1);
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.processingInstruction(str, xMLString, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        boolean z;
        this.fDTDGrammar = null;
        this.fSeenDoctypeDecl = false;
        this.fInCDATASection = false;
        this.fSeenRootElement = false;
        this.fInElementContent = false;
        this.fCurrentElementIndex = -1;
        this.fCurrentContentSpecType = -1;
        this.fRootElement.clear();
        this.fValidationState.resetIDTables();
        this.fGrammarBucket.clear();
        this.fElementDepth = -1;
        this.fElementChildrenLength = 0;
        try {
            z = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            z = true;
        }
        if (!z) {
            this.fValidationManager.addValidationState(this.fValidationState);
            return;
        }
        try {
            this.fNamespaces = xMLComponentManager.getFeature("http://xml.org/sax/features/namespaces");
        } catch (XMLConfigurationException unused2) {
            this.fNamespaces = true;
        }
        try {
            this.fValidation = xMLComponentManager.getFeature("http://xml.org/sax/features/validation");
        } catch (XMLConfigurationException unused3) {
            this.fValidation = false;
        }
        try {
            this.fDTDValidation = !xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema");
        } catch (XMLConfigurationException unused4) {
            this.fDTDValidation = true;
        }
        try {
            this.fDynamicValidation = xMLComponentManager.getFeature(DYNAMIC_VALIDATION);
        } catch (XMLConfigurationException unused5) {
            this.fDynamicValidation = false;
        }
        try {
            this.fWarnDuplicateAttdef = xMLComponentManager.getFeature(WARN_ON_DUPLICATE_ATTDEF);
        } catch (XMLConfigurationException unused6) {
            this.fWarnDuplicateAttdef = false;
        }
        try {
            this.fSchemaType = (String) xMLComponentManager.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
        } catch (XMLConfigurationException unused7) {
            this.fSchemaType = null;
        }
        ValidationManager validationManager = (ValidationManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager");
        this.fValidationManager = validationManager;
        validationManager.addValidationState(this.fValidationState);
        this.fValidationState.setUsingNamespaces(this.fNamespaces);
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        try {
            this.fGrammarPool = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused8) {
            this.fGrammarPool = null;
        }
        this.fDatatypeValidatorFactory = (DTDDVFactory) xMLComponentManager.getProperty(DATATYPE_VALIDATOR_FACTORY);
        init();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
        this.fDocumentSource = xMLDocumentSource;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        if (this.fPerformValidation && this.fInElementContent) {
            charDataInContent();
        }
        this.fInCDATASection = true;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startCDATA(augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
        if (xMLGrammarPool != null) {
            for (Grammar grammar : xMLGrammarPool.retrieveInitialGrammarSet("http://www.w3.org/TR/REC-xml")) {
                this.fGrammarBucket.putGrammar((DTDGrammar) grammar);
            }
        }
        this.fDocLocation = xMLLocator;
        this.fNamespaceContext = namespaceContext;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startDocument(xMLLocator, str, namespaceContext, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        handleStartElement(qName, xMLAttributes, augmentations);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startElement(qName, xMLAttributes, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar;
        if (this.fPerformValidation && this.fElementDepth >= 0 && (dTDGrammar = this.fDTDGrammar) != null) {
            dTDGrammar.getElementDecl(this.fCurrentElementIndex, this.fTempElementDecl);
            if (this.fTempElementDecl.type == 1) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID_SPECIFIED", new Object[]{this.fCurrentElement.rawname, "EMPTY", "ENTITY"}, (short) 1);
            }
            if (this.fGrammarBucket.getStandalone()) {
                XMLDTDProcessor.checkStandaloneEntityRef(str, this.fDTDGrammar, this.fEntityDecl, this.fErrorReporter);
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    public void startNamespaceScope(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.textDecl(str, str2, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidatorFilter
    public final boolean validate() {
        boolean z;
        return this.fSchemaType != Constants.NS_XMLSCHEMA && ((!(z = this.fDynamicValidation) && this.fValidation) || (z && this.fSeenDoctypeDecl)) && (this.fDTDValidation || this.fSeenDoctypeDecl);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void validateDTDattribute(com.sun.org.apache.xerces.internal.xni.QName r7, java.lang.String r8, com.sun.org.apache.xerces.internal.impl.dtd.XMLAttributeDecl r9) throws com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator.validateDTDattribute(com.sun.org.apache.xerces.internal.xni.QName, java.lang.String, com.sun.org.apache.xerces.internal.impl.dtd.XMLAttributeDecl):void");
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        this.fGrammarBucket.setStandalone(str3 != null && str3.equals("yes"));
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.xmlDecl(str, str2, str3, augmentations);
        }
    }
}
