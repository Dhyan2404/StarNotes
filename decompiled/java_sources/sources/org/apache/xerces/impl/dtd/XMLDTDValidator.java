package org.apache.xerces.impl.dtd;

import com.sunia.HTREnginev2.C13677em;
import java.io.IOException;
import java.util.Iterator;
import org.apache.xerces.impl.Constants;
import org.apache.xerces.impl.RevalidationHandler;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p115dv.DTDDVFactory;
import org.apache.xerces.impl.p115dv.DatatypeValidator;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.impl.validation.ValidationState;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentFilter;
import org.apache.xerces.xni.parser.XMLDocumentSource;

/* loaded from: classes13.dex */
public class XMLDTDValidator implements XMLComponent, XMLDocumentFilter, XMLDTDValidatorFilter, RevalidationHandler {
    protected static final String DATATYPE_VALIDATOR_FACTORY = "http://apache.org/xml/properties/internal/datatype-validator-factory";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";

    /* renamed from: O */
    public static final Boolean[] f112197O;
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";

    /* renamed from: Q */
    public static final String[] f112198Q;
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    protected static final String WARN_ON_DUPLICATE_ATTDEF = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef";

    /* renamed from: Z */
    public static final Object[] f112199Z;

    /* renamed from: k0 */
    public static final boolean f112200k0 = false;

    /* renamed from: q0 */
    public static final boolean f112201q0 = false;

    /* renamed from: z */
    public static final int f112202z = -1;

    /* renamed from: e */
    public boolean f112203e;

    /* renamed from: f */
    public String f112204f;
    protected boolean fBalanceSyntaxTrees;
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
    protected static final String BALANCE_SYNTAX_TREES = "http://apache.org/xml/features/validation/balance-syntax-trees";

    /* renamed from: J */
    public static final String[] f112196J = {"http://xml.org/sax/features/namespaces", "http://xml.org/sax/features/validation", DYNAMIC_VALIDATION, BALANCE_SYNTAX_TREES};
    protected ValidationManager fValidationManager = null;
    protected final ValidationState fValidationState = new ValidationState();
    protected NamespaceContext fNamespaceContext = null;
    protected boolean fSeenDoctypeDecl = false;

    /* renamed from: g */
    public final QName f112205g = new QName();

    /* renamed from: h */
    public int f112206h = -1;

    /* renamed from: i */
    public int f112207i = -1;

    /* renamed from: j */
    public final QName f112208j = new QName();

    /* renamed from: k */
    public boolean f112209k = false;

    /* renamed from: l */
    public int[] f112210l = new int[8];

    /* renamed from: m */
    public int[] f112211m = new int[8];

    /* renamed from: n */
    public QName[] f112212n = new QName[8];

    /* renamed from: o */
    public QName[] f112213o = new QName[32];

    /* renamed from: p */
    public int f112214p = 0;

    /* renamed from: q */
    public int[] f112215q = new int[32];

    /* renamed from: r */
    public int f112216r = -1;

    /* renamed from: s */
    public boolean f112217s = false;

    /* renamed from: t */
    public boolean f112218t = false;

    /* renamed from: u */
    public final XMLElementDecl f112219u = new XMLElementDecl();

    /* renamed from: v */
    public final XMLAttributeDecl f112220v = new XMLAttributeDecl();

    /* renamed from: w */
    public final XMLEntityDecl f112221w = new XMLEntityDecl();

    /* renamed from: x */
    public final QName f112222x = new QName();

    /* renamed from: y */
    public final StringBuffer f112223y = new StringBuffer();

    static {
        Boolean bool = Boolean.FALSE;
        f112197O = new Boolean[]{null, null, bool, bool};
        f112198Q = new String[]{"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/grammar-pool", DATATYPE_VALIDATOR_FACTORY, "http://apache.org/xml/properties/internal/validation-manager"};
        f112199Z = new Object[]{null, null, null, null, null};
    }

    public XMLDTDValidator() {
        int i = 0;
        while (true) {
            QName[] qNameArr = this.f112212n;
            if (i >= qNameArr.length) {
                this.fGrammarBucket = new DTDGrammarBucket();
                return;
            } else {
                qNameArr[i] = new QName();
                i++;
            }
        }
    }

