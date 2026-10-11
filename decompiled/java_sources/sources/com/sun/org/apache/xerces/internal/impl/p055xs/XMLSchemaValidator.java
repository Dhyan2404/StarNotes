package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.RevalidationHandler;
import com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaLoader;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.Field;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.FieldActivator;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.IdentityConstraint;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.KeyRef;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.Selector;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.UniqueOrKey;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.ValueStore;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.XPathMatcher;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.CMBuilder;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.CMNodeFactory;
import com.sun.org.apache.xerces.internal.impl.p055xs.models.XSCMValidator;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationManager;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationState;
import com.sun.org.apache.xerces.internal.p056xs.ShortList;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.AugmentationsImpl;
import com.sun.org.apache.xerces.internal.util.IntStack;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
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
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Stack;
import java.util.Vector;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes10.dex */
public class XMLSchemaValidator implements XMLComponent, XMLDocumentFilter, FieldActivator, RevalidationHandler {
    private static final int BUFFER_SIZE = 20;
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_NORMALIZATION = false;
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    public static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final int ID_CONSTRAINT_NUM = 1;
    static final int INC_STACK_SIZE = 8;
    static final int INITIAL_STACK_SIZE = 8;
    protected static final String JAXP_SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected static final String SCHEMA_AUGMENT_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String SCHEMA_ELEMENT_DEFAULT = "http://apache.org/xml/features/validation/schema/element-default";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String SCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    public static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String USE_GRAMMAR_POOL_ONLY = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    public static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    private boolean fAppendBuffer;
    private final StringBuffer fBuffer;
    private final CMBuilder fCMBuilder;
    private XSCMValidator[] fCMStack;
    private int[][] fCMStateStack;
    private int[] fCurrCMState;
    private XSCMValidator fCurrentCM;
    private XSElementDecl fCurrentElemDecl;
    private XSTypeDefinition fCurrentType;
    protected XMLString fDefaultValue;
    protected XMLDocumentHandler fDocumentHandler;
    protected XMLDocumentSource fDocumentSource;
    private XSElementDecl[] fElemDeclStack;
    private int fElementDepth;
    private final XMLString fEmptyXMLStr;
    protected XMLEntityResolver fEntityResolver;
    protected String fExternalNoNamespaceSchema;
    protected String fExternalSchemas;
    private boolean fFirstChunk;
    private final XSGrammarBucket fGrammarBucket;
    protected XMLGrammarPool fGrammarPool;
    protected Object fJaxpSchemaSource;
    protected final Hashtable fLocationPairs;
    private XMLLocator fLocator;
    protected XPathMatcherStack fMatcherStack;
    private int fNFullValidationDepth;
    private int fNNoneValidationDepth;
    private boolean fNil;
    private boolean[] fNilStack;
    private final XMLString fNormalizedStr;
    private XSNotationDecl fNotation;
    private XSNotationDecl[] fNotationStack;
    private final XSSimpleType fQNameDV;
    private boolean fSawCharacters;
    private boolean fSawText;
    private boolean[] fSawTextStack;
    private final XMLSchemaLoader fSchemaLoader;
    private int fSkipValidationDepth;
    private ValidationState fState4ApplyDefault;
    private ValidationState fState4XsiType;
    private boolean fStrictAssess;
    private boolean[] fStrictAssessStack;
    private boolean[] fStringContent;
    private boolean fSubElement;
    private boolean[] fSubElementStack;
    private final SubstitutionGroupHandler fSubGroupHandler;
    protected SymbolTable fSymbolTable;
    private final QName fTempQName;
    private boolean fTrailing;
    private XSTypeDefinition[] fTypeStack;
    private boolean fUnionType;
    private ValidatedInfo fValidatedInfo;
    protected ValidationManager fValidationManager;
    private String fValidationRoot;
    protected ValidationState fValidationState;
    protected ValueStoreCache fValueStoreCache;
    private short fWhiteSpace;
    protected final XSDDescription fXSDDescription;
    protected final XSIErrorReporter fXSIErrorReporter;
    private final CMNodeFactory nodeFactory;
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    private static final String[] RECOGNIZED_FEATURES = {"http://xml.org/sax/features/validation", "http://apache.org/xml/features/validation/schema", DYNAMIC_VALIDATION, "http://apache.org/xml/features/validation/schema-full-checking", ALLOW_JAVA_ENCODINGS, "http://apache.org/xml/features/continue-after-fatal-error", STANDARD_URI_CONFORMANT_FEATURE, "http://apache.org/xml/features/generate-synthetic-annotations", VALIDATE_ANNOTATIONS, HONOUR_ALL_SCHEMALOCATIONS, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"};
    private static final Boolean[] FEATURE_DEFAULTS = {null, null, null, null, null, null, null, null, null, null, null};
    protected static final String SCHEMA_LOCATION = "http://apache.org/xml/properties/schema/external-schemaLocation";
    protected static final String SCHEMA_NONS_LOCATION = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
    private static final String[] RECOGNIZED_PROPERTIES = {"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/validation-manager", SCHEMA_LOCATION, SCHEMA_NONS_LOCATION, "http://java.sun.com/xml/jaxp/properties/schemaSource", "http://java.sun.com/xml/jaxp/properties/schemaLanguage"};
    private static final Object[] PROPERTY_DEFAULTS = {null, null, null, null, null, null, null, null};
    protected ElementPSVImpl fCurrentPSVI = new ElementPSVImpl();
    protected final AugmentationsImpl fAugmentations = new AugmentationsImpl();
    protected final HashMap fMayMatchFieldMap = new HashMap();
    protected boolean fDynamicValidation = false;
    protected boolean fSchemaDynamicValidation = false;
    protected boolean fDoValidation = false;
    protected boolean fFullChecking = false;
    protected boolean fNormalizeData = true;
    protected boolean fSchemaElementDefault = true;
    protected boolean fAugPSVI = true;
    protected boolean fIdConstraint = false;
    protected boolean fUseGrammarPoolOnly = false;
    private String fSchemaType = null;
    protected boolean fEntityRef = false;
    protected boolean fInCDATA = false;

    /* loaded from: classes10.dex */
    public class KeyRefValueStore extends ValueStoreBase {
        protected ValueStoreBase fKeyValueStore;

        public KeyRefValueStore(KeyRef keyRef, KeyValueStore keyValueStore) {
            super(keyRef);
            this.fKeyValueStore = keyValueStore;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.ValueStoreBase
        public void endDocument() {
            super.endDocument();
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.ValueStoreBase
        public void endDocumentFragment() {
            super.endDocumentFragment();
            ValueStoreBase valueStoreBase = (ValueStoreBase) XMLSchemaValidator.this.fValueStoreCache.fGlobalIDConstraintMap.get(((KeyRef) this.fIdentityConstraint).getKey());
            this.fKeyValueStore = valueStoreBase;
            if (valueStoreBase == null) {
                XMLSchemaValidator.this.reportSchemaError("KeyRefOutOfScope", new Object[]{this.fIdentityConstraint.toString()});
                return;
            }
            int contains = valueStoreBase.contains(this);
            if (contains != -1) {
                String valueStoreBase2 = toString(this.fValues, contains, this.fFieldCount);
                String elementName = this.fIdentityConstraint.getElementName();
                XMLSchemaValidator.this.reportSchemaError("KeyNotFound", new Object[]{this.fIdentityConstraint.getName(), valueStoreBase2, elementName});
            }
        }
    }

    /* loaded from: classes10.dex */
    public class KeyValueStore extends ValueStoreBase {
        public KeyValueStore(UniqueOrKey uniqueOrKey) {
            super(uniqueOrKey);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.ValueStoreBase
        public void checkDuplicateValues() {
            if (contains()) {
                XMLSchemaValidator.this.reportSchemaError("DuplicateKey", new Object[]{toString(this.fLocalValues), this.fIdentityConstraint.getElementName()});
            }
        }
    }

    /* loaded from: classes10.dex */
    public class LocalIDKey {
        public int fDepth;
        public IdentityConstraint fId;

        public LocalIDKey() {
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof LocalIDKey)) {
                return false;
            }
            LocalIDKey localIDKey = (LocalIDKey) obj;
            return localIDKey.fId == this.fId && localIDKey.fDepth == this.fDepth;
        }

        public int hashCode() {
            return this.fId.hashCode() + this.fDepth;
        }

        public LocalIDKey(IdentityConstraint identityConstraint, int i) {
            this.fId = identityConstraint;
            this.fDepth = i;
        }
    }

    /* loaded from: classes10.dex */
    public static final class ShortVector {
        private short[] fData;
        private int fLength;

        public ShortVector() {
        }

        private void ensureCapacity(int i) {
            short[] sArr = this.fData;
            if (sArr == null) {
                this.fData = new short[8];
            } else if (sArr.length <= i) {
                short[] sArr2 = new short[sArr.length * 2];
                System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
                this.fData = sArr2;
            }
        }

        public void add(short s) {
            ensureCapacity(this.fLength + 1);
            short[] sArr = this.fData;
            int i = this.fLength;
            this.fLength = i + 1;
            sArr[i] = s;
        }

        public void clear() {
            this.fLength = 0;
        }

        public boolean contains(short s) {
            for (int i = 0; i < this.fLength; i++) {
                if (this.fData[i] == s) {
                    return true;
                }
            }
            return false;
        }

        public int length() {
            return this.fLength;
        }

        public short valueAt(int i) {
            return this.fData[i];
        }

        public ShortVector(int i) {
            this.fData = new short[i];
        }
    }

    /* loaded from: classes10.dex */
    public class UniqueValueStore extends ValueStoreBase {
        public UniqueValueStore(UniqueOrKey uniqueOrKey) {
            super(uniqueOrKey);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.ValueStoreBase
        public void checkDuplicateValues() {
            if (contains()) {
                XMLSchemaValidator.this.reportSchemaError("DuplicateUnique", new Object[]{toString(this.fLocalValues), this.fIdentityConstraint.getElementName()});
            }
        }
    }

    /* loaded from: classes10.dex */
    public class ValueStoreCache {
        final LocalIDKey fLocalId;
        protected final Vector fValueStores = new Vector();
        protected final Hashtable fIdentityConstraint2ValueStoreMap = new Hashtable();
        protected final Stack fGlobalMapStack = new Stack();
        protected final Hashtable fGlobalIDConstraintMap = new Hashtable();

        public ValueStoreCache() {
            this.fLocalId = new LocalIDKey();
        }

        public void endDocument() {
            int size = this.fValueStores.size();
            for (int i = 0; i < size; i++) {
                ((ValueStoreBase) this.fValueStores.elementAt(i)).endDocument();
            }
        }

        public void endElement() {
            Hashtable hashtable;
            if (this.fGlobalMapStack.isEmpty() || (hashtable = (Hashtable) this.fGlobalMapStack.pop()) == null) {
                return;
            }
            Enumeration keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                IdentityConstraint identityConstraint = (IdentityConstraint) keys.nextElement();
                ValueStoreBase valueStoreBase = (ValueStoreBase) hashtable.get(identityConstraint);
                if (valueStoreBase != null) {
                    ValueStoreBase valueStoreBase2 = (ValueStoreBase) this.fGlobalIDConstraintMap.get(identityConstraint);
                    if (valueStoreBase2 == null) {
                        this.fGlobalIDConstraintMap.put(identityConstraint, valueStoreBase);
                    } else if (valueStoreBase2 != valueStoreBase) {
                        valueStoreBase2.append(valueStoreBase);
                    }
                }
            }
        }

        public ValueStoreBase getGlobalValueStoreFor(IdentityConstraint identityConstraint) {
            return (ValueStoreBase) this.fGlobalIDConstraintMap.get(identityConstraint);
        }

        public ValueStoreBase getValueStoreFor(IdentityConstraint identityConstraint, int i) {
            LocalIDKey localIDKey = this.fLocalId;
            localIDKey.fDepth = i;
            localIDKey.fId = identityConstraint;
            return (ValueStoreBase) this.fIdentityConstraint2ValueStoreMap.get(localIDKey);
        }

        public void initValueStoresFor(XSElementDecl xSElementDecl, FieldActivator fieldActivator) {
            IdentityConstraint[] identityConstraintArr = xSElementDecl.fIDConstraints;
            int i = xSElementDecl.fIDCPos;
            for (int i2 = 0; i2 < i; i2++) {
                short category = identityConstraintArr[i2].getCategory();
                if (category == 1) {
                    UniqueOrKey uniqueOrKey = (UniqueOrKey) identityConstraintArr[i2];
                    XMLSchemaValidator xMLSchemaValidator = XMLSchemaValidator.this;
                    LocalIDKey localIDKey = new LocalIDKey(uniqueOrKey, xMLSchemaValidator.fElementDepth);
                    KeyValueStore keyValueStore = (KeyValueStore) this.fIdentityConstraint2ValueStoreMap.get(localIDKey);
                    if (keyValueStore == null) {
                        keyValueStore = new KeyValueStore(uniqueOrKey);
                        this.fIdentityConstraint2ValueStoreMap.put(localIDKey, keyValueStore);
                    } else {
                        keyValueStore.clear();
                    }
                    this.fValueStores.addElement(keyValueStore);
                    XMLSchemaValidator.this.activateSelectorFor(identityConstraintArr[i2]);
                } else if (category == 2) {
                    KeyRef keyRef = (KeyRef) identityConstraintArr[i2];
                    XMLSchemaValidator xMLSchemaValidator2 = XMLSchemaValidator.this;
                    LocalIDKey localIDKey2 = new LocalIDKey(keyRef, xMLSchemaValidator2.fElementDepth);
                    KeyRefValueStore keyRefValueStore = (KeyRefValueStore) this.fIdentityConstraint2ValueStoreMap.get(localIDKey2);
                    if (keyRefValueStore == null) {
                        keyRefValueStore = new KeyRefValueStore(keyRef, null);
                        this.fIdentityConstraint2ValueStoreMap.put(localIDKey2, keyRefValueStore);
                    } else {
                        keyRefValueStore.clear();
                    }
                    this.fValueStores.addElement(keyRefValueStore);
                    XMLSchemaValidator.this.activateSelectorFor(identityConstraintArr[i2]);
                } else if (category == 3) {
                    UniqueOrKey uniqueOrKey2 = (UniqueOrKey) identityConstraintArr[i2];
                    XMLSchemaValidator xMLSchemaValidator3 = XMLSchemaValidator.this;
                    LocalIDKey localIDKey3 = new LocalIDKey(uniqueOrKey2, xMLSchemaValidator3.fElementDepth);
                    UniqueValueStore uniqueValueStore = (UniqueValueStore) this.fIdentityConstraint2ValueStoreMap.get(localIDKey3);
                    if (uniqueValueStore == null) {
                        uniqueValueStore = new UniqueValueStore(uniqueOrKey2);
                        this.fIdentityConstraint2ValueStoreMap.put(localIDKey3, uniqueValueStore);
                    } else {
                        uniqueValueStore.clear();
                    }
                    this.fValueStores.addElement(uniqueValueStore);
                    XMLSchemaValidator.this.activateSelectorFor(identityConstraintArr[i2]);
                }
            }
        }

        public void startDocument() {
            this.fValueStores.removeAllElements();
            this.fIdentityConstraint2ValueStoreMap.clear();
            this.fGlobalIDConstraintMap.clear();
            this.fGlobalMapStack.removeAllElements();
        }

        public void startElement() {
            if (this.fGlobalIDConstraintMap.size() > 0) {
                this.fGlobalMapStack.push(this.fGlobalIDConstraintMap.clone());
            } else {
                this.fGlobalMapStack.push(null);
            }
            this.fGlobalIDConstraintMap.clear();
        }

        public String toString() {
            String obj = super.toString();
            int lastIndexOf = obj.lastIndexOf(36);
            if (lastIndexOf != -1) {
                return obj.substring(lastIndexOf + 1);
            }
            int lastIndexOf2 = obj.lastIndexOf(46);
            return lastIndexOf2 != -1 ? obj.substring(lastIndexOf2 + 1) : obj;
        }

        public void transplant(IdentityConstraint identityConstraint, int i) {
            LocalIDKey localIDKey = this.fLocalId;
            localIDKey.fDepth = i;
            localIDKey.fId = identityConstraint;
            ValueStoreBase valueStoreBase = (ValueStoreBase) this.fIdentityConstraint2ValueStoreMap.get(localIDKey);
            if (identityConstraint.getCategory() == 2) {
                return;
            }
            ValueStoreBase valueStoreBase2 = (ValueStoreBase) this.fGlobalIDConstraintMap.get(identityConstraint);
            if (valueStoreBase2 == null) {
                this.fGlobalIDConstraintMap.put(identityConstraint, valueStoreBase);
            } else {
                valueStoreBase2.append(valueStoreBase);
                this.fGlobalIDConstraintMap.put(identityConstraint, valueStoreBase2);
            }
        }
    }

    /* loaded from: classes10.dex */
    public static class XPathMatcherStack {
        protected int fMatchersCount;
        protected XPathMatcher[] fMatchers = new XPathMatcher[4];
        protected IntStack fContextStack = new IntStack();

        private void ensureMatcherCapacity() {
            int i = this.fMatchersCount;
            XPathMatcher[] xPathMatcherArr = this.fMatchers;
            if (i == xPathMatcherArr.length) {
                XPathMatcher[] xPathMatcherArr2 = new XPathMatcher[xPathMatcherArr.length * 2];
                System.arraycopy(xPathMatcherArr, 0, xPathMatcherArr2, 0, xPathMatcherArr.length);
                this.fMatchers = xPathMatcherArr2;
            }
        }

        public void addMatcher(XPathMatcher xPathMatcher) {
            ensureMatcherCapacity();
            XPathMatcher[] xPathMatcherArr = this.fMatchers;
            int i = this.fMatchersCount;
            this.fMatchersCount = i + 1;
            xPathMatcherArr[i] = xPathMatcher;
        }

        public void clear() {
            for (int i = 0; i < this.fMatchersCount; i++) {
                this.fMatchers[i] = null;
            }
            this.fMatchersCount = 0;
            this.fContextStack.clear();
        }

        public XPathMatcher getMatcherAt(int i) {
            return this.fMatchers[i];
        }

        public int getMatcherCount() {
            return this.fMatchersCount;
        }

        public void popContext() {
            this.fMatchersCount = this.fContextStack.pop();
        }

        public void pushContext() {
            this.fContextStack.push(this.fMatchersCount);
        }

        public int size() {
            return this.fContextStack.size();
        }
    }

    public XMLSchemaValidator() {
        XSIErrorReporter xSIErrorReporter = new XSIErrorReporter();
        this.fXSIErrorReporter = xSIErrorReporter;
        this.fValidationManager = null;
        this.fValidationState = new ValidationState();
        this.fExternalSchemas = null;
        this.fExternalNoNamespaceSchema = null;
        this.fJaxpSchemaSource = null;
        this.fXSDDescription = new XSDDescription();
        this.fLocationPairs = new Hashtable();
        this.fEmptyXMLStr = new XMLString(null, 0, -1);
        this.fNormalizedStr = new XMLString();
        this.fFirstChunk = true;
        this.fTrailing = false;
        this.fWhiteSpace = (short) -1;
        this.fUnionType = false;
        XSGrammarBucket xSGrammarBucket = new XSGrammarBucket();
        this.fGrammarBucket = xSGrammarBucket;
        SubstitutionGroupHandler substitutionGroupHandler = new SubstitutionGroupHandler(xSGrammarBucket);
        this.fSubGroupHandler = substitutionGroupHandler;
        this.fQNameDV = (XSSimpleType) SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl("QName");
        CMNodeFactory cMNodeFactory = new CMNodeFactory();
        this.nodeFactory = cMNodeFactory;
        CMBuilder cMBuilder = new CMBuilder(cMNodeFactory);
        this.fCMBuilder = cMBuilder;
        this.fSchemaLoader = new XMLSchemaLoader(xSIErrorReporter.fErrorReporter, xSGrammarBucket, substitutionGroupHandler, cMBuilder);
        this.fSubElementStack = new boolean[8];
        this.fElemDeclStack = new XSElementDecl[8];
        this.fNilStack = new boolean[8];
        this.fNotationStack = new XSNotationDecl[8];
        this.fTypeStack = new XSTypeDefinition[8];
        this.fCMStack = new XSCMValidator[8];
        this.fCMStateStack = new int[8];
        this.fStrictAssess = true;
        this.fStrictAssessStack = new boolean[8];
        this.fBuffer = new StringBuffer();
        this.fAppendBuffer = true;
        this.fSawText = false;
        this.fSawTextStack = new boolean[8];
        this.fSawCharacters = false;
        this.fStringContent = new boolean[8];
        this.fTempQName = new QName();
        this.fValidatedInfo = new ValidatedInfo();
        this.fState4XsiType = new ValidationState();
        this.fState4ApplyDefault = new ValidationState();
        this.fMatcherStack = new XPathMatcherStack();
        this.fValueStoreCache = new ValueStoreCache();
        this.fState4XsiType.setExtraChecking(false);
        this.fState4ApplyDefault.setFacetChecking(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void activateSelectorFor(IdentityConstraint identityConstraint) {
        Selector selector = identityConstraint.getSelector();
        if (selector == null) {
            return;
        }
        XPathMatcher createMatcher = selector.createMatcher(this, this.fElementDepth);
        this.fMatcherStack.addMatcher(createMatcher);
        createMatcher.startDocumentFragment();
    }

    private short convertToPrimitiveKind(short s) {
        if (s <= 20) {
            return s;
        }
        if (s <= 29) {
            return (short) 2;
        }
        if (s <= 42) {
            return (short) 4;
        }
        return s;
    }

    private String expectedStr(Vector vector) {
        StringBuffer stringBuffer = new StringBuffer("{");
        int size = vector.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(vector.elementAt(i).toString());
        }
        stringBuffer.append('}');
        return stringBuffer.toString();
    }

    private boolean isComparable(ValidatedInfo validatedInfo, ValidatedInfo validatedInfo2) {
        short convertToPrimitiveKind = convertToPrimitiveKind(validatedInfo.actualValueType);
        short convertToPrimitiveKind2 = convertToPrimitiveKind(validatedInfo2.actualValueType);
        if (convertToPrimitiveKind != convertToPrimitiveKind2) {
            return (convertToPrimitiveKind == 1 && convertToPrimitiveKind2 == 2) || (convertToPrimitiveKind == 2 && convertToPrimitiveKind2 == 1);
        }
        if (convertToPrimitiveKind == 44 || convertToPrimitiveKind == 43) {
            ShortList shortList = validatedInfo.itemValueTypes;
            ShortList shortList2 = validatedInfo2.itemValueTypes;
            int length = shortList != null ? shortList.getLength() : 0;
            if (length != (shortList2 != null ? shortList2.getLength() : 0)) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                short convertToPrimitiveKind3 = convertToPrimitiveKind(shortList.item(i));
                short convertToPrimitiveKind4 = convertToPrimitiveKind(shortList2.item(i));
                if (convertToPrimitiveKind3 != convertToPrimitiveKind4 && ((convertToPrimitiveKind3 != 1 || convertToPrimitiveKind4 != 2) && (convertToPrimitiveKind3 != 2 || convertToPrimitiveKind4 != 1))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0063, code lost:
    
        if (r11.fFirstChunk == false) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void normalizeWhitespace(com.sun.org.apache.xerces.internal.xni.XMLString r12, boolean r13) {
        /*
            r11 = this;
            int r0 = r12.offset
            int r1 = r12.length
            int r0 = r0 + r1
            com.sun.org.apache.xerces.internal.xni.XMLString r2 = r11.fNormalizedStr
            char[] r3 = r2.f64120ch
            r4 = 1
            if (r3 == 0) goto L11
            int r3 = r3.length
            int r5 = r1 + 1
            if (r3 >= r5) goto L16
        L11:
            int r1 = r1 + r4
            char[] r1 = new char[r1]
            r2.f64120ch = r1
        L16:
            r2.offset = r4
            r2.length = r4
            int r1 = r12.offset
            r2 = 0
            r3 = r13
            r5 = r2
            r6 = r5
        L20:
            r7 = 32
            if (r1 >= r0) goto L52
            char[] r8 = r12.f64120ch
            char r8 = r8[r1]
            boolean r9 = com.sun.org.apache.xerces.internal.util.XMLChar.isSpace(r8)
            if (r9 == 0) goto L41
            if (r3 != 0) goto L3d
            com.sun.org.apache.xerces.internal.xni.XMLString r3 = r11.fNormalizedStr
            char[] r8 = r3.f64120ch
            int r9 = r3.length
            int r10 = r9 + 1
            r3.length = r10
            r8[r9] = r7
            r3 = r13
        L3d:
            if (r6 != 0) goto L4f
            r5 = r4
            goto L4f
        L41:
            com.sun.org.apache.xerces.internal.xni.XMLString r3 = r11.fNormalizedStr
            char[] r6 = r3.f64120ch
            int r7 = r3.length
            int r9 = r7 + 1
            r3.length = r9
            r6[r7] = r8
            r3 = r2
            r6 = r4
        L4f:
            int r1 = r1 + 1
            goto L20
        L52:
            if (r3 == 0) goto L66
            com.sun.org.apache.xerces.internal.xni.XMLString r12 = r11.fNormalizedStr
            int r13 = r12.length
            if (r13 <= r4) goto L5f
            int r13 = r13 - r4
            r12.length = r13
        L5d:
            r12 = r4
            goto L67
        L5f:
            if (r5 == 0) goto L66
            boolean r12 = r11.fFirstChunk
            if (r12 != 0) goto L66
            goto L5d
        L66:
            r12 = r2
        L67:
            com.sun.org.apache.xerces.internal.xni.XMLString r13 = r11.fNormalizedStr
            int r0 = r13.length
            if (r0 <= r4) goto L89
            boolean r1 = r11.fFirstChunk
            if (r1 != 0) goto L89
            short r1 = r11.fWhiteSpace
            r3 = 2
            if (r1 != r3) goto L89
            boolean r1 = r11.fTrailing
            if (r1 == 0) goto L81
            r13.offset = r2
            char[] r1 = r13.f64120ch
            r1[r2] = r7
            goto L89
        L81:
            if (r5 == 0) goto L89
            r13.offset = r2
            char[] r1 = r13.f64120ch
            r1[r2] = r7
        L89:
            int r1 = r13.offset
            int r0 = r0 - r1
            r13.length = r0
            r11.fTrailing = r12
            if (r12 != 0) goto L94
            if (r6 == 0) goto L96
        L94:
            r11.fFirstChunk = r2
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator.normalizeWhitespace(com.sun.org.apache.xerces.internal.xni.XMLString, boolean):void");
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.FieldActivator
    public XPathMatcher activateField(Field field, int i) {
        ValueStoreBase valueStoreFor = this.fValueStoreCache.getValueStoreFor(field.getIdentityConstraint(), i);
        setMayMatch(field, Boolean.TRUE);
        XPathMatcher createMatcher = field.createMatcher(this, valueStoreFor);
        this.fMatcherStack.addMatcher(createMatcher);
        createMatcher.startDocumentFragment();
        return createMatcher;
    }

    public void addDefaultAttributes(QName qName, XMLAttributes xMLAttributes, XSAttributeGroupDecl xSAttributeGroupDecl) {
        XSSimpleType xSSimpleType;
        XSObjectList attributeUses = xSAttributeGroupDecl.getAttributeUses();
        int length = attributeUses.getLength();
        for (int i = 0; i < length; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = (XSAttributeUseImpl) attributeUses.item(i);
            XSAttributeDecl xSAttributeDecl = xSAttributeUseImpl.fAttrDecl;
            short s = xSAttributeUseImpl.fConstraintType;
            ValidatedInfo validatedInfo = xSAttributeUseImpl.fDefault;
            if (s == 0) {
                s = xSAttributeDecl.getConstraintType();
                validatedInfo = xSAttributeDecl.fDefault;
            }
            boolean z = xMLAttributes.getValue(xSAttributeDecl.fTargetNamespace, xSAttributeDecl.fName) != null;
            if (xSAttributeUseImpl.fUse == 1 && !z) {
                reportSchemaError(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$MISSING_REQUIRED_ATTRIBUTE, new Object[]{qName.rawname, xSAttributeDecl.fName});
            }
            if (!z && s != 0) {
                String str = xSAttributeDecl.fName;
                QName qName2 = new QName(null, str, str, xSAttributeDecl.fTargetNamespace);
                String stringValue = validatedInfo != null ? validatedInfo.stringValue() : "";
                int addAttribute = xMLAttributes.addAttribute(qName2, "CDATA", stringValue);
                if (xMLAttributes instanceof XMLAttributesImpl) {
                    XMLAttributesImpl xMLAttributesImpl = (XMLAttributesImpl) xMLAttributes;
                    if (validatedInfo == null || (xSSimpleType = validatedInfo.memberType) == null) {
                        xSSimpleType = xSAttributeDecl.fType;
                    }
                    xMLAttributesImpl.setSchemaId(addAttribute, xSSimpleType.isIDType());
                }
                if (this.fAugPSVI) {
                    Augmentations augmentations = xMLAttributes.getAugmentations(addAttribute);
                    AttributePSVImpl attributePSVImpl = new AttributePSVImpl();
                    augmentations.putItem("ATTRIBUTE_PSVI", attributePSVImpl);
                    attributePSVImpl.fDeclaration = xSAttributeDecl;
                    attributePSVImpl.fTypeDecl = xSAttributeDecl.fType;
                    attributePSVImpl.fMemberType = validatedInfo.memberType;
                    attributePSVImpl.fNormalizedValue = stringValue;
                    attributePSVImpl.fActualValue = validatedInfo.actualValue;
                    attributePSVImpl.fActualValueType = validatedInfo.actualValueType;
                    attributePSVImpl.fItemValueTypes = validatedInfo.itemValueTypes;
                    attributePSVImpl.fValidationContext = this.fValidationRoot;
                    attributePSVImpl.fValidity = (short) 2;
                    attributePSVImpl.fValidationAttempted = (short) 2;
                    attributePSVImpl.fSpecified = true;
                }
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.RevalidationHandler
    public boolean characterData(String str, Augmentations augmentations) {
        short s;
        this.fSawText = this.fSawText || str.length() > 0;
        if (this.fNormalizeData && (s = this.fWhiteSpace) != -1 && s != 0) {
            normalizeWhitespace(str, s == 2);
            StringBuffer stringBuffer = this.fBuffer;
            XMLString xMLString = this.fNormalizedStr;
            stringBuffer.append(xMLString.f64120ch, xMLString.offset, xMLString.length);
        } else if (this.fAppendBuffer) {
            this.fBuffer.append(str);
        }
        XSTypeDefinition xSTypeDefinition = this.fCurrentType;
        if (xSTypeDefinition != null && xSTypeDefinition.getTypeCategory() == 15 && ((XSComplexTypeDecl) this.fCurrentType).fContentType == 2) {
            for (int i = 0; i < str.length(); i++) {
                if (!XMLChar.isSpace(str.charAt(i))) {
                    this.fSawCharacters = true;
                    return false;
                }
            }
        }
        return true;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLString handleCharacters = handleCharacters(xMLString);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (!this.fNormalizeData || !this.fUnionType) {
                xMLDocumentHandler.characters(handleCharacters, augmentations);
            } else if (augmentations != null) {
                xMLDocumentHandler.characters(this.fEmptyXMLStr, augmentations);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.comment(xMLString, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.doctypeDecl(str, str2, str3, augmentations);
        }
    }

    public void elementDefault(String str) {
    }

    public Object elementLocallyValidComplexType(QName qName, Object obj) {
        XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl) this.fCurrentType;
        Object obj2 = null;
        if (!this.fNil) {
            short s = xSComplexTypeDecl.fContentType;
            if (s == 0 && (this.fSubElement || this.fSawText)) {
                reportSchemaError(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$EMPTY_WITH_CONTENT, new Object[]{qName.rawname});
            } else if (s == 1) {
                if (this.fSubElement) {
                    reportSchemaError(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$SIMPLE_TYPE_WITH_CONTENT, new Object[]{qName.rawname});
                }
                XSSimpleType xSSimpleType = xSComplexTypeDecl.fXSSimpleType;
                try {
                    if (!this.fNormalizeData || this.fUnionType) {
                        this.fValidationState.setNormalizationRequired(true);
                    }
                    obj2 = xSSimpleType.validate(obj, this.fValidationState, this.fValidatedInfo);
                } catch (InvalidDatatypeValueException e) {
                    reportSchemaError(e.getKey(), e.getArgs());
                    reportSchemaError(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$SIMPLE_TYPE_WITH_CONTENT, new Object[]{qName.rawname});
                }
            } else if (s == 2 && this.fSawCharacters) {
                reportSchemaError(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$ELEMENT_ONLY_WITH_TEXT, new Object[]{qName.rawname});
            }
            short s2 = xSComplexTypeDecl.fContentType;
            if (s2 == 2 || s2 == 3) {
                int[] iArr = this.fCurrCMState;
                if (iArr[0] >= 0 && !this.fCurrentCM.endContentModel(iArr)) {
                    reportSchemaError("cvc-complex-type.2.4.b", new Object[]{qName.rawname, expectedStr(this.fCurrentCM.whatCanGoHere(this.fCurrCMState))});
                }
            }
        }
        return obj2;
    }

    public Object elementLocallyValidType(QName qName, Object obj) {
        XSTypeDefinition xSTypeDefinition = this.fCurrentType;
        if (xSTypeDefinition == null) {
            return null;
        }
        if (xSTypeDefinition.getTypeCategory() != 16) {
            return elementLocallyValidComplexType(qName, obj);
        }
        if (this.fSubElement) {
            reportSchemaError("cvc-type.3.1.2", new Object[]{qName.rawname});
        }
        if (this.fNil) {
            return null;
        }
        XSSimpleType xSSimpleType = (XSSimpleType) this.fCurrentType;
        try {
            if (!this.fNormalizeData || this.fUnionType) {
                this.fValidationState.setNormalizationRequired(true);
            }
            return xSSimpleType.validate(obj, this.fValidationState, this.fValidatedInfo);
        } catch (InvalidDatatypeValueException e) {
            this.reportSchemaError(e.getKey(), e.getArgs());
            this.reportSchemaError("cvc-type.3.1.3", new Object[]{qName.rawname, obj});
            return null;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Augmentations handleStartElement = handleStartElement(qName, xMLAttributes, augmentations);
        this.fDefaultValue = null;
        if (this.fElementDepth != -2) {
            handleStartElement = handleEndElement(qName, handleStartElement);
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (!this.fSchemaElementDefault || this.fDefaultValue == null) {
                xMLDocumentHandler.emptyElement(qName, xMLAttributes, handleStartElement);
                return;
            }
            xMLDocumentHandler.startElement(qName, xMLAttributes, handleStartElement);
            this.fDocumentHandler.characters(this.fDefaultValue, null);
            this.fDocumentHandler.endElement(qName, handleStartElement);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATA = false;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endCDATA(augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        handleEndDocument();
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endDocument(augmentations);
        }
        this.fLocator = null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        XMLString xMLString;
        this.fDefaultValue = null;
        Augmentations handleEndElement = handleEndElement(qName, augmentations);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (!this.fSchemaElementDefault || (xMLString = this.fDefaultValue) == null) {
                xMLDocumentHandler.endElement(qName, handleEndElement);
            } else {
                xMLDocumentHandler.characters(xMLString, null);
                this.fDocumentHandler.endElement(qName, handleEndElement);
            }
        }
    }

    public final Augmentations endElementPSVI(boolean z, SchemaGrammar[] schemaGrammarArr, Augmentations augmentations) {
        if (this.fAugPSVI) {
            augmentations = getEmptyAugs(augmentations);
            ElementPSVImpl elementPSVImpl = this.fCurrentPSVI;
            elementPSVImpl.fDeclaration = this.fCurrentElemDecl;
            elementPSVImpl.fTypeDecl = this.fCurrentType;
            elementPSVImpl.fNotation = this.fNotation;
            elementPSVImpl.fValidationContext = this.fValidationRoot;
            int i = this.fElementDepth;
            if (i > this.fNFullValidationDepth) {
                elementPSVImpl.fValidationAttempted = (short) 2;
            } else if (i > this.fNNoneValidationDepth) {
                elementPSVImpl.fValidationAttempted = (short) 0;
            } else {
                elementPSVImpl.fValidationAttempted = (short) 1;
                int i2 = i - 1;
                this.fNNoneValidationDepth = i2;
                this.fNFullValidationDepth = i2;
            }
            if (this.fDefaultValue != null) {
                elementPSVImpl.fSpecified = true;
            }
            elementPSVImpl.fNil = this.fNil;
            ValidatedInfo validatedInfo = this.fValidatedInfo;
            elementPSVImpl.fMemberType = validatedInfo.memberType;
            elementPSVImpl.fNormalizedValue = validatedInfo.normalizedValue;
            elementPSVImpl.fActualValue = validatedInfo.actualValue;
            elementPSVImpl.fActualValueType = validatedInfo.actualValueType;
            elementPSVImpl.fItemValueTypes = validatedInfo.itemValueTypes;
            if (this.fStrictAssess) {
                String[] mergeContext = this.fXSIErrorReporter.mergeContext();
                ElementPSVImpl elementPSVImpl2 = this.fCurrentPSVI;
                elementPSVImpl2.fErrorCodes = mergeContext;
                elementPSVImpl2.fValidity = mergeContext != null ? (short) 1 : (short) 2;
            } else {
                elementPSVImpl.fValidity = (short) 0;
                this.fXSIErrorReporter.popContext();
            }
            if (z) {
                ElementPSVImpl elementPSVImpl3 = this.fCurrentPSVI;
                elementPSVImpl3.fGrammars = schemaGrammarArr;
                elementPSVImpl3.fSchemaInformation = null;
            }
        }
        return augmentations;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        this.fEntityRef = false;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endGeneralEntity(str, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.FieldActivator
    public void endValueScopeFor(IdentityConstraint identityConstraint, int i) {
        this.fValueStoreCache.getValueStoreFor(identityConstraint, i).endValueScope();
    }

    public void ensureStackCapacity() {
        int i = this.fElementDepth;
        if (i == this.fElemDeclStack.length) {
            int i2 = i + 8;
            boolean[] zArr = new boolean[i2];
            System.arraycopy(this.fSubElementStack, 0, zArr, 0, i);
            this.fSubElementStack = zArr;
            XSElementDecl[] xSElementDeclArr = new XSElementDecl[i2];
            System.arraycopy(this.fElemDeclStack, 0, xSElementDeclArr, 0, this.fElementDepth);
            this.fElemDeclStack = xSElementDeclArr;
            boolean[] zArr2 = new boolean[i2];
            System.arraycopy(this.fNilStack, 0, zArr2, 0, this.fElementDepth);
            this.fNilStack = zArr2;
            XSNotationDecl[] xSNotationDeclArr = new XSNotationDecl[i2];
            System.arraycopy(this.fNotationStack, 0, xSNotationDeclArr, 0, this.fElementDepth);
            this.fNotationStack = xSNotationDeclArr;
            XSTypeDefinition[] xSTypeDefinitionArr = new XSTypeDefinition[i2];
            System.arraycopy(this.fTypeStack, 0, xSTypeDefinitionArr, 0, this.fElementDepth);
            this.fTypeStack = xSTypeDefinitionArr;
            XSCMValidator[] xSCMValidatorArr = new XSCMValidator[i2];
            System.arraycopy(this.fCMStack, 0, xSCMValidatorArr, 0, this.fElementDepth);
            this.fCMStack = xSCMValidatorArr;
            boolean[] zArr3 = new boolean[i2];
            System.arraycopy(this.fSawTextStack, 0, zArr3, 0, this.fElementDepth);
            this.fSawTextStack = zArr3;
            boolean[] zArr4 = new boolean[i2];
            System.arraycopy(this.fStringContent, 0, zArr4, 0, this.fElementDepth);
            this.fStringContent = zArr4;
            boolean[] zArr5 = new boolean[i2];
            System.arraycopy(this.fStrictAssessStack, 0, zArr5, 0, this.fElementDepth);
            this.fStrictAssessStack = zArr5;
            int[][] iArr = new int[i2];
            System.arraycopy(this.fCMStateStack, 0, iArr, 0, this.fElementDepth);
            this.fCMStateStack = iArr;
        }
    }

    public SchemaGrammar findSchemaGrammar(short s, String str, QName qName, QName qName2, XMLAttributes xMLAttributes) {
        SchemaGrammar grammar = this.fGrammarBucket.getGrammar(str);
        if (grammar != null) {
            return grammar;
        }
        this.fXSDDescription.reset();
        XSDDescription xSDDescription = this.fXSDDescription;
        xSDDescription.fContextType = s;
        xSDDescription.setNamespace(str);
        XSDDescription xSDDescription2 = this.fXSDDescription;
        xSDDescription2.fEnclosedElementName = qName;
        xSDDescription2.fTriggeringComponent = qName2;
        xSDDescription2.fAttributes = xMLAttributes;
        XMLLocator xMLLocator = this.fLocator;
        if (xMLLocator != null) {
            xSDDescription2.setBaseSystemId(xMLLocator.getExpandedSystemId());
        }
        Hashtable hashtable = this.fLocationPairs;
        if (str == null) {
            str = XMLSymbols.EMPTY_STRING;
        }
        Object obj = hashtable.get(str);
        String[] locationArray = obj != null ? ((XMLSchemaLoader.LocationArray) obj).getLocationArray() : null;
        if (locationArray != null && locationArray.length != 0) {
            XSDDescription xSDDescription3 = this.fXSDDescription;
            String[] strArr = new String[locationArray.length];
            xSDDescription3.fLocationHints = strArr;
            System.arraycopy(locationArray, 0, strArr, 0, locationArray.length);
        }
        XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
        if (xMLGrammarPool != null && (grammar = (SchemaGrammar) xMLGrammarPool.retrieveGrammar(this.fXSDDescription)) != null && !this.fGrammarBucket.putGrammar(grammar, true)) {
            this.fXSIErrorReporter.fErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "GrammarConflict", null, (short) 0);
            grammar = null;
        }
        if (grammar != null || this.fUseGrammarPoolOnly) {
            return grammar;
        }
        try {
            return this.fSchemaLoader.loadSchema(this.fXSDDescription, XMLSchemaLoader.resolveDocument(this.fXSDDescription, this.fLocationPairs, this.fEntityResolver), this.fLocationPairs);
        } catch (IOException unused) {
            String[] locationHints = this.fXSDDescription.getLocationHints();
            XMLErrorReporter xMLErrorReporter = this.fXSIErrorReporter.fErrorReporter;
            Object[] objArr = new Object[1];
            objArr[0] = locationHints != null ? locationHints[0] : XMLSymbols.EMPTY_STRING;
            xMLErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "schema_reference.4", objArr, (short) 0);
            return grammar;
        }
    }

    public XSTypeDefinition getAndCheckXsiType(QName qName, String str, XMLAttributes xMLAttributes) {
        SchemaGrammar findSchemaGrammar;
        try {
            QName qName2 = (QName) this.fQNameDV.validate(str, (ValidationContext) this.fValidationState, (ValidatedInfo) null);
            XSTypeDefinition globalTypeDecl = qName2.uri == SchemaSymbols.URI_SCHEMAFORSCHEMA ? SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(qName2.localpart) : null;
            if (globalTypeDecl == null && (findSchemaGrammar = findSchemaGrammar((short) 7, qName2.uri, qName, qName2, xMLAttributes)) != null) {
                globalTypeDecl = findSchemaGrammar.getGlobalTypeDecl(qName2.localpart);
            }
            if (globalTypeDecl == null) {
                reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_NOT_FOUND, new Object[]{qName.rawname, str});
                return null;
            }
            XSTypeDefinition xSTypeDefinition = this.fCurrentType;
            if (xSTypeDefinition != null) {
                short s = this.fCurrentElemDecl.fBlock;
                if (xSTypeDefinition.getTypeCategory() == 15) {
                    s = (short) (((XSComplexTypeDecl) this.fCurrentType).fBlock | s);
                }
                if (!XSConstraints.checkTypeDerivationOk(globalTypeDecl, this.fCurrentType, s)) {
                    reportSchemaError("cvc-elt.4.3", new Object[]{qName.rawname, str, this.fCurrentType.getName()});
                }
            }
            return globalTypeDecl;
        } catch (InvalidDatatypeValueException e) {
            reportSchemaError(e.getKey(), e.getArgs());
            reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_INVALID_QNAME, new Object[]{qName.rawname, SchemaSymbols.URI_XSI + "," + SchemaSymbols.XSI_TYPE, str});
            return null;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.fDocumentSource;
    }

    public Augmentations getEmptyAugs(Augmentations augmentations) {
        if (augmentations == null) {
            augmentations = this.fAugmentations;
            augmentations.removeAllItems();
        }
        augmentations.putItem("ELEMENT_PSVI", this.fCurrentPSVI);
        this.fCurrentPSVI.reset();
        return augmentations;
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

    public boolean getXsiNil(QName qName, String str) {
        XSElementDecl xSElementDecl = this.fCurrentElemDecl;
        if (xSElementDecl != null && !xSElementDecl.getNillable()) {
            reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$NOT_NILLABLE, new Object[]{qName.rawname, SchemaSymbols.URI_XSI + "," + SchemaSymbols.XSI_NIL});
            return false;
        }
        String trim = str.trim();
        if (!trim.equals("true") && !trim.equals("1")) {
            return false;
        }
        XSElementDecl xSElementDecl2 = this.fCurrentElemDecl;
        if (xSElementDecl2 == null || xSElementDecl2.getConstraintType() != 2) {
            return true;
        }
        reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$NIL_WITH_FIXED, new Object[]{qName.rawname, SchemaSymbols.URI_XSI + "," + SchemaSymbols.XSI_NIL});
        return true;
    }

    public XMLString handleCharacters(XMLString xMLString) {
        short s;
        if (this.fSkipValidationDepth >= 0) {
            return xMLString;
        }
        this.fSawText = this.fSawText || xMLString.length > 0;
        if (this.fNormalizeData && (s = this.fWhiteSpace) != -1 && s != 0) {
            normalizeWhitespace(xMLString, s == 2);
            xMLString = this.fNormalizedStr;
        }
        if (this.fAppendBuffer) {
            this.fBuffer.append(xMLString.f64120ch, xMLString.offset, xMLString.length);
        }
        XSTypeDefinition xSTypeDefinition = this.fCurrentType;
        if (xSTypeDefinition != null && xSTypeDefinition.getTypeCategory() == 15 && ((XSComplexTypeDecl) this.fCurrentType).fContentType == 2) {
            int i = xMLString.offset;
            while (true) {
                if (i >= xMLString.offset + xMLString.length) {
                    break;
                }
                if (!XMLChar.isSpace(xMLString.f64120ch[i])) {
                    this.fSawCharacters = true;
                    break;
                }
                i++;
            }
        }
        return xMLString;
    }

    public void handleEndDocument() {
        this.fValueStoreCache.endDocument();
    }

    public Augmentations handleEndElement(QName qName, Augmentations augmentations) {
        Selector.Matcher matcher;
        IdentityConstraint identityConstraint;
        ValueStoreBase valueStoreFor;
        Selector.Matcher matcher2;
        IdentityConstraint identityConstraint2;
        int i = this.fSkipValidationDepth;
        if (i >= 0) {
            int i2 = this.fElementDepth;
            if (i != i2 || i <= 0) {
                this.fElementDepth = i2 - 1;
            } else {
                this.fNFullValidationDepth = i - 1;
                this.fSkipValidationDepth = -1;
                int i3 = i2 - 1;
                this.fElementDepth = i3;
                this.fSubElement = this.fSubElementStack[i3];
                this.fCurrentElemDecl = this.fElemDeclStack[i3];
                this.fNil = this.fNilStack[i3];
                this.fNotation = this.fNotationStack[i3];
                this.fCurrentType = this.fTypeStack[i3];
                this.fCurrentCM = this.fCMStack[i3];
                this.fStrictAssess = this.fStrictAssessStack[i3];
                this.fCurrCMState = this.fCMStateStack[i3];
                this.fSawText = this.fSawTextStack[i3];
                this.fSawCharacters = this.fStringContent[i3];
            }
            if (this.fElementDepth == -1 && this.fFullChecking) {
                XSConstraints.fullSchemaChecking(this.fGrammarBucket, this.fSubGroupHandler, this.fCMBuilder, this.fXSIErrorReporter.fErrorReporter);
            }
            return this.fAugPSVI ? getEmptyAugs(augmentations) : augmentations;
        }
        processElementContent(qName);
        int matcherCount = this.fMatcherStack.getMatcherCount() - 1;
        for (int i4 = matcherCount; i4 >= 0; i4--) {
            XPathMatcher matcherAt = this.fMatcherStack.getMatcherAt(i4);
            XSElementDecl xSElementDecl = this.fCurrentElemDecl;
            if (xSElementDecl == null) {
                ValidatedInfo validatedInfo = this.fValidatedInfo;
                matcherAt.endElement(qName, null, false, validatedInfo.actualValue, validatedInfo.actualValueType, validatedInfo.itemValueTypes);
            } else {
                XSTypeDefinition xSTypeDefinition = this.fCurrentType;
                boolean nillable = xSElementDecl.getNillable();
                XMLString xMLString = this.fDefaultValue;
                matcherAt.endElement(qName, xSTypeDefinition, nillable, (xMLString == null ? this.fValidatedInfo : this.fCurrentElemDecl.fDefault).actualValue, (xMLString == null ? this.fValidatedInfo : this.fCurrentElemDecl.fDefault).actualValueType, (xMLString == null ? this.fValidatedInfo : this.fCurrentElemDecl.fDefault).itemValueTypes);
            }
        }
        if (this.fMatcherStack.size() > 0) {
            this.fMatcherStack.popContext();
        }
        int matcherCount2 = this.fMatcherStack.getMatcherCount();
        for (int i5 = matcherCount; i5 >= matcherCount2; i5--) {
            XPathMatcher matcherAt2 = this.fMatcherStack.getMatcherAt(i5);
            if ((matcherAt2 instanceof Selector.Matcher) && (identityConstraint2 = (matcher2 = (Selector.Matcher) matcherAt2).getIdentityConstraint()) != null && identityConstraint2.getCategory() != 2) {
                this.fValueStoreCache.transplant(identityConstraint2, matcher2.getInitialDepth());
            }
        }
        while (matcherCount >= matcherCount2) {
            XPathMatcher matcherAt3 = this.fMatcherStack.getMatcherAt(matcherCount);
            if ((matcherAt3 instanceof Selector.Matcher) && (identityConstraint = (matcher = (Selector.Matcher) matcherAt3).getIdentityConstraint()) != null && identityConstraint.getCategory() == 2 && (valueStoreFor = this.fValueStoreCache.getValueStoreFor(identityConstraint, matcher.getInitialDepth())) != null) {
                valueStoreFor.endDocumentFragment();
            }
            matcherCount--;
        }
        this.fValueStoreCache.endElement();
        if (this.fElementDepth == 0) {
            String checkIDRefID = this.fValidationState.checkIDRefID();
            this.fValidationState.resetIDTables();
            if (checkIDRefID != null) {
                reportSchemaError("cvc-id.1", new Object[]{checkIDRefID});
            }
            if (this.fFullChecking) {
                XSConstraints.fullSchemaChecking(this.fGrammarBucket, this.fSubGroupHandler, this.fCMBuilder, this.fXSIErrorReporter.fErrorReporter);
            }
            SchemaGrammar[] grammars = this.fGrammarBucket.getGrammars();
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            if (xMLGrammarPool != null) {
                xMLGrammarPool.cacheGrammars("http://www.w3.org/2001/XMLSchema", grammars);
            }
            return endElementPSVI(true, grammars, augmentations);
        }
        Augmentations endElementPSVI = endElementPSVI(false, null, augmentations);
        int i6 = this.fElementDepth - 1;
        this.fElementDepth = i6;
        this.fSubElement = this.fSubElementStack[i6];
        this.fCurrentElemDecl = this.fElemDeclStack[i6];
        this.fNil = this.fNilStack[i6];
        this.fNotation = this.fNotationStack[i6];
        this.fCurrentType = this.fTypeStack[i6];
        this.fCurrentCM = this.fCMStack[i6];
        this.fStrictAssess = this.fStrictAssessStack[i6];
        this.fCurrCMState = this.fCMStateStack[i6];
        this.fSawText = this.fSawTextStack[i6];
        this.fSawCharacters = this.fStringContent[i6];
        this.fWhiteSpace = (short) -1;
        this.fAppendBuffer = false;
        this.fUnionType = false;
        return endElementPSVI;
    }

    public void handleIgnorableWhitespace(XMLString xMLString) {
    }

    public void handleStartDocument(XMLLocator xMLLocator, String str) {
        this.fValueStoreCache.startDocument();
        if (this.fAugPSVI) {
            ElementPSVImpl elementPSVImpl = this.fCurrentPSVI;
            elementPSVImpl.fGrammars = null;
            elementPSVImpl.fSchemaInformation = null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(48:16|(2:18|(3:20|(2:22|(1:24))|25))(1:164)|26|(1:28)|29|(2:31|(1:33)(3:34|35|(33:44|(1:47)|48|(1:50)|51|(4:143|(2:145|(1:(1:148)(1:149)))|150|(2:155|(1:157)(3:158|(1:160)(1:162)|161))(1:154))(3:54|(2:56|(2:127|(4:129|(1:131)|132|133)(2:134|(2:136|137)(1:138)))(1:60))(1:(1:142))|61)|62|(1:66)|67|(1:69)|70|(1:72)|73|74|(21:76|(1:78)|79|(2:83|(1:85)(1:86))|89|(1:91)|92|(1:94)|95|(1:99)|100|(1:102)|103|(1:107)|108|(1:110)|111|(1:113)|114|115|(2:117|118)(1:119))(19:120|(2:122|(1:124)(1:125))|89|(0)|92|(0)|95|(2:97|99)|100|(0)|103|(2:105|107)|108|(0)|111|(0)|114|115|(0)(0))|87|89|(0)|92|(0)|95|(0)|100|(0)|103|(0)|108|(0)|111|(0)|114|115|(0)(0))(2:39|(2:41|42)(1:43))))|163|35|(1:37)|44|(1:47)|48|(0)|51|(0)|143|(0)|150|(1:152)|155|(0)(0)|62|(2:64|66)|67|(0)|70|(0)|73|74|(0)(0)|87|89|(0)|92|(0)|95|(0)|100|(0)|103|(0)|108|(0)|111|(0)|114|115|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:102:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02bc A[LOOP:0: B:112:0x02ba->B:113:0x02bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0279  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.sun.org.apache.xerces.internal.xni.Augmentations handleStartElement(com.sun.org.apache.xerces.internal.xni.QName r11, com.sun.org.apache.xerces.internal.xni.XMLAttributes r12, com.sun.org.apache.xerces.internal.xni.Augmentations r13) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator.handleStartElement(com.sun.org.apache.xerces.internal.xni.QName, com.sun.org.apache.xerces.internal.xni.XMLAttributes, com.sun.org.apache.xerces.internal.xni.Augmentations):com.sun.org.apache.xerces.internal.xni.Augmentations");
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        handleIgnorableWhitespace(xMLString);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.ignorableWhitespace(xMLString, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.FieldActivator
    public Boolean mayMatch(Field field) {
        return (Boolean) this.fMayMatchFieldMap.get(field);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processAttributes(com.sun.org.apache.xerces.internal.xni.QName r23, com.sun.org.apache.xerces.internal.xni.XMLAttributes r24, com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeGroupDecl r25) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaValidator.processAttributes(com.sun.org.apache.xerces.internal.xni.QName, com.sun.org.apache.xerces.internal.xni.XMLAttributes, com.sun.org.apache.xerces.internal.impl.xs.XSAttributeGroupDecl):void");
    }

    public void processElementContent(QName qName) {
        ValidatedInfo validatedInfo;
        XSElementDecl xSElementDecl = this.fCurrentElemDecl;
        if (xSElementDecl != null && (validatedInfo = xSElementDecl.fDefault) != null && !this.fSawText && !this.fSubElement && !this.fNil) {
            String stringValue = validatedInfo.stringValue();
            int length = stringValue.length();
            XMLString xMLString = this.fNormalizedStr;
            char[] cArr = xMLString.f64120ch;
            if (cArr == null || cArr.length < length) {
                xMLString.f64120ch = new char[length];
            }
            stringValue.getChars(0, length, xMLString.f64120ch, 0);
            XMLString xMLString2 = this.fNormalizedStr;
            xMLString2.offset = 0;
            xMLString2.length = length;
            this.fDefaultValue = xMLString2;
        }
        this.fValidatedInfo.normalizedValue = null;
        if (this.fNil && (this.fSubElement || this.fSawText)) {
            reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$NIL_WITH_CONTENT, new Object[]{qName.rawname, SchemaSymbols.URI_XSI + "," + SchemaSymbols.XSI_NIL});
        }
        this.fValidatedInfo.reset();
        XSElementDecl xSElementDecl2 = this.fCurrentElemDecl;
        if (xSElementDecl2 == null || xSElementDecl2.getConstraintType() == 0 || this.fSubElement || this.fSawText || this.fNil) {
            Object elementLocallyValidType = elementLocallyValidType(qName, this.fBuffer);
            XSElementDecl xSElementDecl3 = this.fCurrentElemDecl;
            if (xSElementDecl3 != null && xSElementDecl3.getConstraintType() == 2 && !this.fNil) {
                String stringBuffer = this.fBuffer.toString();
                if (this.fSubElement) {
                    reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_WITH_CONTENT, new Object[]{qName.rawname});
                }
                if (this.fCurrentType.getTypeCategory() == 15) {
                    short s = ((XSComplexTypeDecl) this.fCurrentType).fContentType;
                    if (s == 3) {
                        if (!this.fCurrentElemDecl.fDefault.normalizedValue.equals(stringBuffer)) {
                            reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_VALID_MIXED_CONTENT, new Object[]{qName.rawname, stringBuffer, this.fCurrentElemDecl.fDefault.normalizedValue});
                        }
                    } else if (s == 1 && elementLocallyValidType != null && (!isComparable(this.fValidatedInfo, this.fCurrentElemDecl.fDefault) || !elementLocallyValidType.equals(this.fCurrentElemDecl.fDefault.actualValue))) {
                        reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_VALID_SIMPLE_TYPE, new Object[]{qName.rawname, stringBuffer, this.fCurrentElemDecl.fDefault.stringValue()});
                    }
                } else if (this.fCurrentType.getTypeCategory() == 16 && elementLocallyValidType != null && (!isComparable(this.fValidatedInfo, this.fCurrentElemDecl.fDefault) || !elementLocallyValidType.equals(this.fCurrentElemDecl.fDefault.actualValue))) {
                    reportSchemaError(XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_VALID_SIMPLE_TYPE, new Object[]{qName.rawname, stringBuffer, this.fCurrentElemDecl.fDefault.stringValue()});
                }
            }
        } else {
            XSTypeDefinition xSTypeDefinition = this.fCurrentType;
            XSElementDecl xSElementDecl4 = this.fCurrentElemDecl;
            if (xSTypeDefinition != xSElementDecl4.fType && XSConstraints.ElementDefaultValidImmediate(xSTypeDefinition, xSElementDecl4.fDefault.stringValue(), this.fState4XsiType, null) == null) {
                reportSchemaError("cvc-elt.5.1.1", new Object[]{qName.rawname, this.fCurrentType.getName(), this.fCurrentElemDecl.fDefault.stringValue()});
            }
            elementLocallyValidType(qName, this.fCurrentElemDecl.fDefault.stringValue());
        }
        if (this.fDefaultValue == null && this.fNormalizeData && this.fDocumentHandler != null && this.fUnionType) {
            String str = this.fValidatedInfo.normalizedValue;
            if (str == null) {
                str = this.fBuffer.toString();
            }
            int length2 = str.length();
            XMLString xMLString3 = this.fNormalizedStr;
            char[] cArr2 = xMLString3.f64120ch;
            if (cArr2 == null || cArr2.length < length2) {
                xMLString3.f64120ch = new char[length2];
            }
            str.getChars(0, length2, xMLString3.f64120ch, 0);
            XMLString xMLString4 = this.fNormalizedStr;
            xMLString4.offset = 0;
            xMLString4.length = length2;
            this.fDocumentHandler.characters(xMLString4, null);
        }
    }

    public void processOneAttribute(QName qName, XMLAttributes xMLAttributes, int i, XSAttributeDecl xSAttributeDecl, XSAttributeUseImpl xSAttributeUseImpl, AttributePSVImpl attributePSVImpl) {
        String value = xMLAttributes.getValue(i);
        this.fXSIErrorReporter.pushContext();
        XSSimpleType xSSimpleType = xSAttributeDecl.fType;
        Object obj = null;
        try {
            obj = xSSimpleType.validate(value, (ValidationContext) this.fValidationState, this.fValidatedInfo);
            if (this.fNormalizeData) {
                xMLAttributes.setValue(i, this.fValidatedInfo.normalizedValue);
            }
            if (xMLAttributes instanceof XMLAttributesImpl) {
                XMLAttributesImpl xMLAttributesImpl = (XMLAttributesImpl) xMLAttributes;
                XSSimpleType xSSimpleType2 = this.fValidatedInfo.memberType;
                xMLAttributesImpl.setSchemaId(i, xSSimpleType2 != null ? xSSimpleType2.isIDType() : xSSimpleType.isIDType());
            }
            if (xSSimpleType.getVariety() == 1 && xSSimpleType.getPrimitiveKind() == 20) {
                QName qName2 = (QName) obj;
                SchemaGrammar grammar = this.fGrammarBucket.getGrammar(qName2.uri);
                if (grammar != null) {
                    this.fNotation = grammar.getGlobalNotationDecl(qName2.localpart);
                }
            }
        } catch (InvalidDatatypeValueException e) {
            reportSchemaError(e.getKey(), e.getArgs());
            reportSchemaError("cvc-attribute.3", new Object[]{qName.rawname, this.fTempQName.rawname, value, xSSimpleType.getName()});
        }
        if (obj != null && xSAttributeDecl.getConstraintType() == 2 && (!isComparable(this.fValidatedInfo, xSAttributeDecl.fDefault) || !obj.equals(xSAttributeDecl.fDefault.actualValue))) {
            reportSchemaError(XmlErrorCodes.ATTR_LOCALLY_VALID$FIXED, new Object[]{qName.rawname, this.fTempQName.rawname, value, xSAttributeDecl.fDefault.stringValue()});
        }
        if (obj != null && xSAttributeUseImpl != null && xSAttributeUseImpl.fConstraintType == 2 && (!isComparable(this.fValidatedInfo, xSAttributeUseImpl.fDefault) || !obj.equals(xSAttributeUseImpl.fDefault.actualValue))) {
            reportSchemaError(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$ATTRIBUTE_VALID, new Object[]{qName.rawname, this.fTempQName.rawname, value, xSAttributeUseImpl.fDefault.stringValue()});
        }
        if (this.fIdConstraint) {
            attributePSVImpl.fActualValue = obj;
        }
        if (this.fAugPSVI) {
            attributePSVImpl.fDeclaration = xSAttributeDecl;
            attributePSVImpl.fTypeDecl = xSSimpleType;
            ValidatedInfo validatedInfo = this.fValidatedInfo;
            attributePSVImpl.fMemberType = validatedInfo.memberType;
            attributePSVImpl.fNormalizedValue = validatedInfo.normalizedValue;
            attributePSVImpl.fActualValue = validatedInfo.actualValue;
            attributePSVImpl.fActualValueType = validatedInfo.actualValueType;
            attributePSVImpl.fItemValueTypes = validatedInfo.itemValueTypes;
            attributePSVImpl.fValidationAttempted = (short) 2;
            String[] mergeContext = this.fXSIErrorReporter.mergeContext();
            attributePSVImpl.fErrorCodes = mergeContext;
            attributePSVImpl.fValidity = mergeContext == null ? (short) 2 : (short) 1;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.processingInstruction(str, xMLString, augmentations);
        }
    }

    public void reportSchemaError(String str, Object[] objArr) {
        if (this.fDoValidation) {
            this.fXSIErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        boolean z;
        this.fIdConstraint = false;
        this.fLocationPairs.clear();
        this.fValidationState.resetIDTables();
        this.nodeFactory.reset(xMLComponentManager);
        this.fSchemaLoader.reset(xMLComponentManager);
        this.fCurrentElemDecl = null;
        this.fCurrentCM = null;
        this.fCurrCMState = null;
        this.fSkipValidationDepth = -1;
        this.fNFullValidationDepth = -1;
        this.fNNoneValidationDepth = -1;
        this.fElementDepth = -1;
        this.fSubElement = false;
        this.fSchemaDynamicValidation = false;
        this.fEntityRef = false;
        this.fInCDATA = false;
        this.fMatcherStack.clear();
        if (!this.fMayMatchFieldMap.isEmpty()) {
            this.fMayMatchFieldMap.clear();
        }
        this.fXSIErrorReporter.reset((XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter"));
        try {
            z = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            z = true;
        }
        if (!z) {
            this.fValidationManager.addValidationState(this.fValidationState);
            XMLSchemaLoader.processExternalHints(this.fExternalSchemas, this.fExternalNoNamespaceSchema, this.fLocationPairs, this.fXSIErrorReporter.fErrorReporter);
            return;
        }
        SymbolTable symbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        if (symbolTable != this.fSymbolTable) {
            this.fSymbolTable = symbolTable;
        }
        try {
            this.fDynamicValidation = xMLComponentManager.getFeature(DYNAMIC_VALIDATION);
        } catch (XMLConfigurationException unused2) {
            this.fDynamicValidation = false;
        }
        if (this.fDynamicValidation) {
            this.fDoValidation = true;
        } else {
            try {
                this.fDoValidation = xMLComponentManager.getFeature("http://xml.org/sax/features/validation");
            } catch (XMLConfigurationException unused3) {
                this.fDoValidation = false;
            }
        }
        if (this.fDoValidation) {
            try {
                this.fDoValidation = xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema");
            } catch (XMLConfigurationException unused4) {
            }
        }
        try {
            this.fFullChecking = xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema-full-checking");
        } catch (XMLConfigurationException unused5) {
            this.fFullChecking = false;
        }
        try {
            this.fNormalizeData = xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema/normalized-value");
        } catch (XMLConfigurationException unused6) {
            this.fNormalizeData = false;
        }
        try {
            this.fSchemaElementDefault = xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema/element-default");
        } catch (XMLConfigurationException unused7) {
            this.fSchemaElementDefault = false;
        }
        try {
            this.fAugPSVI = xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema/augment-psvi");
        } catch (XMLConfigurationException unused8) {
            this.fAugPSVI = true;
        }
        try {
            this.fSchemaType = (String) xMLComponentManager.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
        } catch (XMLConfigurationException unused9) {
            this.fSchemaType = null;
        }
        try {
            this.fUseGrammarPoolOnly = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only");
        } catch (XMLConfigurationException unused10) {
            this.fUseGrammarPoolOnly = false;
        }
        this.fEntityResolver = (XMLEntityResolver) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/entity-manager");
        ValidationManager validationManager = (ValidationManager) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/validation-manager");
        this.fValidationManager = validationManager;
        validationManager.addValidationState(this.fValidationState);
        this.fValidationState.setSymbolTable(this.fSymbolTable);
        try {
            this.fExternalSchemas = (String) xMLComponentManager.getProperty(SCHEMA_LOCATION);
            this.fExternalNoNamespaceSchema = (String) xMLComponentManager.getProperty(SCHEMA_NONS_LOCATION);
        } catch (XMLConfigurationException unused11) {
            this.fExternalSchemas = null;
            this.fExternalNoNamespaceSchema = null;
        }
        XMLSchemaLoader.processExternalHints(this.fExternalSchemas, this.fExternalNoNamespaceSchema, this.fLocationPairs, this.fXSIErrorReporter.fErrorReporter);
        try {
            this.fJaxpSchemaSource = xMLComponentManager.getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource");
        } catch (XMLConfigurationException unused12) {
            this.fJaxpSchemaSource = null;
        }
        try {
            this.fGrammarPool = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused13) {
            this.fGrammarPool = null;
        }
        this.fState4XsiType.setSymbolTable(symbolTable);
        this.fState4ApplyDefault.setSymbolTable(symbolTable);
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

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.FieldActivator
    public void setMayMatch(Field field, Boolean bool) {
        this.fMayMatchFieldMap.put(field, bool);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATA = true;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startCDATA(augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        this.fValidationState.setNamespaceSupport(namespaceContext);
        this.fState4XsiType.setNamespaceSupport(namespaceContext);
        this.fState4ApplyDefault.setNamespaceSupport(namespaceContext);
        this.fLocator = xMLLocator;
        handleStartDocument(xMLLocator, str);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startDocument(xMLLocator, str, namespaceContext, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Augmentations handleStartElement = handleStartElement(qName, xMLAttributes, augmentations);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startElement(qName, xMLAttributes, handleStartElement);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        this.fEntityRef = true;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.FieldActivator
    public void startValueScopeFor(IdentityConstraint identityConstraint, int i) {
        this.fValueStoreCache.getValueStoreFor(identityConstraint, i).startValueScope();
    }

    public void storeLocations(String str, String str2) {
        if (str != null && !XMLSchemaLoader.tokenizeSchemaLocationStr(str, this.fLocationPairs)) {
            this.fXSIErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "SchemaLocation", new Object[]{str}, (short) 0);
        }
        if (str2 != null) {
            Hashtable hashtable = this.fLocationPairs;
            String str3 = XMLSymbols.EMPTY_STRING;
            XMLSchemaLoader.LocationArray locationArray = (XMLSchemaLoader.LocationArray) hashtable.get(str3);
            if (locationArray == null) {
                locationArray = new XMLSchemaLoader.LocationArray();
                this.fLocationPairs.put(str3, locationArray);
            }
            locationArray.addLocation(str2);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.textDecl(str, str2, augmentations);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.xmlDecl(str, str2, str3, augmentations);
        }
    }

    /* loaded from: classes10.dex */
    public final class XSIErrorReporter {
        int fContextCount;
        XMLErrorReporter fErrorReporter;
        Vector fErrors = new Vector();
        int[] fContext = new int[8];

        public XSIErrorReporter() {
        }

        public String[] mergeContext() {
            if (!XMLSchemaValidator.this.fAugPSVI) {
                return null;
            }
            int[] iArr = this.fContext;
            int i = this.fContextCount - 1;
            this.fContextCount = i;
            int i2 = iArr[i];
            int size = this.fErrors.size() - i2;
            if (size == 0) {
                return null;
            }
            String[] strArr = new String[size];
            for (int i3 = 0; i3 < size; i3++) {
                strArr[i3] = (String) this.fErrors.elementAt(i2 + i3);
            }
            return strArr;
        }

        public String[] popContext() {
            if (!XMLSchemaValidator.this.fAugPSVI) {
                return null;
            }
            int[] iArr = this.fContext;
            int i = this.fContextCount - 1;
            this.fContextCount = i;
            int i2 = iArr[i];
            int size = this.fErrors.size() - i2;
            if (size == 0) {
                return null;
            }
            String[] strArr = new String[size];
            for (int i3 = 0; i3 < size; i3++) {
                strArr[i3] = (String) this.fErrors.elementAt(i2 + i3);
            }
            this.fErrors.setSize(i2);
            return strArr;
        }

        public void pushContext() {
            if (XMLSchemaValidator.this.fAugPSVI) {
                int i = this.fContextCount;
                int[] iArr = this.fContext;
                if (i == iArr.length) {
                    int[] iArr2 = new int[i + 8];
                    System.arraycopy(iArr, 0, iArr2, 0, i);
                    this.fContext = iArr2;
                }
                int[] iArr3 = this.fContext;
                int i2 = this.fContextCount;
                this.fContextCount = i2 + 1;
                iArr3[i2] = this.fErrors.size();
            }
        }

        public void reportError(String str, String str2, Object[] objArr, short s) throws XNIException {
            this.fErrorReporter.reportError(str, str2, objArr, s);
            if (XMLSchemaValidator.this.fAugPSVI) {
                this.fErrors.addElement(str2);
            }
        }

        public void reset(XMLErrorReporter xMLErrorReporter) {
            this.fErrorReporter = xMLErrorReporter;
            this.fErrors.removeAllElements();
            this.fContextCount = 0;
        }

        public void reportError(XMLLocator xMLLocator, String str, String str2, Object[] objArr, short s) throws XNIException {
            this.fErrorReporter.reportError(xMLLocator, str, str2, objArr, s);
            if (XMLSchemaValidator.this.fAugPSVI) {
                this.fErrors.addElement(str2);
            }
        }
    }

    /* loaded from: classes10.dex */
    public abstract class ValueStoreBase implements ValueStore {
        protected int fFieldCount;
        protected Field[] fFields;
        protected IdentityConstraint fIdentityConstraint;
        protected ShortList[] fLocalItemValueTypes;
        protected short[] fLocalValueTypes;
        protected Object[] fLocalValues;
        protected int fValuesCount;
        public final Vector fValues = new Vector();
        public ShortVector fValueTypes = null;
        public Vector fItemValueTypes = null;
        private boolean fUseValueTypeVector = false;
        private int fValueTypesLength = 0;
        private short fValueType = 0;
        private boolean fUseItemValueTypeVector = false;
        private int fItemValueTypesLength = 0;
        private ShortList fItemValueType = null;
        final StringBuffer fTempBuffer = new StringBuffer();

        public ValueStoreBase(IdentityConstraint identityConstraint) {
            this.fFieldCount = 0;
            this.fFields = null;
            this.fLocalValues = null;
            this.fLocalValueTypes = null;
            this.fLocalItemValueTypes = null;
            this.fIdentityConstraint = identityConstraint;
            int fieldCount = identityConstraint.getFieldCount();
            this.fFieldCount = fieldCount;
            this.fFields = new Field[fieldCount];
            this.fLocalValues = new Object[fieldCount];
            this.fLocalValueTypes = new short[fieldCount];
            this.fLocalItemValueTypes = new ShortList[fieldCount];
            for (int i = 0; i < this.fFieldCount; i++) {
                this.fFields[i] = this.fIdentityConstraint.getFieldAt(i);
            }
        }

        private void addItemValueType(ShortList shortList) {
            if (this.fUseItemValueTypeVector) {
                this.fItemValueTypes.add(shortList);
                return;
            }
            int i = this.fItemValueTypesLength;
            this.fItemValueTypesLength = i + 1;
            if (i == 0) {
                this.fItemValueType = shortList;
                return;
            }
            ShortList shortList2 = this.fItemValueType;
            if (shortList2 != shortList) {
                if (shortList2 == null || !shortList2.equals(shortList)) {
                    this.fUseItemValueTypeVector = true;
                    if (this.fItemValueTypes == null) {
                        this.fItemValueTypes = new Vector(this.fItemValueTypesLength * 2);
                    }
                    for (int i2 = 1; i2 < this.fItemValueTypesLength; i2++) {
                        this.fItemValueTypes.add(this.fItemValueType);
                    }
                    this.fItemValueTypes.add(shortList);
                }
            }
        }

        private void addValueType(short s) {
            if (this.fUseValueTypeVector) {
                this.fValueTypes.add(s);
                return;
            }
            int i = this.fValueTypesLength;
            int i2 = i + 1;
            this.fValueTypesLength = i2;
            if (i == 0) {
                this.fValueType = s;
                return;
            }
            if (this.fValueType != s) {
                this.fUseValueTypeVector = true;
                if (this.fValueTypes == null) {
                    this.fValueTypes = new ShortVector(i2 * 2);
                }
                for (int i3 = 1; i3 < this.fValueTypesLength; i3++) {
                    this.fValueTypes.add(this.fValueType);
                }
                this.fValueTypes.add(s);
            }
        }

        private ShortList getItemValueTypeAt(int i) {
            return this.fUseItemValueTypeVector ? (ShortList) this.fItemValueTypes.elementAt(i) : this.fItemValueType;
        }

        private short getValueTypeAt(int i) {
            return this.fUseValueTypeVector ? this.fValueTypes.valueAt(i) : this.fValueType;
        }

        private boolean itemValueTypeContains(ShortList shortList) {
            if (this.fUseItemValueTypeVector) {
                return this.fItemValueTypes.contains(shortList);
            }
            ShortList shortList2 = this.fItemValueType;
            return shortList2 == shortList || (shortList2 != null && shortList2.equals(shortList));
        }

        private boolean valueTypeContains(short s) {
            return this.fUseValueTypeVector ? this.fValueTypes.contains(s) : this.fValueType == s;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.ValueStore
        public void addValue(Field field, Object obj, short s, ShortList shortList) {
            int i = this.fFieldCount;
            do {
                i--;
                if (i <= -1) {
                    break;
                }
            } while (this.fFields[i] != field);
            if (i == -1) {
                XMLSchemaValidator.this.reportSchemaError("UnknownField", new Object[]{field.toString()});
                return;
            }
            if (Boolean.TRUE != XMLSchemaValidator.this.mayMatch(field)) {
                XMLSchemaValidator.this.reportSchemaError("FieldMultipleMatch", new Object[]{field.toString()});
            } else {
                this.fValuesCount++;
            }
            this.fLocalValues[i] = obj;
            this.fLocalValueTypes[i] = s;
            this.fLocalItemValueTypes[i] = shortList;
            if (this.fValuesCount == this.fFieldCount) {
                checkDuplicateValues();
                for (int i2 = 0; i2 < this.fFieldCount; i2++) {
                    this.fValues.addElement(this.fLocalValues[i2]);
                    addValueType(this.fLocalValueTypes[i2]);
                    addItemValueType(this.fLocalItemValueTypes[i2]);
                }
            }
        }

        public void append(ValueStoreBase valueStoreBase) {
            for (int i = 0; i < valueStoreBase.fValues.size(); i++) {
                this.fValues.addElement(valueStoreBase.fValues.elementAt(i));
            }
        }

        public void checkDuplicateValues() {
        }

        public void clear() {
            this.fValuesCount = 0;
            this.fUseValueTypeVector = false;
            this.fValueTypesLength = 0;
            this.fValueType = (short) 0;
            this.fUseItemValueTypeVector = false;
            this.fItemValueTypesLength = 0;
            this.fItemValueType = null;
            this.fValues.setSize(0);
            ShortVector shortVector = this.fValueTypes;
            if (shortVector != null) {
                shortVector.clear();
            }
            Vector vector = this.fItemValueTypes;
            if (vector != null) {
                vector.setSize(0);
            }
        }

        public boolean contains() {
            int size = this.fValues.size();
            int i = 0;
            while (i < size) {
                int i2 = this.fFieldCount + i;
                for (int i3 = 0; i3 < this.fFieldCount; i3++) {
                    Object obj = this.fLocalValues[i3];
                    Object elementAt = this.fValues.elementAt(i);
                    short s = this.fLocalValueTypes[i3];
                    short valueTypeAt = getValueTypeAt(i);
                    if (obj != null && elementAt != null && s == valueTypeAt && obj.equals(elementAt)) {
                        if (s == 44 || s == 43) {
                            ShortList shortList = this.fLocalItemValueTypes[i3];
                            ShortList itemValueTypeAt = getItemValueTypeAt(i);
                            if (shortList != null && itemValueTypeAt != null && shortList.equals(itemValueTypeAt)) {
                            }
                        }
                        i++;
                    }
                    i = i2;
                }
                return true;
            }
            return false;
        }

        public void endDocument() {
        }

        public void endDocumentFragment() {
        }

        public void endValueScope() {
            int i = this.fValuesCount;
            if (i == 0) {
                if (this.fIdentityConstraint.getCategory() == 1) {
                    XMLSchemaValidator.this.reportSchemaError("AbsentKeyValue", new Object[]{this.fIdentityConstraint.getElementName()});
                    return;
                }
                return;
            }
            if (i != this.fFieldCount) {
                short category = this.fIdentityConstraint.getCategory();
                if (category == 1) {
                    IdentityConstraint identityConstraint = this.fIdentityConstraint;
                    UniqueOrKey uniqueOrKey = (UniqueOrKey) identityConstraint;
                    XMLSchemaValidator.this.reportSchemaError("KeyNotEnoughValues", new Object[]{identityConstraint.getElementName(), uniqueOrKey.getIdentityConstraintName()});
                    return;
                }
                if (category != 2) {
                    if (category != 3) {
                        return;
                    }
                    XMLSchemaValidator.this.reportSchemaError("UniqueNotEnoughValues", new Object[]{this.fIdentityConstraint.getElementName()});
                    return;
                }
                IdentityConstraint identityConstraint2 = this.fIdentityConstraint;
                KeyRef keyRef = (KeyRef) identityConstraint2;
                XMLSchemaValidator.this.reportSchemaError("KeyRefNotEnoughValues", new Object[]{identityConstraint2.getElementName(), keyRef.getKey().getIdentityConstraintName()});
            }
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.identity.ValueStore
        public void reportError(String str, Object[] objArr) {
            XMLSchemaValidator.this.reportSchemaError(str, objArr);
        }

        public void startValueScope() {
            this.fValuesCount = 0;
            for (int i = 0; i < this.fFieldCount; i++) {
                this.fLocalValues[i] = null;
                this.fLocalValueTypes[i] = 0;
                this.fLocalItemValueTypes[i] = null;
            }
        }

        public String toString(Object[] objArr) {
            int length = objArr.length;
            if (length == 0) {
                return "";
            }
            this.fTempBuffer.setLength(0);
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    this.fTempBuffer.append(',');
                }
                this.fTempBuffer.append(objArr[i]);
            }
            return this.fTempBuffer.toString();
        }

        public String toString(Vector vector, int i, int i2) {
            if (i2 == 0) {
                return "";
            }
            if (i2 == 1) {
                return String.valueOf(vector.elementAt(i));
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (int i3 = 0; i3 < i2; i3++) {
                if (i3 > 0) {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(i + i3));
            }
            return stringBuffer.toString();
        }

        public String toString() {
            String obj = super.toString();
            int lastIndexOf = obj.lastIndexOf(36);
            if (lastIndexOf != -1) {
                obj = obj.substring(lastIndexOf + 1);
            }
            int lastIndexOf2 = obj.lastIndexOf(46);
            if (lastIndexOf2 != -1) {
                obj = obj.substring(lastIndexOf2 + 1);
            }
            return obj + '[' + this.fIdentityConstraint + ']';
        }

        /* JADX WARN: Code restructure failed: missing block: B:55:0x0092, code lost:
        
            r5 = r5 + r11;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int contains(com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.ValueStoreBase r17) {
            /*
                r16 = this;
                r0 = r16
                r1 = r17
                java.util.Vector r2 = r1.fValues
                int r3 = r2.size()
                int r4 = r0.fFieldCount
                r5 = 1
                r6 = 43
                r7 = 44
                if (r4 > r5) goto L40
                r8 = 0
            L14:
                if (r8 >= r3) goto L95
                short r4 = r1.getValueTypeAt(r8)
                boolean r5 = r0.valueTypeContains(r4)
                if (r5 == 0) goto L3f
                java.util.Vector r5 = r0.fValues
                java.lang.Object r9 = r2.elementAt(r8)
                boolean r5 = r5.contains(r9)
                if (r5 != 0) goto L2d
                goto L3f
            L2d:
                if (r4 == r7) goto L31
                if (r4 != r6) goto L3c
            L31:
                com.sun.org.apache.xerces.internal.xs.ShortList r4 = r1.getItemValueTypeAt(r8)
                boolean r4 = r0.itemValueTypeContains(r4)
                if (r4 != 0) goto L3c
                return r8
            L3c:
                int r8 = r8 + 1
                goto L14
            L3f:
                return r8
            L40:
                java.util.Vector r4 = r0.fValues
                int r4 = r4.size()
                r5 = 0
            L47:
                if (r5 >= r3) goto L95
                r9 = 0
            L4a:
                if (r9 >= r4) goto L94
                r10 = 0
            L4d:
                int r11 = r0.fFieldCount
                if (r10 >= r11) goto L92
                int r11 = r5 + r10
                java.lang.Object r12 = r2.elementAt(r11)
                java.util.Vector r13 = r0.fValues
                int r14 = r9 + r10
                java.lang.Object r13 = r13.elementAt(r14)
                short r15 = r1.getValueTypeAt(r11)
                short r8 = r0.getValueTypeAt(r14)
                if (r12 == r13) goto L74
                if (r15 != r8) goto L8e
                if (r12 == 0) goto L8e
                boolean r8 = r12.equals(r13)
                if (r8 != 0) goto L74
                goto L8e
            L74:
                if (r15 == r7) goto L78
                if (r15 != r6) goto L8b
            L78:
                com.sun.org.apache.xerces.internal.xs.ShortList r8 = r1.getItemValueTypeAt(r11)
                com.sun.org.apache.xerces.internal.xs.ShortList r11 = r0.getItemValueTypeAt(r14)
                if (r8 == 0) goto L8e
                if (r11 == 0) goto L8e
                boolean r8 = r8.equals(r11)
                if (r8 != 0) goto L8b
                goto L8e
            L8b:
                int r10 = r10 + 1
                goto L4d
            L8e:
                int r8 = r0.fFieldCount
                int r9 = r9 + r8
                goto L4a
            L92:
                int r5 = r5 + r11
                goto L47
            L94:
                return r5
            L95:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator.ValueStoreBase.contains(com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaValidator$ValueStoreBase):int");
        }
    }

    private void normalizeWhitespace(String str, boolean z) {
        XMLString xMLString;
        int i;
        int length = str.length();
        XMLString xMLString2 = this.fNormalizedStr;
        char[] cArr = xMLString2.f64120ch;
        if (cArr == null || cArr.length < length) {
            xMLString2.f64120ch = new char[length];
        }
        xMLString2.offset = 0;
        xMLString2.length = 0;
        boolean z2 = z;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (!XMLChar.isSpace(charAt)) {
                XMLString xMLString3 = this.fNormalizedStr;
                char[] cArr2 = xMLString3.f64120ch;
                int i3 = xMLString3.length;
                xMLString3.length = i3 + 1;
                cArr2[i3] = charAt;
                z2 = false;
            } else if (!z2) {
                XMLString xMLString4 = this.fNormalizedStr;
                char[] cArr3 = xMLString4.f64120ch;
                int i4 = xMLString4.length;
                xMLString4.length = i4 + 1;
                cArr3[i4] = ' ';
                z2 = z;
            }
        }
        if (!z2 || (i = (xMLString = this.fNormalizedStr).length) == 0) {
            return;
        }
        xMLString.length = i - 1;
    }
}