    public void addDTDDefaultAttrsAndValidate(QName qName, int i, XMLAttributes xMLAttributes) throws XNIException {
        DTDGrammar dTDGrammar;
        boolean z;
        String nonNormalizedValue;
        String externalEntityRefInAttrValue;
        boolean z2;
        int i2;
        int i3 = -1;
        if (i == -1 || (dTDGrammar = this.fDTDGrammar) == null) {
            return;
        }
        int firstAttributeDeclIndex = dTDGrammar.getFirstAttributeDeclIndex(i);
        while (firstAttributeDeclIndex != i3) {
            this.fDTDGrammar.getAttributeDecl(firstAttributeDeclIndex, this.f112220v);
            XMLAttributeDecl xMLAttributeDecl = this.f112220v;
            QName qName2 = xMLAttributeDecl.name;
            String str = qName2.prefix;
            String str2 = qName2.localpart;
            String str3 = qName2.rawname;
            String m69899r = m69899r(xMLAttributeDecl);
            XMLSimpleType xMLSimpleType = this.f112220v.simpleType;
            short s = xMLSimpleType.defaultType;
            String str4 = xMLSimpleType.defaultValue;
            if (str4 == null) {
                str4 = null;
            }
            boolean z3 = s == 2;
            if (!(m69899r == XMLSymbols.fCDATASymbol) || z3 || str4 != null) {
                int length = xMLAttributes.getLength();
                for (int i4 = 0; i4 < length; i4++) {
                    if (xMLAttributes.getQName(i4) == str3) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (!z2) {
                if (z3) {
                    if (this.f112203e) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_REQUIRED_ATTRIBUTE_NOT_SPECIFIED", new Object[]{qName.localpart, str3}, (short) 1);
                    }
                } else if (str4 != null) {
                    if (this.f112203e && this.fGrammarBucket.m69890b() && this.fDTDGrammar.getAttributeDeclIsExternal(firstAttributeDeclIndex)) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_DEFAULTED_ATTRIBUTE_NOT_SPECIFIED", new Object[]{qName.localpart, str3}, (short) 1);
                    }
                    if (this.fNamespaces) {
                        int indexOf = str3.indexOf(58);
                        i2 = -1;
                        if (indexOf != -1) {
                            str = this.fSymbolTable.addSymbol(str3.substring(0, indexOf));
                            str2 = this.fSymbolTable.addSymbol(str3.substring(indexOf + 1));
                        }
                    } else {
                        i2 = -1;
                    }
                    this.f112222x.setValues(str, str2, str3, this.f112220v.name.uri);
                    xMLAttributes.addAttribute(this.f112222x, m69899r, str4);
                    firstAttributeDeclIndex = this.fDTDGrammar.getNextAttributeDeclIndex(firstAttributeDeclIndex);
                    i3 = i2;
                }
            }
            i2 = -1;
            firstAttributeDeclIndex = this.fDTDGrammar.getNextAttributeDeclIndex(firstAttributeDeclIndex);
            i3 = i2;
        }
        int length2 = xMLAttributes.getLength();
        for (int i5 = 0; i5 < length2; i5++) {
            String qName3 = xMLAttributes.getQName(i5);
            if (this.f112203e && this.fGrammarBucket.m69890b() && (nonNormalizedValue = xMLAttributes.getNonNormalizedValue(i5)) != null && (externalEntityRefInAttrValue = getExternalEntityRefInAttrValue(nonNormalizedValue)) != null) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE", new Object[]{externalEntityRefInAttrValue}, (short) 1);
            }
            int firstAttributeDeclIndex2 = this.fDTDGrammar.getFirstAttributeDeclIndex(i);
            while (true) {
                if (firstAttributeDeclIndex2 == i3) {
                    z = false;
                    break;
                }
                this.fDTDGrammar.getAttributeDecl(firstAttributeDeclIndex2, this.f112220v);
                if (this.f112220v.name.rawname == qName3) {
                    z = true;
                    break;
                }
                firstAttributeDeclIndex2 = this.fDTDGrammar.getNextAttributeDeclIndex(firstAttributeDeclIndex2);
            }
            if (z) {
                String m69899r2 = m69899r(this.f112220v);
                xMLAttributes.setType(i5, m69899r2);
                xMLAttributes.getAugmentations(i5).putItem("ATTRIBUTE_DECLARED", Boolean.TRUE);
                String value = xMLAttributes.getValue(i5);
                if (xMLAttributes.isSpecified(i5) && m69899r2 != XMLSymbols.fCDATASymbol) {
                    boolean m69902u = m69902u(xMLAttributes, i5);
                    String value2 = xMLAttributes.getValue(i5);
                    if (this.f112203e && this.fGrammarBucket.m69890b() && m69902u && this.fDTDGrammar.getAttributeDeclIsExternal(firstAttributeDeclIndex2)) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ATTVALUE_CHANGED_DURING_NORMALIZATION_WHEN_STANDALONE", new Object[]{qName3, value, value2}, (short) 1);
                    }
                    value = value2;
                }
                if (this.f112203e) {
                    XMLSimpleType xMLSimpleType2 = this.f112220v.simpleType;
                    if (xMLSimpleType2.defaultType == 1) {
                        String str5 = xMLSimpleType2.defaultValue;
                        if (!value.equals(str5)) {
                            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_FIXED_ATTVALUE_INVALID", new Object[]{qName.localpart, qName3, value, str5}, (short) 1);
                        }
                    }
                    XMLAttributeDecl xMLAttributeDecl2 = this.f112220v;
                    short s2 = xMLAttributeDecl2.simpleType.type;
                    if (s2 == 1 || s2 == 2 || s2 == 3 || s2 == 4 || s2 == 5 || s2 == 6) {
                        validateDTDattribute(qName, value, xMLAttributeDecl2);
                    }
                }
            } else if (this.f112203e) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ATTRIBUTE_NOT_DECLARED", new Object[]{qName.rawname, qName3}, (short) 1);
            }
        }
    }

    @Override // org.apache.xerces.impl.RevalidationHandler
    public boolean characterData(String str, Augmentations augmentations) {
        characters(new XMLString(str.toCharArray(), 0, str.length()), augmentations);
        return true;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
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
                if (!isSpace(xMLString.f113585ch[i])) {
                    z2 = false;
                    break;
                }
                i++;
            }
        }
        if (!this.f112218t || !z2 || this.f112209k || (xMLDocumentHandler2 = this.fDocumentHandler) == null) {
            z = true;
        } else {
            xMLDocumentHandler2.ignorableWhitespace(xMLString, augmentations);
        }
        if (this.f112203e) {
            if (this.f112218t) {
                if (this.fGrammarBucket.m69890b() && this.fDTDGrammar.getElementDeclIsExternal(this.f112206h) && z2) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_WHITE_SPACE_IN_ELEMENT_CONTENT_WHEN_STANDALONE", null, (short) 1);
                }
                if (!z2) {
                    m69896o();
                }
                if (augmentations != null && augmentations.getItem("CHAR_REF_PROBABLE_WS") == Boolean.TRUE) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID_SPECIFIED", new Object[]{this.f112205g.rawname, this.fDTDGrammar.getContentSpecAsString(this.f112216r), "character reference"}, (short) 1);
                }
            }
            if (this.f112207i == 1) {
                m69896o();
            }
        }
        if (!z || (xMLDocumentHandler = this.fDocumentHandler) == null) {
            return;
        }
        xMLDocumentHandler.characters(xMLString, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar;
        if (this.f112203e && this.f112216r >= 0 && (dTDGrammar = this.fDTDGrammar) != null) {
            dTDGrammar.getElementDecl(this.f112206h, this.f112219u);
            if (this.f112219u.type == 1) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID_SPECIFIED", new Object[]{this.f112205g.rawname, "EMPTY", "comment"}, (short) 1);
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.comment(xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLGrammarPool xMLGrammarPool;
        this.fSeenDoctypeDecl = true;
        String str4 = null;
        this.f112208j.setValues(null, str, str, null);
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
            this.fDTDGrammar = !this.fBalanceSyntaxTrees ? new DTDGrammar(this.fSymbolTable, xMLDTDDescription) : new C13677em(this.fSymbolTable, xMLDTDDescription);
        } else {
            this.fValidationManager.setCachedDTD(true);
        }
        this.fGrammarBucket.m69891c(this.fDTDGrammar);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.doctypeDecl(str, str2, str3, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
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

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.f112209k = false;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endCDATA(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endDocument(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        handleEndElement(qName, augmentations, false);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
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
        xMLDocumentHandler.endElement(this.f112205g, augmentations);
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
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
                    this.fDTDGrammar.getEntityDecl(entityDeclIndex, this.f112221w);
                    XMLEntityDecl xMLEntityDecl = this.f112221w;
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

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112196J;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112197O[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112198Q;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112199Z[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f112196J.clone();
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f112198Q.clone();
    }

    public void handleEndElement(QName qName, Augmentations augmentations, boolean z) throws XNIException {
        Iterator checkIDRefID;
        int i = this.f112216r - 1;
        this.f112216r = i;
        if (this.f112203e) {
            int i2 = this.f112206h;
            if (i2 != -1 && this.f112207i != -1) {
                QName[] qNameArr = this.f112213o;
                int i3 = this.f112215q[i + 1] + 1;
                int i4 = this.f112214p - i3;
                int m69897p = m69897p(i2, qNameArr, i3, i4);
                if (m69897p != -1) {
                    this.fDTDGrammar.getElementDecl(i2, this.f112219u);
                    if (this.f112219u.type == 1) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID", new Object[]{qName.rawname, "EMPTY"}, (short) 1);
                    } else {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", m69897p == i4 ? "MSG_CONTENT_INCOMPLETE" : "MSG_CONTENT_INVALID", new Object[]{qName.rawname, this.fDTDGrammar.getContentSpecAsString(i2)}, (short) 1);
                    }
                }
            }
            this.f112214p = this.f112215q[this.f112216r + 1] + 1;
        }
        endNamespaceScope(this.f112205g, augmentations, z);
        int i5 = this.f112216r;
        if (i5 < -1) {
            throw new RuntimeException("FWK008 Element stack underflow");
        }
        if (i5 >= 0) {
            this.f112205g.setValues(this.f112212n[i5]);
            int[] iArr = this.f112210l;
            int i6 = this.f112216r;
            this.f112206h = iArr[i6];
            int i7 = this.f112211m[i6];
            this.f112207i = i7;
            this.f112218t = i7 == 3;
            return;
        }
        this.f112205g.clear();
        this.f112206h = -1;
        this.f112207i = -1;
        this.f112218t = false;
        if (!this.f112203e || (checkIDRefID = this.fValidationState.checkIDRefID()) == null) {
            return;
        }
        while (checkIDRefID.hasNext()) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ELEMENT_WITH_ID_REQUIRED", new Object[]{checkIDRefID.next()}, (short) 1);
        }
    }

    public boolean handleStartElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        QName[] qNameArr;
        if (!this.f112217s) {
            this.f112203e = validate();
            this.f112217s = true;
            this.fValidationManager.setEntityState(this.fDTDGrammar);
            this.fValidationManager.setGrammarFound(this.fSeenDoctypeDecl);
            m69903v(qName);
        }
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar == null) {
            boolean z = this.f112203e;
            if (!z) {
                this.f112206h = -1;
                this.f112207i = -1;
                this.f112218t = false;
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
            this.f112206h = elementDeclIndex;
            short contentSpecType = this.fDTDGrammar.getContentSpecType(elementDeclIndex);
            this.f112207i = contentSpecType;
            if (contentSpecType == -1 && this.f112203e) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ELEMENT_NOT_DECLARED", new Object[]{qName.rawname}, (short) 1);
            }
            addDTDDefaultAttrsAndValidate(qName, this.f112206h, xMLAttributes);
        }
        this.f112218t = this.f112207i == 3;
        int i = this.f112216r + 1;
        this.f112216r = i;
        if (this.f112203e) {
            int[] iArr = this.f112215q;
            if (iArr.length <= i) {
                int[] iArr2 = new int[iArr.length * 2];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                this.f112215q = iArr2;
            }
            int[] iArr3 = this.f112215q;
            int i2 = this.f112216r;
            int i3 = this.f112214p;
            iArr3[i2] = i3;
            QName[] qNameArr2 = this.f112213o;
            if (qNameArr2.length <= i3) {
                QName[] qNameArr3 = new QName[i3 * 2];
                System.arraycopy(qNameArr2, 0, qNameArr3, 0, qNameArr2.length);
                this.f112213o = qNameArr3;
            }
            QName[] qNameArr4 = this.f112213o;
            int i4 = this.f112214p;
            QName qName2 = qNameArr4[i4];
            if (qName2 == null) {
                while (true) {
                    qNameArr = this.f112213o;
                    if (i4 >= qNameArr.length) {
                        break;
                    }
                    qNameArr[i4] = new QName();
                    i4++;
                }
                qName2 = qNameArr[this.f112214p];
            }
            qName2.setValues(qName);
            this.f112214p++;
        }
        this.f112205g.setValues(qName);
        m69898q(this.f112216r);
        this.f112212n[this.f112216r].setValues(this.f112205g);
        int[] iArr4 = this.f112210l;
        int i5 = this.f112216r;
        iArr4[i5] = this.f112206h;
        this.f112211m[i5] = this.f112207i;
        startNamespaceScope(qName, xMLAttributes, augmentations);
        return false;
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDValidatorFilter
    public final boolean hasGrammar() {
        return this.fDTDGrammar != null;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
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

    /* renamed from: o */
    public final void m69896o() {
        QName[] qNameArr;
        QName[] qNameArr2 = this.f112213o;
        if (qNameArr2.length <= this.f112214p) {
            QName[] qNameArr3 = new QName[qNameArr2.length * 2];
            System.arraycopy(qNameArr2, 0, qNameArr3, 0, qNameArr2.length);
            this.f112213o = qNameArr3;
        }
        QName[] qNameArr4 = this.f112213o;
        int i = this.f112214p;
        QName qName = qNameArr4[i];
        if (qName == null) {
            while (true) {
                qNameArr = this.f112213o;
                if (i >= qNameArr.length) {
                    break;
                }
                qNameArr[i] = new QName();
                i++;
            }
            qName = qNameArr[this.f112214p];
        }
        qName.clear();
        this.f112214p++;
    }

    /* renamed from: p */
    public final int m69897p(int i, QName[] qNameArr, int i2, int i3) throws XNIException {
        this.fDTDGrammar.getElementDecl(i, this.f112219u);
        String str = this.f112205g.rawname;
        int i4 = this.f112207i;
        if (i4 == 1) {
            return i3 != 0 ? 0 : -1;
        }
        if (i4 == 0) {
            return -1;
        }
        if (i4 == 2 || i4 == 3) {
            return this.f112219u.contentModelValidator.validate(qNameArr, i2, i3);
        }
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar;
        if (this.f112203e && this.f112216r >= 0 && (dTDGrammar = this.fDTDGrammar) != null) {
            dTDGrammar.getElementDecl(this.f112206h, this.f112219u);
            if (this.f112219u.type == 1) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID_SPECIFIED", new Object[]{this.f112205g.rawname, "EMPTY", "processing instruction"}, (short) 1);
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.processingInstruction(str, xMLString, augmentations);
        }
    }

    /* renamed from: q */
    public final void m69898q(int i) {
        QName[] qNameArr = this.f112212n;
        if (i == qNameArr.length) {
            int i2 = i * 2;
            QName[] qNameArr2 = new QName[i2];
            System.arraycopy(qNameArr, 0, qNameArr2, 0, i);
            this.f112212n = qNameArr2;
            if (qNameArr2[i] == null) {
                int i3 = i;
                while (true) {
                    QName[] qNameArr3 = this.f112212n;
                    if (i3 >= qNameArr3.length) {
                        break;
                    }
                    qNameArr3[i3] = new QName();
                    i3++;
                }
            }
            int[] iArr = new int[i2];
            System.arraycopy(this.f112210l, 0, iArr, 0, i);
            this.f112210l = iArr;
            int[] iArr2 = new int[i2];
            System.arraycopy(this.f112211m, 0, iArr2, 0, i);
            this.f112211m = iArr2;
        }
    }

    /* renamed from: r */
    public final String m69899r(XMLAttributeDecl xMLAttributeDecl) {
        XMLSimpleType xMLSimpleType = xMLAttributeDecl.simpleType;
        switch (xMLSimpleType.type) {
            case 1:
                return xMLSimpleType.list ? XMLSymbols.fENTITIESSymbol : XMLSymbols.fENTITYSymbol;
            case 2:
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append('(');
                for (int i = 0; i < xMLAttributeDecl.simpleType.enumeration.length; i++) {
                    if (i > 0) {
                        stringBuffer.append('|');
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

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        boolean z;
        this.fDTDGrammar = null;
        this.fSeenDoctypeDecl = false;
        this.f112209k = false;
        this.f112217s = false;
        this.f112218t = false;
        this.f112206h = -1;
        this.f112207i = -1;
        this.f112208j.clear();
        this.fValidationState.resetIDTables();
        this.fGrammarBucket.clear();
        this.f112216r = -1;
        this.f112214p = 0;
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
            this.fBalanceSyntaxTrees = xMLComponentManager.getFeature(BALANCE_SYNTAX_TREES);
        } catch (XMLConfigurationException unused6) {
            this.fBalanceSyntaxTrees = false;
        }
        try {
            this.fWarnDuplicateAttdef = xMLComponentManager.getFeature(WARN_ON_DUPLICATE_ATTDEF);
        } catch (XMLConfigurationException unused7) {
            this.fWarnDuplicateAttdef = false;
        }
        try {
            this.f112204f = (String) xMLComponentManager.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
        } catch (XMLConfigurationException unused8) {
            this.f112204f = null;
        }
        ValidationManager validationManager = (ValidationManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager");
        this.fValidationManager = validationManager;
        validationManager.addValidationState(this.fValidationState);
        this.fValidationState.setUsingNamespaces(this.fNamespaces);
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        try {
            this.fGrammarPool = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused9) {
            this.fGrammarPool = null;
        }
        this.fDatatypeValidatorFactory = (DTDDVFactory) xMLComponentManager.getProperty(DATATYPE_VALIDATOR_FACTORY);
        init();
    }

    /* renamed from: s */
    public final int m69900s(int i) {
        if (i <= -1 || !this.fDTDGrammar.getElementDecl(i, this.f112219u)) {
            return -1;
        }
        return this.f112219u.type;
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public void setDocumentHandler(XMLDocumentHandler xMLDocumentHandler) {
        this.fDocumentHandler = xMLDocumentHandler;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
        this.fDocumentSource = xMLDocumentSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        if (this.f112203e && this.f112218t) {
            m69896o();
        }
        this.f112209k = true;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startCDATA(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
        if (xMLGrammarPool != null) {
            Grammar[] retrieveInitialGrammarSet = xMLGrammarPool.retrieveInitialGrammarSet("http://www.w3.org/TR/REC-xml");
            int length = retrieveInitialGrammarSet != null ? retrieveInitialGrammarSet.length : 0;
            for (int i = 0; i < length; i++) {
                this.fGrammarBucket.putGrammar((DTDGrammar) retrieveInitialGrammarSet[i]);
            }
        }
        this.fDocLocation = xMLLocator;
        this.fNamespaceContext = namespaceContext;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startDocument(xMLLocator, str, namespaceContext, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        handleStartElement(qName, xMLAttributes, augmentations);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startElement(qName, xMLAttributes, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar;
        if (this.f112203e && this.f112216r >= 0 && (dTDGrammar = this.fDTDGrammar) != null) {
            dTDGrammar.getElementDecl(this.f112206h, this.f112219u);
            if (this.f112219u.type == 1) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_CONTENT_INVALID_SPECIFIED", new Object[]{this.f112205g.rawname, "EMPTY", "ENTITY"}, (short) 1);
            }
            if (this.fGrammarBucket.m69890b()) {
                XMLDTDProcessor.checkStandaloneEntityRef(str, this.fDTDGrammar, this.f112221w, this.fErrorReporter);
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    public void startNamespaceScope(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) {
    }

    /* renamed from: t */
    public DTDGrammarBucket m69901t() {
        return this.fGrammarBucket;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.textDecl(str, str2, augmentations);
        }
    }

    /* renamed from: u */
    public final boolean m69902u(XMLAttributes xMLAttributes, int i) {
        String value = xMLAttributes.getValue(i);
        int length = value.length();
        char[] cArr = new char[length];
        this.f112223y.setLength(0);
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
                    this.f112223y.append(c);
                    i2++;
                    z3 = false;
                }
            } else {
                this.f112223y.append(c);
                i2++;
                z2 = true;
                z3 = false;
                z = false;
            }
        }
        if (i2 > 0) {
            int i4 = i2 - 1;
            if (this.f112223y.charAt(i4) == ' ') {
                this.f112223y.setLength(i4);
            }
        }
        xMLAttributes.setValue(i, this.f112223y.toString());
        return !value.equals(r12);
    }

    /* renamed from: v */
    public final void m69903v(QName qName) throws XNIException {
        if (this.f112203e) {
            String str = this.f112208j.rawname;
            String str2 = qName.rawname;
            if (str == null || !str.equals(str2)) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "RootElementTypeMustMatchDoctypedecl", new Object[]{str, str2}, (short) 1);
            }
        }
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDValidatorFilter
    public final boolean validate() {
        boolean z;
        return this.f112204f != Constants.NS_XMLSCHEMA && ((!(z = this.fDynamicValidation) && this.fValidation) || (z && this.fSeenDoctypeDecl)) && (this.fDTDValidation || this.fSeenDoctypeDecl);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void validateDTDattribute(org.apache.xerces.xni.QName r7, java.lang.String r8, org.apache.xerces.impl.dtd.XMLAttributeDecl r9) throws org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.dtd.XMLDTDValidator.validateDTDattribute(org.apache.xerces.xni.QName, java.lang.String, org.apache.xerces.impl.dtd.XMLAttributeDecl):void");
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        this.fGrammarBucket.m69892d(str3 != null && str3.equals("yes"));
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.xmlDecl(str, str2, str3, augmentations);
        }
    }
}
