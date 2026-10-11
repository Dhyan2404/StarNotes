package org.apache.xerces.impl.p117xs;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import java.util.Vector;
import org.apache.xerces.impl.RevalidationHandler;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.XMLSchemaLoader;
import org.apache.xerces.impl.p117xs.identity.Field;
import org.apache.xerces.impl.p117xs.identity.FieldActivator;
import org.apache.xerces.impl.p117xs.identity.IdentityConstraint;
import org.apache.xerces.impl.p117xs.identity.KeyRef;
import org.apache.xerces.impl.p117xs.identity.Selector;
import org.apache.xerces.impl.p117xs.identity.UniqueOrKey;
import org.apache.xerces.impl.p117xs.identity.ValueStore;
import org.apache.xerces.impl.p117xs.identity.XPathMatcher;
import org.apache.xerces.impl.p117xs.models.CMBuilder;
import org.apache.xerces.impl.p117xs.models.CMNodeFactory;
import org.apache.xerces.impl.p117xs.models.XSCMValidator;
import org.apache.xerces.impl.p117xs.util.XS10TypeHelper;
import org.apache.xerces.impl.validation.ConfigurableValidationState;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.impl.validation.ValidationState;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.AugmentationsImpl;
import org.apache.xerces.util.IntStack;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.URI;
import org.apache.xerces.util.XMLAttributesImpl;
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
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentFilter;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes13.dex */
public class XMLSchemaValidator implements XMLComponent, XMLDocumentFilter, FieldActivator, RevalidationHandler, XSElementDeclHelper {
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    public static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    public static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GENERATE_SYNTHETIC_ANNOTATIONS = "http://apache.org/xml/features/generate-synthetic-annotations";
    protected static final String IDENTITY_CONSTRAINT_CHECKING = "http://apache.org/xml/features/validation/identity-constraint-checking";
    protected static final int ID_CONSTRAINT_NUM = 1;
    protected static final String ID_IDREF_CHECKING = "http://apache.org/xml/features/validation/id-idref-checking";
    protected static final String IGNORE_XSI_TYPE = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl";
    protected static final String JAXP_SCHEMA_LANGUAGE = "http://java.sun.com/xml/jaxp/properties/schemaLanguage";
    protected static final String JAXP_SCHEMA_SOURCE = "http://java.sun.com/xml/jaxp/properties/schemaSource";
    protected static final String NORMALIZE_DATA = "http://apache.org/xml/features/validation/schema/normalized-value";
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";

    /* renamed from: Q0 */
    public static final boolean f112768Q0 = false;
    protected static final String SCHEMA_AUGMENT_PSVI = "http://apache.org/xml/features/validation/schema/augment-psvi";
    protected static final String SCHEMA_ELEMENT_DEFAULT = "http://apache.org/xml/features/validation/schema/element-default";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String SCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    public static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String UNPARSED_ENTITY_CHECKING = "http://apache.org/xml/features/validation/unparsed-entity-checking";
    protected static final String USE_GRAMMAR_POOL_ONLY = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";

    /* renamed from: V0 */
    public static final XSAttributeDecl f112773V0;
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";
    protected static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";

    /* renamed from: W0 */
    public static final XSAttributeDecl f112774W0;

    /* renamed from: X0 */
    public static final XSAttributeDecl f112775X0;
    public static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";

    /* renamed from: Y0 */
    public static final XSAttributeDecl f112776Y0;

    /* renamed from: Z0 */
    public static final Hashtable f112777Z0;

    /* renamed from: a1 */
    public static final int f112778a1 = 8;

    /* renamed from: b1 */
    public static final int f112779b1 = 8;

    /* renamed from: c1 */
    public static final boolean f112780c1 = false;

    /* renamed from: d1 */
    public static final int f112781d1 = 20;

    /* renamed from: A0 */
    public final StringBuffer f112782A0;

    /* renamed from: B0 */
    public boolean f112783B0;

    /* renamed from: C0 */
    public boolean f112784C0;

    /* renamed from: D0 */
    public boolean[] f112785D0;

    /* renamed from: E0 */
    public boolean f112786E0;

    /* renamed from: F0 */
    public boolean[] f112787F0;

    /* renamed from: G0 */
    public final QName f112788G0;

    /* renamed from: H0 */
    public javax.xml.namespace.QName f112789H0;

    /* renamed from: I0 */
    public XSTypeDefinition f112790I0;

    /* renamed from: J */
    public XSElementDecl[] f112791J;

    /* renamed from: J0 */
    public javax.xml.namespace.QName f112792J0;

    /* renamed from: K0 */
    public XSElementDecl f112793K0;

    /* renamed from: L0 */
    public int f112794L0;

    /* renamed from: M0 */
    public boolean f112795M0;

    /* renamed from: N0 */
    public ValidatedInfo f112796N0;

    /* renamed from: O */
    public boolean f112797O;

    /* renamed from: O0 */
    public ValidationState f112798O0;

    /* renamed from: P0 */
    public ValidationState f112799P0;

    /* renamed from: Q */
    public boolean[] f112800Q;

    /* renamed from: Z */
    public XSNotationDecl f112801Z;

    /* renamed from: f */
    public XMLLocator f112803f;
    protected XMLString fDefaultValue;
    protected XMLDocumentHandler fDocumentHandler;
    protected XMLDocumentSource fDocumentSource;
    protected XMLEntityResolver fEntityResolver;
    protected final Hashtable fExpandedLocationPairs;
    protected String fExternalNoNamespaceSchema;
    protected String fExternalSchemas;
    protected XMLGrammarPool fGrammarPool;
    protected Object fJaxpSchemaSource;
    protected final Hashtable fLocationPairs;
    protected XPathMatcherStack fMatcherStack;
    protected SymbolTable fSymbolTable;
    protected final ArrayList fUnparsedLocations;
    protected ValidationManager fValidationManager;
    protected ConfigurableValidationState fValidationState;
    protected ValueStoreCache fValueStoreCache;
    protected final XSDDescription fXSDDescription;
    protected final XSIErrorReporter fXSIErrorReporter;

    /* renamed from: g */
    public final XMLString f112804g;

    /* renamed from: h */
    public final XMLString f112805h;

    /* renamed from: i */
    public boolean f112806i;

    /* renamed from: j */
    public boolean f112807j;

    /* renamed from: k */
    public short f112808k;

    /* renamed from: k0 */
    public XSNotationDecl[] f112809k0;

    /* renamed from: l */
    public boolean f112810l;

    /* renamed from: m */
    public final XSGrammarBucket f112811m;

    /* renamed from: n */
    public final SubstitutionGroupHandler f112812n;

    /* renamed from: o */
    public final XSSimpleType f112813o;

    /* renamed from: p */
    public final CMNodeFactory f112814p;

    /* renamed from: q */
    public final CMBuilder f112815q;

    /* renamed from: q0 */
    public XSTypeDefinition f112816q0;

    /* renamed from: r */
    public final XMLSchemaLoader f112817r;

    /* renamed from: s */
    public String f112818s;

    /* renamed from: t */
    public int f112819t;

    /* renamed from: t0 */
    public XSTypeDefinition[] f112820t0;

    /* renamed from: u */
    public int f112821u;

    /* renamed from: u0 */
    public XSCMValidator f112822u0;

    /* renamed from: v */
    public int f112823v;

    /* renamed from: v0 */
    public XSCMValidator[] f112824v0;

    /* renamed from: w */
    public int f112825w;

    /* renamed from: w0 */
    public int[] f112826w0;

    /* renamed from: x */
    public boolean f112827x;

    /* renamed from: x0 */
    public int[][] f112828x0;

    /* renamed from: y */
    public boolean[] f112829y;

    /* renamed from: y0 */
    public boolean f112830y0;

    /* renamed from: z */
    public XSElementDecl f112831z;

    /* renamed from: z0 */
    public boolean[] f112832z0;
    protected static final String DYNAMIC_VALIDATION = "http://apache.org/xml/features/validation/dynamic";
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    protected static final String STANDARD_URI_CONFORMANT_FEATURE = "http://apache.org/xml/features/standard-uri-conformant";
    protected static final String VALIDATE_ANNOTATIONS = "http://apache.org/xml/features/validate-annotations";
    protected static final String HONOUR_ALL_SCHEMALOCATIONS = "http://apache.org/xml/features/honour-all-schemaLocations";
    protected static final String NAMESPACE_GROWTH = "http://apache.org/xml/features/namespace-growth";
    protected static final String TOLERATE_DUPLICATES = "http://apache.org/xml/features/internal/tolerate-duplicates";

    /* renamed from: R0 */
    public static final String[] f112769R0 = {"http://xml.org/sax/features/validation", "http://apache.org/xml/features/validation/schema", DYNAMIC_VALIDATION, "http://apache.org/xml/features/validation/schema-full-checking", ALLOW_JAVA_ENCODINGS, "http://apache.org/xml/features/continue-after-fatal-error", STANDARD_URI_CONFORMANT_FEATURE, "http://apache.org/xml/features/generate-synthetic-annotations", VALIDATE_ANNOTATIONS, HONOUR_ALL_SCHEMALOCATIONS, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only", "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl", "http://apache.org/xml/features/validation/id-idref-checking", "http://apache.org/xml/features/validation/identity-constraint-checking", "http://apache.org/xml/features/validation/unparsed-entity-checking", NAMESPACE_GROWTH, TOLERATE_DUPLICATES};

    /* renamed from: S0 */
    public static final Boolean[] f112770S0 = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null};
    protected static final String SCHEMA_LOCATION = "http://apache.org/xml/properties/schema/external-schemaLocation";
    protected static final String SCHEMA_NONS_LOCATION = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
    protected static final String ROOT_TYPE_DEF = "http://apache.org/xml/properties/validation/schema/root-type-definition";
    protected static final String ROOT_ELEMENT_DECL = "http://apache.org/xml/properties/validation/schema/root-element-declaration";
    protected static final String SCHEMA_DV_FACTORY = "http://apache.org/xml/properties/internal/validation/schema/dv-factory";

    /* renamed from: T0 */
    public static final String[] f112771T0 = {"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/validation-manager", SCHEMA_LOCATION, SCHEMA_NONS_LOCATION, "http://java.sun.com/xml/jaxp/properties/schemaSource", "http://java.sun.com/xml/jaxp/properties/schemaLanguage", ROOT_TYPE_DEF, ROOT_ELEMENT_DECL, SCHEMA_DV_FACTORY};

    /* renamed from: U0 */
    public static final Object[] f112772U0 = {null, null, null, null, null, null, null, null, null, null, null};
    protected ElementPSVImpl fCurrentPSVI = new ElementPSVImpl();
    protected final AugmentationsImpl fAugmentations = new AugmentationsImpl();
    protected boolean fDynamicValidation = false;
    protected boolean fSchemaDynamicValidation = false;
    protected boolean fDoValidation = false;
    protected boolean fFullChecking = false;
    protected boolean fNormalizeData = true;
    protected boolean fSchemaElementDefault = true;
    protected boolean fAugPSVI = true;
    protected boolean fIdConstraint = false;
    protected boolean fUseGrammarPoolOnly = false;
    protected boolean fNamespaceGrowth = false;

    /* renamed from: e */
    public String f112802e = null;
    protected boolean fEntityRef = false;
    protected boolean fInCDATA = false;

    /* loaded from: classes13.dex */
    public class KeyRefValueStore extends ValueStoreBase {
        protected ValueStoreBase fKeyValueStore;

        /* renamed from: i */
        public final /* synthetic */ XMLSchemaValidator f112833i;

        public KeyRefValueStore(XMLSchemaValidator xMLSchemaValidator, KeyRef keyRef, KeyValueStore keyValueStore) {
            super(keyRef);
            this.f112833i = xMLSchemaValidator;
            this.fKeyValueStore = keyValueStore;
        }

        @Override // org.apache.xerces.impl.xs.XMLSchemaValidator.ValueStoreBase
        public void endDocument() {
            super.endDocument();
        }

        @Override // org.apache.xerces.impl.xs.XMLSchemaValidator.ValueStoreBase
        public void endDocumentFragment() {
            super.endDocumentFragment();
            ValueStoreBase valueStoreBase = (ValueStoreBase) this.f112833i.fValueStoreCache.fGlobalIDConstraintMap.get(((KeyRef) this.fIdentityConstraint).getKey());
            this.fKeyValueStore = valueStoreBase;
            if (valueStoreBase == null) {
                this.f112833i.m70172Q("KeyRefOutOfScope", new Object[]{this.fIdentityConstraint.toString()});
                return;
            }
            int contains = valueStoreBase.contains(this);
            if (contains != -1) {
                String valueStoreBase2 = toString(this.fValues, contains, this.fFieldCount);
                String elementName = this.fIdentityConstraint.getElementName();
                this.f112833i.m70172Q("KeyNotFound", new Object[]{this.fIdentityConstraint.getName(), valueStoreBase2, elementName});
            }
        }
    }

    /* loaded from: classes13.dex */
    public class KeyValueStore extends ValueStoreBase {

        /* renamed from: i */
        public final /* synthetic */ XMLSchemaValidator f112834i;

        public KeyValueStore(XMLSchemaValidator xMLSchemaValidator, UniqueOrKey uniqueOrKey) {
            super(uniqueOrKey);
            this.f112834i = xMLSchemaValidator;
        }

        @Override // org.apache.xerces.impl.xs.XMLSchemaValidator.ValueStoreBase
        public void checkDuplicateValues() {
            if (contains()) {
                this.f112834i.m70172Q("DuplicateKey", new Object[]{toString(this.fLocalValues), this.fIdentityConstraint.getElementName(), this.fIdentityConstraint.getIdentityConstraintName()});
            }
        }
    }

    /* loaded from: classes13.dex */
    public static final class LocalIDKey {
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

    /* loaded from: classes13.dex */
    public static final class ShortVector {

        /* renamed from: a */
        public int f112835a;

        /* renamed from: b */
        public short[] f112836b;

        public ShortVector() {
        }

        /* renamed from: a */
        public final void m70186a(int i) {
            short[] sArr = this.f112836b;
            if (sArr == null) {
                this.f112836b = new short[8];
            } else if (sArr.length <= i) {
                short[] sArr2 = new short[sArr.length * 2];
                System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
                this.f112836b = sArr2;
            }
        }

        public void add(short s) {
            m70186a(this.f112835a + 1);
            short[] sArr = this.f112836b;
            int i = this.f112835a;
            this.f112835a = i + 1;
            sArr[i] = s;
        }

        public void clear() {
            this.f112835a = 0;
        }

        public boolean contains(short s) {
            for (int i = 0; i < this.f112835a; i++) {
                if (this.f112836b[i] == s) {
                    return true;
                }
            }
            return false;
        }

        public int length() {
            return this.f112835a;
        }

        public short valueAt(int i) {
            return this.f112836b[i];
        }

        public ShortVector(int i) {
            this.f112836b = new short[i];
        }
    }

    /* loaded from: classes13.dex */
    public class UniqueValueStore extends ValueStoreBase {

        /* renamed from: i */
        public final /* synthetic */ XMLSchemaValidator f112837i;

        public UniqueValueStore(XMLSchemaValidator xMLSchemaValidator, UniqueOrKey uniqueOrKey) {
            super(uniqueOrKey);
            this.f112837i = xMLSchemaValidator;
        }

        @Override // org.apache.xerces.impl.xs.XMLSchemaValidator.ValueStoreBase
        public void checkDuplicateValues() {
            if (contains()) {
                this.f112837i.m70172Q("DuplicateUnique", new Object[]{toString(this.fLocalValues), this.fIdentityConstraint.getElementName(), this.fIdentityConstraint.getIdentityConstraintName()});
            }
        }
    }

    /* loaded from: classes13.dex */
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

        /* renamed from: a */
        public boolean f112838a = false;

        /* renamed from: b */
        public int f112839b = 0;

        /* renamed from: c */
        public short f112840c = 0;

        /* renamed from: d */
        public boolean f112841d = false;

        /* renamed from: e */
        public int f112842e = 0;

        /* renamed from: f */
        public ShortList f112843f = null;

        /* renamed from: g */
        public final StringBuffer f112844g = new StringBuffer();

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

        /* renamed from: a */
        public final void m70187a(ShortList shortList) {
            if (!this.f112841d) {
                int i = this.f112842e;
                this.f112842e = i + 1;
                if (i == 0) {
                    this.f112843f = shortList;
                    return;
                }
                ShortList shortList2 = this.f112843f;
                if (shortList2 == shortList) {
                    return;
                }
                if (shortList2 != null && shortList2.equals(shortList)) {
                    return;
                }
                this.f112841d = true;
                if (this.fItemValueTypes == null) {
                    this.fItemValueTypes = new Vector(this.f112842e * 2);
                }
                for (int i2 = 1; i2 < this.f112842e; i2++) {
                    this.fItemValueTypes.add(this.f112843f);
                }
            }
            this.fItemValueTypes.add(shortList);
        }

        @Override // org.apache.xerces.impl.p117xs.identity.ValueStore
        public void addValue(Field field, boolean z, Object obj, short s, ShortList shortList) {
            int i = this.fFieldCount;
            do {
                i--;
                if (i <= -1) {
                    break;
                }
            } while (this.fFields[i] != field);
            if (i == -1) {
                XMLSchemaValidator.this.m70172Q("UnknownField", new Object[]{field.toString(), this.fIdentityConstraint.getElementName(), this.fIdentityConstraint.getIdentityConstraintName()});
                return;
            }
            if (z) {
                this.fValuesCount++;
            } else {
                XMLSchemaValidator.this.m70172Q("FieldMultipleMatch", new Object[]{field.toString(), this.fIdentityConstraint.getIdentityConstraintName()});
            }
            this.fLocalValues[i] = obj;
            this.fLocalValueTypes[i] = s;
            this.fLocalItemValueTypes[i] = shortList;
            if (this.fValuesCount == this.fFieldCount) {
                checkDuplicateValues();
                for (int i2 = 0; i2 < this.fFieldCount; i2++) {
                    this.fValues.addElement(this.fLocalValues[i2]);
                    m70188b(this.fLocalValueTypes[i2]);
                    m70187a(this.fLocalItemValueTypes[i2]);
                }
            }
        }

        public void append(ValueStoreBase valueStoreBase) {
            for (int i = 0; i < valueStoreBase.fValues.size(); i++) {
                this.fValues.addElement(valueStoreBase.fValues.elementAt(i));
            }
        }

        /* renamed from: b */
        public final void m70188b(short s) {
            if (!this.f112838a) {
                int i = this.f112839b;
                int i2 = i + 1;
                this.f112839b = i2;
                if (i == 0) {
                    this.f112840c = s;
                    return;
                }
                if (this.f112840c == s) {
                    return;
                }
                this.f112838a = true;
                if (this.fValueTypes == null) {
                    this.fValueTypes = new ShortVector(i2 * 2);
                }
                for (int i3 = 1; i3 < this.f112839b; i3++) {
                    this.fValueTypes.add(this.f112840c);
                }
            }
            this.fValueTypes.add(s);
        }

        /* renamed from: c */
        public final ShortList m70189c(int i) {
            return this.f112841d ? (ShortList) this.fItemValueTypes.elementAt(i) : this.f112843f;
        }

        public void checkDuplicateValues() {
        }

        public void clear() {
            this.fValuesCount = 0;
            this.f112838a = false;
            this.f112839b = 0;
            this.f112840c = (short) 0;
            this.f112841d = false;
            this.f112842e = 0;
            this.f112843f = null;
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

        /* JADX WARN: Code restructure failed: missing block: B:55:0x0055, code lost:
        
            r5 = r5 + r11;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int contains(org.apache.xerces.impl.xs.XMLSchemaValidator.ValueStoreBase r17) {
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
                if (r4 > r5) goto L41
                r8 = 0
            L14:
                if (r8 < r3) goto L17
                goto L4a
            L17:
                short r4 = r1.m70190d(r8)
                boolean r5 = r0.m70192f(r4)
                if (r5 == 0) goto L40
                java.util.Vector r5 = r0.fValues
                java.lang.Object r9 = r2.elementAt(r8)
                boolean r5 = r5.contains(r9)
                if (r5 != 0) goto L2e
                goto L40
            L2e:
                if (r4 == r7) goto L32
                if (r4 != r6) goto L3d
            L32:
                org.apache.xerces.xs.ShortList r4 = r1.m70189c(r8)
                boolean r4 = r0.m70191e(r4)
                if (r4 != 0) goto L3d
                return r8
            L3d:
                int r8 = r8 + 1
                goto L14
            L40:
                return r8
            L41:
                java.util.Vector r4 = r0.fValues
                int r4 = r4.size()
                r5 = 0
            L48:
                if (r5 < r3) goto L4c
            L4a:
                r0 = -1
                return r0
            L4c:
                r9 = 0
            L4d:
                if (r9 < r4) goto L50
                return r5
            L50:
                r10 = 0
            L51:
                int r11 = r0.fFieldCount
                if (r10 < r11) goto L57
                int r5 = r5 + r11
                goto L48
            L57:
                int r11 = r5 + r10
                java.lang.Object r12 = r2.elementAt(r11)
                java.util.Vector r13 = r0.fValues
                int r14 = r9 + r10
                java.lang.Object r13 = r13.elementAt(r14)
                short r15 = r1.m70190d(r11)
                short r8 = r0.m70190d(r14)
                if (r12 == r13) goto L7a
                if (r15 != r8) goto L94
                if (r12 == 0) goto L94
                boolean r8 = r12.equals(r13)
                if (r8 != 0) goto L7a
                goto L94
            L7a:
                if (r15 == r7) goto L7e
                if (r15 != r6) goto L91
            L7e:
                org.apache.xerces.xs.ShortList r8 = r1.m70189c(r11)
                org.apache.xerces.xs.ShortList r11 = r0.m70189c(r14)
                if (r8 == 0) goto L94
                if (r11 == 0) goto L94
                boolean r8 = r8.equals(r11)
                if (r8 != 0) goto L91
                goto L94
            L91:
                int r10 = r10 + 1
                goto L51
            L94:
                int r8 = r0.fFieldCount
                int r9 = r9 + r8
                goto L4d
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xs.XMLSchemaValidator.ValueStoreBase.contains(org.apache.xerces.impl.xs.XMLSchemaValidator$ValueStoreBase):int");
        }

        /* renamed from: d */
        public final short m70190d(int i) {
            return this.f112838a ? this.fValueTypes.valueAt(i) : this.f112840c;
        }

        /* renamed from: e */
        public final boolean m70191e(ShortList shortList) {
            if (this.f112841d) {
                return this.fItemValueTypes.contains(shortList);
            }
            ShortList shortList2 = this.f112843f;
            return shortList2 == shortList || (shortList2 != null && shortList2.equals(shortList));
        }

        public void endDocument() {
        }

        public void endDocumentFragment() {
        }

        public void endValueScope() {
            int i = this.fValuesCount;
            if (i == 0) {
                if (this.fIdentityConstraint.getCategory() == 1) {
                    XMLSchemaValidator.this.m70172Q("AbsentKeyValue", new Object[]{this.fIdentityConstraint.getElementName(), this.fIdentityConstraint.getIdentityConstraintName()});
                    return;
                }
                return;
            }
            if (i == this.fFieldCount || this.fIdentityConstraint.getCategory() != 1) {
                return;
            }
            IdentityConstraint identityConstraint = this.fIdentityConstraint;
            UniqueOrKey uniqueOrKey = (UniqueOrKey) identityConstraint;
            XMLSchemaValidator.this.m70172Q("KeyNotEnoughValues", new Object[]{identityConstraint.getElementName(), uniqueOrKey.getIdentityConstraintName()});
        }

        /* renamed from: f */
        public final boolean m70192f(short s) {
            return this.f112838a ? this.fValueTypes.contains(s) : this.f112840c == s;
        }

        @Override // org.apache.xerces.impl.p117xs.identity.ValueStore
        public void reportError(String str, Object[] objArr) {
            XMLSchemaValidator.this.m70172Q(str, objArr);
        }

        public void startValueScope() {
            this.fValuesCount = 0;
            for (int i = 0; i < this.fFieldCount; i++) {
                this.fLocalValues[i] = null;
                this.fLocalValueTypes[i] = 0;
                this.fLocalItemValueTypes[i] = null;
            }
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
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(obj);
            stringBuffer.append('[');
            stringBuffer.append(this.fIdentityConstraint);
            stringBuffer.append(']');
            return stringBuffer.toString();
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
                    short m70190d = m70190d(i);
                    if (obj != null && elementAt != null && s == m70190d && obj.equals(elementAt)) {
                        if (s == 44 || s == 43) {
                            ShortList shortList = this.fLocalItemValueTypes[i3];
                            ShortList m70189c = m70189c(i);
                            if (shortList != null && m70189c != null && shortList.equals(m70189c)) {
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

        public String toString(Object[] objArr) {
            int length = objArr.length;
            if (length == 0) {
                return "";
            }
            this.f112844g.setLength(0);
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    this.f112844g.append(',');
                }
                this.f112844g.append(objArr[i]);
            }
            return this.f112844g.toString();
        }
    }

    /* loaded from: classes13.dex */
    public class ValueStoreCache {

        /* renamed from: a */
        public final LocalIDKey f112846a = new LocalIDKey();
        protected final ArrayList fValueStores = new ArrayList();
        protected final HashMap fIdentityConstraint2ValueStoreMap = new HashMap();
        protected final Stack fGlobalMapStack = new Stack();
        protected final HashMap fGlobalIDConstraintMap = new HashMap();

        public ValueStoreCache() {
        }

        public void endDocument() {
            int size = this.fValueStores.size();
            for (int i = 0; i < size; i++) {
                ((ValueStoreBase) this.fValueStores.get(i)).endDocument();
            }
        }

        public void endElement() {
            HashMap hashMap;
            if (this.fGlobalMapStack.isEmpty() || (hashMap = (HashMap) this.fGlobalMapStack.pop()) == null) {
                return;
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                IdentityConstraint identityConstraint = (IdentityConstraint) entry.getKey();
                ValueStoreBase valueStoreBase = (ValueStoreBase) entry.getValue();
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
            LocalIDKey localIDKey = this.f112846a;
            localIDKey.fDepth = i;
            localIDKey.fId = identityConstraint;
            return (ValueStoreBase) this.fIdentityConstraint2ValueStoreMap.get(localIDKey);
        }

        public void initValueStoresFor(XSElementDecl xSElementDecl, FieldActivator fieldActivator) {
            XMLSchemaValidator xMLSchemaValidator;
            IdentityConstraint identityConstraint;
            IdentityConstraint[] identityConstraintArr = xSElementDecl.f112921h;
            int i = xSElementDecl.f112920g;
            for (int i2 = 0; i2 < i; i2++) {
                short category = identityConstraintArr[i2].getCategory();
                if (category == 1) {
                    UniqueOrKey uniqueOrKey = (UniqueOrKey) identityConstraintArr[i2];
                    LocalIDKey localIDKey = new LocalIDKey(uniqueOrKey, XMLSchemaValidator.this.f112825w);
                    KeyValueStore keyValueStore = (KeyValueStore) this.fIdentityConstraint2ValueStoreMap.get(localIDKey);
                    if (keyValueStore == null) {
                        keyValueStore = new KeyValueStore(XMLSchemaValidator.this, uniqueOrKey);
                        this.fIdentityConstraint2ValueStoreMap.put(localIDKey, keyValueStore);
                    } else {
                        keyValueStore.clear();
                    }
                    this.fValueStores.add(keyValueStore);
                    xMLSchemaValidator = XMLSchemaValidator.this;
                    identityConstraint = identityConstraintArr[i2];
                } else if (category == 2) {
                    KeyRef keyRef = (KeyRef) identityConstraintArr[i2];
                    LocalIDKey localIDKey2 = new LocalIDKey(keyRef, XMLSchemaValidator.this.f112825w);
                    KeyRefValueStore keyRefValueStore = (KeyRefValueStore) this.fIdentityConstraint2ValueStoreMap.get(localIDKey2);
                    if (keyRefValueStore == null) {
                        keyRefValueStore = new KeyRefValueStore(XMLSchemaValidator.this, keyRef, null);
                        this.fIdentityConstraint2ValueStoreMap.put(localIDKey2, keyRefValueStore);
                    } else {
                        keyRefValueStore.clear();
                    }
                    this.fValueStores.add(keyRefValueStore);
                    xMLSchemaValidator = XMLSchemaValidator.this;
                    identityConstraint = identityConstraintArr[i2];
                } else if (category == 3) {
                    UniqueOrKey uniqueOrKey2 = (UniqueOrKey) identityConstraintArr[i2];
                    LocalIDKey localIDKey3 = new LocalIDKey(uniqueOrKey2, XMLSchemaValidator.this.f112825w);
                    UniqueValueStore uniqueValueStore = (UniqueValueStore) this.fIdentityConstraint2ValueStoreMap.get(localIDKey3);
                    if (uniqueValueStore == null) {
                        uniqueValueStore = new UniqueValueStore(XMLSchemaValidator.this, uniqueOrKey2);
                        this.fIdentityConstraint2ValueStoreMap.put(localIDKey3, uniqueValueStore);
                    } else {
                        uniqueValueStore.clear();
                    }
                    this.fValueStores.add(uniqueValueStore);
                    xMLSchemaValidator = XMLSchemaValidator.this;
                    identityConstraint = identityConstraintArr[i2];
                }
                xMLSchemaValidator.m70176q(identityConstraint);
            }
        }

        public void startDocument() {
            this.fValueStores.clear();
            this.fIdentityConstraint2ValueStoreMap.clear();
            this.fGlobalIDConstraintMap.clear();
            this.fGlobalMapStack.removeAllElements();
        }

        public void startElement() {
            Stack stack;
            Object obj;
            if (this.fGlobalIDConstraintMap.size() > 0) {
                stack = this.fGlobalMapStack;
                obj = this.fGlobalIDConstraintMap.clone();
            } else {
                stack = this.fGlobalMapStack;
                obj = null;
            }
            stack.push(obj);
            this.fGlobalIDConstraintMap.clear();
        }

        public String toString() {
            String obj = super.toString();
            int lastIndexOf = obj.lastIndexOf(36);
            return (lastIndexOf == -1 && (lastIndexOf = obj.lastIndexOf(46)) == -1) ? obj : obj.substring(lastIndexOf + 1);
        }

        public void transplant(IdentityConstraint identityConstraint, int i) {
            LocalIDKey localIDKey = this.f112846a;
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

    /* loaded from: classes13.dex */
    public static class XPathMatcherStack {
        protected int fMatchersCount;
        protected XPathMatcher[] fMatchers = new XPathMatcher[4];
        protected IntStack fContextStack = new IntStack();

        /* renamed from: a */
        public final void m70193a() {
            int i = this.fMatchersCount;
            XPathMatcher[] xPathMatcherArr = this.fMatchers;
            if (i == xPathMatcherArr.length) {
                XPathMatcher[] xPathMatcherArr2 = new XPathMatcher[xPathMatcherArr.length * 2];
                System.arraycopy(xPathMatcherArr, 0, xPathMatcherArr2, 0, xPathMatcherArr.length);
                this.fMatchers = xPathMatcherArr2;
            }
        }

        public void addMatcher(XPathMatcher xPathMatcher) {
            m70193a();
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

    /* loaded from: classes13.dex */
    public final class XSIErrorReporter {

        /* renamed from: a */
        public XMLErrorReporter f112848a;

        /* renamed from: b */
        public Vector f112849b = new Vector();

        /* renamed from: c */
        public int[] f112850c = new int[8];

        /* renamed from: d */
        public int f112851d;

        public XSIErrorReporter() {
        }

        public String[] mergeContext() {
            if (!XMLSchemaValidator.this.fAugPSVI) {
                return null;
            }
            int[] iArr = this.f112850c;
            int i = this.f112851d - 1;
            this.f112851d = i;
            int i2 = iArr[i];
            int size = this.f112849b.size() - i2;
            if (size == 0) {
                return null;
            }
            String[] strArr = new String[size];
            for (int i3 = 0; i3 < size; i3++) {
                strArr[i3] = (String) this.f112849b.elementAt(i2 + i3);
            }
            return strArr;
        }

        public String[] popContext() {
            if (!XMLSchemaValidator.this.fAugPSVI) {
                return null;
            }
            int[] iArr = this.f112850c;
            int i = this.f112851d - 1;
            this.f112851d = i;
            int i2 = iArr[i];
            int size = this.f112849b.size() - i2;
            if (size == 0) {
                return null;
            }
            String[] strArr = new String[size];
            for (int i3 = 0; i3 < size; i3++) {
                strArr[i3] = (String) this.f112849b.elementAt(i2 + i3);
            }
            this.f112849b.setSize(i2);
            return strArr;
        }

        public void pushContext() {
            if (XMLSchemaValidator.this.fAugPSVI) {
                int i = this.f112851d;
                int[] iArr = this.f112850c;
                if (i == iArr.length) {
                    int[] iArr2 = new int[i + 8];
                    System.arraycopy(iArr, 0, iArr2, 0, i);
                    this.f112850c = iArr2;
                }
                int[] iArr3 = this.f112850c;
                int i2 = this.f112851d;
                this.f112851d = i2 + 1;
                iArr3[i2] = this.f112849b.size();
            }
        }

        public void reportError(String str, String str2, Object[] objArr, short s) throws XNIException {
            String reportError = this.f112848a.reportError(str, str2, objArr, s);
            if (XMLSchemaValidator.this.fAugPSVI) {
                this.f112849b.addElement(str2);
                this.f112849b.addElement(reportError);
            }
        }

        public void reset(XMLErrorReporter xMLErrorReporter) {
            this.f112848a = xMLErrorReporter;
            this.f112849b.removeAllElements();
            this.f112851d = 0;
        }

        public void reportError(XMLLocator xMLLocator, String str, String str2, Object[] objArr, short s) throws XNIException {
            String reportError = this.f112848a.reportError(xMLLocator, str, str2, objArr, s);
            if (XMLSchemaValidator.this.fAugPSVI) {
                this.f112849b.addElement(str2);
                this.f112849b.addElement(reportError);
            }
        }
    }

    static {
        SchemaGrammar.BuiltinSchemaGrammar builtinSchemaGrammar = SchemaGrammar.SG_XSI;
        f112773V0 = builtinSchemaGrammar.getGlobalAttributeDecl(SchemaSymbols.XSI_TYPE);
        f112774W0 = builtinSchemaGrammar.getGlobalAttributeDecl(SchemaSymbols.XSI_NIL);
        f112775X0 = builtinSchemaGrammar.getGlobalAttributeDecl(SchemaSymbols.XSI_SCHEMALOCATION);
        f112776Y0 = builtinSchemaGrammar.getGlobalAttributeDecl(SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION);
        f112777Z0 = new Hashtable();
    }

    public XMLSchemaValidator() {
        XSIErrorReporter xSIErrorReporter = new XSIErrorReporter();
        this.fXSIErrorReporter = xSIErrorReporter;
        this.fValidationManager = null;
        this.fValidationState = new ConfigurableValidationState();
        this.fExternalSchemas = null;
        this.fExternalNoNamespaceSchema = null;
        this.fJaxpSchemaSource = null;
        this.fXSDDescription = new XSDDescription();
        this.fLocationPairs = new Hashtable();
        this.fExpandedLocationPairs = new Hashtable();
        this.fUnparsedLocations = new ArrayList();
        this.f112804g = new XMLString(null, 0, -1);
        this.f112805h = new XMLString();
        this.f112806i = true;
        this.f112807j = false;
        this.f112808k = (short) -1;
        this.f112810l = false;
        XSGrammarBucket xSGrammarBucket = new XSGrammarBucket();
        this.f112811m = xSGrammarBucket;
        SubstitutionGroupHandler substitutionGroupHandler = new SubstitutionGroupHandler(this);
        this.f112812n = substitutionGroupHandler;
        this.f112813o = (XSSimpleType) SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl("QName");
        CMNodeFactory cMNodeFactory = new CMNodeFactory();
        this.f112814p = cMNodeFactory;
        CMBuilder cMBuilder = new CMBuilder(cMNodeFactory);
        this.f112815q = cMBuilder;
        this.f112817r = new XMLSchemaLoader(xSIErrorReporter.f112848a, xSGrammarBucket, substitutionGroupHandler, cMBuilder);
        this.f112829y = new boolean[8];
        this.f112791J = new XSElementDecl[8];
        this.f112800Q = new boolean[8];
        this.f112809k0 = new XSNotationDecl[8];
        this.f112820t0 = new XSTypeDefinition[8];
        this.f112824v0 = new XSCMValidator[8];
        this.f112828x0 = new int[8];
        this.f112830y0 = true;
        this.f112832z0 = new boolean[8];
        this.f112782A0 = new StringBuffer();
        this.f112783B0 = true;
        this.f112784C0 = false;
        this.f112785D0 = new boolean[8];
        this.f112786E0 = false;
        this.f112787F0 = new boolean[8];
        this.f112788G0 = new QName();
        this.f112789H0 = null;
        this.f112790I0 = null;
        this.f112792J0 = null;
        this.f112793K0 = null;
        this.f112796N0 = new ValidatedInfo();
        this.f112798O0 = new ValidationState();
        this.f112799P0 = new ValidationState();
        this.fMatcherStack = new XPathMatcherStack();
        this.fValueStoreCache = new ValueStoreCache();
        this.f112798O0.setExtraChecking(false);
        this.f112799P0.setFacetChecking(false);
    }

    /* renamed from: A */
    public Augmentations m70156A(Augmentations augmentations) {
        if (augmentations == null) {
            augmentations = this.fAugmentations;
            augmentations.removeAllItems();
        }
        augmentations.putItem("ELEMENT_PSVI", this.fCurrentPSVI);
        this.fCurrentPSVI.reset();
        return augmentations;
    }

    /* renamed from: B */
    public boolean m70157B(QName qName, String str) {
        XSElementDecl xSElementDecl = this.f112831z;
        if (xSElementDecl != null && !xSElementDecl.getNillable()) {
            String str2 = qName.rawname;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(SchemaSymbols.URI_XSI);
            stringBuffer.append(",");
            stringBuffer.append(SchemaSymbols.XSI_NIL);
            m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$NOT_NILLABLE, new Object[]{str2, stringBuffer.toString()});
            return false;
        }
        String trim = XMLChar.trim(str);
        if (!trim.equals("true") && !trim.equals("1")) {
            return false;
        }
        XSElementDecl xSElementDecl2 = this.f112831z;
        if (xSElementDecl2 == null || xSElementDecl2.getConstraintType() != 2) {
            return true;
        }
        String str3 = qName.rawname;
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(SchemaSymbols.URI_XSI);
        stringBuffer2.append(",");
        stringBuffer2.append(SchemaSymbols.XSI_NIL);
        m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$NIL_WITH_FIXED, new Object[]{str3, stringBuffer2.toString()});
        return true;
    }

    /* renamed from: C */
    public XMLString m70158C(XMLString xMLString) {
        short s;
        if (this.f112819t >= 0) {
            return xMLString;
        }
        this.f112784C0 = this.f112784C0 || xMLString.length > 0;
        if (this.fNormalizeData && (s = this.f112808k) != -1 && s != 0) {
            m70166K(xMLString, s == 2);
            xMLString = this.f112805h;
        }
        if (this.f112783B0) {
            this.f112782A0.append(xMLString.f113585ch, xMLString.offset, xMLString.length);
        }
        XSTypeDefinition xSTypeDefinition = this.f112816q0;
        if (xSTypeDefinition != null && xSTypeDefinition.getTypeCategory() == 15 && ((XSComplexTypeDecl) this.f112816q0).f112884m == 2) {
            int i = xMLString.offset;
            while (true) {
                if (i >= xMLString.offset + xMLString.length) {
                    break;
                }
                if (!XMLChar.isSpace(xMLString.f113585ch[i])) {
                    this.f112786E0 = true;
                    break;
                }
                i++;
            }
        }
        return xMLString;
    }

    /* renamed from: D */
    public void m70159D() {
        if (this.f112795M0) {
            this.fValueStoreCache.endDocument();
        }
    }

    /* renamed from: E */
    public Augmentations m70160E(QName qName, Augmentations augmentations) {
        Selector.Matcher matcher;
        IdentityConstraint identityConstraint;
        ValueStoreBase valueStoreFor;
        Selector.Matcher matcher2;
        IdentityConstraint identityConstraint2;
        boolean nillable;
        Object obj;
        short s;
        ShortList shortList;
        int i = this.f112819t;
        if (i >= 0) {
            int i2 = this.f112825w;
            if (i != i2 || i <= 0) {
                this.f112825w = i2 - 1;
            } else {
                this.f112821u = i - 1;
                this.f112819t = -1;
                int i3 = i2 - 1;
                this.f112825w = i3;
                this.f112827x = this.f112829y[i3];
                this.f112831z = this.f112791J[i3];
                this.f112797O = this.f112800Q[i3];
                this.f112801Z = this.f112809k0[i3];
                this.f112816q0 = this.f112820t0[i3];
                this.f112822u0 = this.f112824v0[i3];
                this.f112830y0 = this.f112832z0[i3];
                this.f112826w0 = this.f112828x0[i3];
                this.f112784C0 = this.f112785D0[i3];
                this.f112786E0 = this.f112787F0[i3];
            }
            if (this.f112825w == -1 && this.fFullChecking && !this.fUseGrammarPoolOnly) {
                XSConstraints.fullSchemaChecking(this.f112811m, this.f112812n, this.f112815q, this.fXSIErrorReporter.f112848a);
            }
            return this.fAugPSVI ? m70156A(augmentations) : augmentations;
        }
        m70168M(qName);
        if (this.f112795M0) {
            int matcherCount = this.fMatcherStack.getMatcherCount() - 1;
            for (int i4 = matcherCount; i4 >= 0; i4--) {
                XPathMatcher matcherAt = this.fMatcherStack.getMatcherAt(i4);
                XSElementDecl xSElementDecl = this.f112831z;
                XSTypeDefinition xSTypeDefinition = this.f112816q0;
                if (xSElementDecl == null) {
                    nillable = false;
                    ValidatedInfo validatedInfo = this.f112796N0;
                    obj = validatedInfo.actualValue;
                    s = validatedInfo.actualValueType;
                    shortList = validatedInfo.itemValueTypes;
                } else {
                    nillable = xSElementDecl.getNillable();
                    XMLString xMLString = this.fDefaultValue;
                    obj = (xMLString == null ? this.f112796N0 : this.f112831z.fDefault).actualValue;
                    s = (xMLString == null ? this.f112796N0 : this.f112831z.fDefault).actualValueType;
                    shortList = (xMLString == null ? this.f112796N0 : this.f112831z.fDefault).itemValueTypes;
                }
                matcherAt.endElement(qName, xSTypeDefinition, nillable, obj, s, shortList);
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
                if ((matcherAt3 instanceof Selector.Matcher) && (identityConstraint = (matcher = (Selector.Matcher) matcherAt3).getIdentityConstraint()) != null && identityConstraint.getCategory() == 2 && (valueStoreFor = this.fValueStoreCache.getValueStoreFor(identityConstraint, matcher.getInitialDepth())) != null && valueStoreFor.fValuesCount == valueStoreFor.fFieldCount) {
                    valueStoreFor.endDocumentFragment();
                }
                matcherCount--;
            }
            this.fValueStoreCache.endElement();
        }
        int i6 = this.f112825w;
        int i7 = this.f112794L0;
        if (i6 < i7) {
            this.f112794L0 = i7 - 1;
        }
        if (i6 == 0) {
            Iterator checkIDRefID = this.fValidationState.checkIDRefID();
            this.fValidationState.resetIDTables();
            if (checkIDRefID != null) {
                while (checkIDRefID.hasNext()) {
                    m70172Q("cvc-id.1", new Object[]{checkIDRefID.next()});
                }
            }
            if (this.fFullChecking && !this.fUseGrammarPoolOnly) {
                XSConstraints.fullSchemaChecking(this.f112811m, this.f112812n, this.f112815q, this.fXSIErrorReporter.f112848a);
            }
            SchemaGrammar[] grammars = this.f112811m.getGrammars();
            if (this.fGrammarPool != null) {
                for (SchemaGrammar schemaGrammar : grammars) {
                    schemaGrammar.setImmutable(true);
                }
                this.fGrammarPool.cacheGrammars("http://www.w3.org/2001/XMLSchema", grammars);
            }
            return m70181v(true, grammars, augmentations);
        }
        Augmentations m70181v = m70181v(false, null, augmentations);
        int i8 = this.f112825w - 1;
        this.f112825w = i8;
        this.f112827x = this.f112829y[i8];
        this.f112831z = this.f112791J[i8];
        this.f112797O = this.f112800Q[i8];
        this.f112801Z = this.f112809k0[i8];
        this.f112816q0 = this.f112820t0[i8];
        this.f112822u0 = this.f112824v0[i8];
        this.f112830y0 = this.f112832z0[i8];
        this.f112826w0 = this.f112828x0[i8];
        this.f112784C0 = this.f112785D0[i8];
        this.f112786E0 = this.f112787F0[i8];
        this.f112808k = (short) -1;
        this.f112783B0 = false;
        this.f112810l = false;
        return m70181v;
    }

    /* renamed from: F */
    public void m70161F(XMLString xMLString) {
    }

    /* renamed from: G */
    public void m70162G(XMLLocator xMLLocator, String str) {
        if (this.f112795M0) {
            this.fValueStoreCache.startDocument();
        }
        if (this.fAugPSVI) {
            ElementPSVImpl elementPSVImpl = this.fCurrentPSVI;
            elementPSVImpl.fGrammars = null;
            elementPSVImpl.fSchemaInformation = null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(53:20|(2:22|(4:24|(2:26|(4:28|(1:30)(1:44)|31|(2:33|(2:35|(1:37)(1:38))(1:(1:42)(1:41)))(1:43)))|45|(2:47|(1:51)(1:50))(1:52)))(1:221)|53|(1:55)|56|(2:58|(1:60)(2:61|(37:71|(2:73|(1:75)(2:76|(1:78)(2:79|(1:81)(2:82|(1:84)))))|85|(4:87|(1:91)|92|(1:94))|95|(1:99)|100|(1:102)(1:219)|103|(4:200|(2:202|(2:(1:205)|206))|207|(3:214|(1:216)(1:218)|217)(1:211))(3:106|(2:108|(2:183|(4:185|(1:187)|188|189)(2:190|(2:192|193)(2:194|195)))(1:112))(1:(1:199))|113)|114|(1:118)|119|(1:121)|122|(1:124)(1:182)|125|126|(21:128|(1:130)|131|(3:135|(2:137|138)|140)|141|(1:143)|144|(1:146)|147|(1:151)|152|(1:154)(1:175)|155|(2:157|(1:161))|162|(1:164)|165|(1:167)|168|169|(2:171|172)(2:173|174))(19:176|(3:178|(2:180|138)|140)|141|(0)|144|(0)|147|(2:149|151)|152|(0)(0)|155|(0)|162|(0)|165|(0)|168|169|(0)(0))|181|141|(0)|144|(0)|147|(0)|152|(0)(0)|155|(0)|162|(0)|165|(0)|168|169|(0)(0))(2:65|(2:67|68)(2:69|70))))|220|(1:63)|71|(0)|85|(0)|95|(2:97|99)|100|(0)(0)|103|(0)|200|(0)|207|(1:209)|212|214|(0)(0)|217|114|(2:116|118)|119|(0)|122|(0)(0)|125|126|(0)(0)|181|141|(0)|144|(0)|147|(0)|152|(0)(0)|155|(0)|162|(0)|165|(0)|168|169|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03fc A[LOOP:0: B:166:0x03d9->B:167:0x03fc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01fe  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.xni.Augmentations m70163H(org.apache.xerces.xni.QName r17, org.apache.xerces.xni.XMLAttributes r18, org.apache.xerces.xni.Augmentations r19) {
        /*
            Method dump skipped, instructions count: 1032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XMLSchemaValidator.m70163H(org.apache.xerces.xni.QName, org.apache.xerces.xni.XMLAttributes, org.apache.xerces.xni.Augmentations):org.apache.xerces.xni.Augmentations");
    }

    /* renamed from: I */
    public final boolean m70164I(SchemaGrammar schemaGrammar, short s, QName qName) {
        String str;
        if (schemaGrammar == null || qName == null || (str = qName.localpart) == null || str.length() <= 0) {
            return false;
        }
        return s != 5 ? s != 6 ? s == 7 && schemaGrammar.getTypeDefinition(str) != null : schemaGrammar.getAttributeDeclaration(str) != null : schemaGrammar.getElementDeclaration(str) != null;
    }

    /* renamed from: J */
    public final void m70165J(String str, boolean z) {
        XMLString xMLString;
        int i;
        int length = str.length();
        XMLString xMLString2 = this.f112805h;
        char[] cArr = xMLString2.f113585ch;
        if (cArr == null || cArr.length < length) {
            xMLString2.f113585ch = new char[length];
        }
        xMLString2.offset = 0;
        xMLString2.length = 0;
        boolean z2 = z;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (!XMLChar.isSpace(charAt)) {
                XMLString xMLString3 = this.f112805h;
                char[] cArr2 = xMLString3.f113585ch;
                int i3 = xMLString3.length;
                xMLString3.length = i3 + 1;
                cArr2[i3] = charAt;
                z2 = false;
            } else if (!z2) {
                XMLString xMLString4 = this.f112805h;
                char[] cArr3 = xMLString4.f113585ch;
                int i4 = xMLString4.length;
                xMLString4.length = i4 + 1;
                cArr3[i4] = ' ';
                z2 = z;
            }
        }
        if (!z2 || (i = (xMLString = this.f112805h).length) == 0) {
            return;
        }
        xMLString.length = i - 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0035, code lost:
    
        if (r11.f112806i == false) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0053  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m70166K(org.apache.xerces.xni.XMLString r12, boolean r13) {
        /*
            r11 = this;
            int r0 = r12.offset
            int r1 = r12.length
            int r0 = r0 + r1
            org.apache.xerces.xni.XMLString r2 = r11.f112805h
            char[] r3 = r2.f113585ch
            r4 = 1
            if (r3 == 0) goto L11
            int r3 = r3.length
            int r5 = r1 + 1
            if (r3 >= r5) goto L16
        L11:
            int r1 = r1 + r4
            char[] r1 = new char[r1]
            r2.f113585ch = r1
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
            if (r1 < r0) goto L69
            if (r3 == 0) goto L38
            org.apache.xerces.xni.XMLString r12 = r11.f112805h
            int r13 = r12.length
            if (r13 <= r4) goto L31
            int r13 = r13 - r4
            r12.length = r13
        L2f:
            r12 = r4
            goto L39
        L31:
            if (r6 == 0) goto L38
            boolean r12 = r11.f112806i
            if (r12 != 0) goto L38
            goto L2f
        L38:
            r12 = r2
        L39:
            org.apache.xerces.xni.XMLString r13 = r11.f112805h
            int r0 = r13.length
            if (r0 <= r4) goto L5b
            boolean r1 = r11.f112806i
            if (r1 != 0) goto L5b
            short r1 = r11.f112808k
            r3 = 2
            if (r1 != r3) goto L5b
            boolean r1 = r11.f112807j
            if (r1 == 0) goto L53
            r13.offset = r2
            char[] r1 = r13.f113585ch
            r1[r2] = r7
            goto L5b
        L53:
            if (r6 == 0) goto L5b
            r13.offset = r2
            char[] r1 = r13.f113585ch
            r1[r2] = r7
        L5b:
            int r1 = r13.offset
            int r0 = r0 - r1
            r13.length = r0
            r11.f112807j = r12
            if (r12 != 0) goto L66
            if (r5 == 0) goto L68
        L66:
            r11.f112806i = r2
        L68:
            return
        L69:
            char[] r8 = r12.f113585ch
            char r8 = r8[r1]
            boolean r9 = org.apache.xerces.util.XMLChar.isSpace(r8)
            if (r9 == 0) goto L86
            if (r3 != 0) goto L82
            org.apache.xerces.xni.XMLString r3 = r11.f112805h
            char[] r8 = r3.f113585ch
            int r9 = r3.length
            int r10 = r9 + 1
            r3.length = r10
            r8[r9] = r7
            r3 = r13
        L82:
            if (r5 != 0) goto L94
            r6 = r4
            goto L94
        L86:
            org.apache.xerces.xni.XMLString r3 = r11.f112805h
            char[] r5 = r3.f113585ch
            int r7 = r3.length
            int r9 = r7 + 1
            r3.length = r9
            r5[r7] = r8
            r3 = r2
            r5 = r4
        L94:
            int r1 = r1 + 1
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XMLSchemaValidator.m70166K(org.apache.xerces.xni.XMLString, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a9  */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m70167L(org.apache.xerces.xni.QName r23, org.apache.xerces.xni.XMLAttributes r24, org.apache.xerces.impl.p117xs.XSAttributeGroupDecl r25) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XMLSchemaValidator.m70167L(org.apache.xerces.xni.QName, org.apache.xerces.xni.XMLAttributes, org.apache.xerces.impl.xs.XSAttributeGroupDecl):void");
    }

    /* renamed from: M */
    public void m70168M(QName qName) {
        ValidatedInfo validatedInfo;
        XSElementDecl xSElementDecl = this.f112831z;
        if (xSElementDecl != null && (validatedInfo = xSElementDecl.fDefault) != null && !this.f112784C0 && !this.f112827x && !this.f112797O) {
            String stringValue = validatedInfo.stringValue();
            int length = stringValue.length();
            XMLString xMLString = this.f112805h;
            char[] cArr = xMLString.f113585ch;
            if (cArr == null || cArr.length < length) {
                xMLString.f113585ch = new char[length];
            }
            stringValue.getChars(0, length, xMLString.f113585ch, 0);
            XMLString xMLString2 = this.f112805h;
            xMLString2.offset = 0;
            xMLString2.length = length;
            this.fDefaultValue = xMLString2;
        }
        this.f112796N0.normalizedValue = null;
        if (this.f112797O && (this.f112827x || this.f112784C0)) {
            String str = qName.rawname;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(SchemaSymbols.URI_XSI);
            stringBuffer.append(",");
            stringBuffer.append(SchemaSymbols.XSI_NIL);
            m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$NIL_WITH_CONTENT, new Object[]{str, stringBuffer.toString()});
        }
        this.f112796N0.reset();
        XSElementDecl xSElementDecl2 = this.f112831z;
        if (xSElementDecl2 == null || xSElementDecl2.getConstraintType() == 0 || this.f112827x || this.f112784C0 || this.f112797O) {
            Object m70180u = m70180u(qName, this.f112782A0);
            XSElementDecl xSElementDecl3 = this.f112831z;
            if (xSElementDecl3 != null && xSElementDecl3.getConstraintType() == 2 && !this.f112797O) {
                String stringBuffer2 = this.f112782A0.toString();
                if (this.f112827x) {
                    m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_WITH_CONTENT, new Object[]{qName.rawname});
                }
                if (this.f112816q0.getTypeCategory() == 15) {
                    short s = ((XSComplexTypeDecl) this.f112816q0).f112884m;
                    if (s == 3) {
                        if (!this.f112831z.fDefault.normalizedValue.equals(stringBuffer2)) {
                            m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_VALID_MIXED_CONTENT, new Object[]{qName.rawname, stringBuffer2, this.f112831z.fDefault.normalizedValue});
                        }
                    } else if (s == 1 && m70180u != null && (!ValidatedInfo.isComparable(this.f112796N0, this.f112831z.fDefault) || !m70180u.equals(this.f112831z.fDefault.actualValue))) {
                        m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_VALID_SIMPLE_TYPE, new Object[]{qName.rawname, stringBuffer2, this.f112831z.fDefault.stringValue()});
                    }
                } else if (this.f112816q0.getTypeCategory() == 16 && m70180u != null && (!ValidatedInfo.isComparable(this.f112796N0, this.f112831z.fDefault) || !m70180u.equals(this.f112831z.fDefault.actualValue))) {
                    m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$FIXED_VALID_SIMPLE_TYPE, new Object[]{qName.rawname, stringBuffer2, this.f112831z.fDefault.stringValue()});
                }
            }
        } else {
            XSTypeDefinition xSTypeDefinition = this.f112816q0;
            XSElementDecl xSElementDecl4 = this.f112831z;
            if (xSTypeDefinition != xSElementDecl4.fType && XSConstraints.ElementDefaultValidImmediate(xSTypeDefinition, xSElementDecl4.fDefault.stringValue(), this.f112798O0, null) == null) {
                m70172Q("cvc-elt.5.1.1", new Object[]{qName.rawname, this.f112816q0.getName(), this.f112831z.fDefault.stringValue()});
            }
            m70180u(qName, this.f112831z.fDefault.stringValue());
        }
        if (this.fDefaultValue == null && this.fNormalizeData && this.fDocumentHandler != null && this.f112810l) {
            String str2 = this.f112796N0.normalizedValue;
            if (str2 == null) {
                str2 = this.f112782A0.toString();
            }
            int length2 = str2.length();
            XMLString xMLString3 = this.f112805h;
            char[] cArr2 = xMLString3.f113585ch;
            if (cArr2 == null || cArr2.length < length2) {
                xMLString3.f113585ch = new char[length2];
            }
            str2.getChars(0, length2, xMLString3.f113585ch, 0);
            XMLString xMLString4 = this.f112805h;
            xMLString4.offset = 0;
            xMLString4.length = length2;
            this.fDocumentHandler.characters(xMLString4, null);
        }
    }

    /* renamed from: N */
    public void m70169N(QName qName, XMLAttributes xMLAttributes, int i, XSAttributeDecl xSAttributeDecl, XSAttributeUseImpl xSAttributeUseImpl, AttributePSVImpl attributePSVImpl) {
        String value = xMLAttributes.getValue(i);
        this.fXSIErrorReporter.pushContext();
        XSSimpleType xSSimpleType = xSAttributeDecl.f112857g;
        Object obj = null;
        try {
            obj = xSSimpleType.validate(value, (ValidationContext) this.fValidationState, this.f112796N0);
            if (this.fNormalizeData) {
                xMLAttributes.setValue(i, this.f112796N0.normalizedValue);
            }
            if (xSSimpleType.getVariety() == 1 && xSSimpleType.getPrimitiveKind() == 20) {
                QName qName2 = (QName) obj;
                SchemaGrammar grammar = this.f112811m.getGrammar(qName2.uri);
                if (grammar != null) {
                    this.f112801Z = grammar.getGlobalNotationDecl(qName2.localpart);
                }
            }
        } catch (InvalidDatatypeValueException e) {
            m70172Q(e.getKey(), e.getArgs());
            Object[] objArr = new Object[4];
            objArr[0] = qName.rawname;
            objArr[1] = this.f112788G0.rawname;
            objArr[2] = value;
            objArr[3] = xSSimpleType instanceof XSSimpleTypeDecl ? ((XSSimpleTypeDecl) xSSimpleType).getTypeName() : xSSimpleType.getName();
            m70172Q("cvc-attribute.3", objArr);
        }
        if (obj != null && xSAttributeDecl.getConstraintType() == 2 && (!ValidatedInfo.isComparable(this.f112796N0, xSAttributeDecl.f112862l) || !obj.equals(xSAttributeDecl.f112862l.actualValue))) {
            m70172Q(XmlErrorCodes.ATTR_LOCALLY_VALID$FIXED, new Object[]{qName.rawname, this.f112788G0.rawname, value, xSAttributeDecl.f112862l.stringValue()});
        }
        if (obj != null && xSAttributeUseImpl != null && xSAttributeUseImpl.fConstraintType == 2 && (!ValidatedInfo.isComparable(this.f112796N0, xSAttributeUseImpl.fDefault) || !obj.equals(xSAttributeUseImpl.fDefault.actualValue))) {
            m70172Q(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$ATTRIBUTE_VALID, new Object[]{qName.rawname, this.f112788G0.rawname, value, xSAttributeUseImpl.fDefault.stringValue()});
        }
        if (this.fIdConstraint) {
            attributePSVImpl.fValue.copyFrom(this.f112796N0);
        }
        if (this.fAugPSVI) {
            attributePSVImpl.fDeclaration = xSAttributeDecl;
            attributePSVImpl.fTypeDecl = xSSimpleType;
            attributePSVImpl.fValue.copyFrom(this.f112796N0);
            attributePSVImpl.fValidationAttempted = (short) 2;
            this.f112823v = this.f112825w;
            String[] mergeContext = this.fXSIErrorReporter.mergeContext();
            attributePSVImpl.fErrors = mergeContext;
            attributePSVImpl.fValidity = mergeContext == null ? (short) 2 : (short) 1;
        }
    }

    /* renamed from: O */
    public void m70170O(javax.xml.namespace.QName qName, QName qName2) {
        String stringBuffer;
        String addSymbol = this.fSymbolTable.addSymbol(qName.getNamespaceURI());
        if (addSymbol != null && addSymbol.equals("")) {
            addSymbol = null;
        }
        SchemaGrammar m70184y = m70184y((short) 5, addSymbol, null, null, null);
        if (m70184y != null) {
            this.f112831z = m70184y.getGlobalElementDecl(qName.getLocalPart());
        }
        XSElementDecl xSElementDecl = this.f112831z;
        if (xSElementDecl != null) {
            m70178s(xSElementDecl, qName2);
            return;
        }
        if (qName.getPrefix().equals("")) {
            stringBuffer = qName.getLocalPart();
        } else {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(qName.getPrefix());
            stringBuffer2.append(":");
            stringBuffer2.append(qName.getLocalPart());
            stringBuffer = stringBuffer2.toString();
        }
        m70172Q("cvc-elt.1.a", new Object[]{stringBuffer});
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v5 org.apache.xerces.impl.xs.SchemaGrammar, still in use, count: 2, list:
          (r0v5 org.apache.xerces.impl.xs.SchemaGrammar) from 0x0034: IF  (r0v5 org.apache.xerces.impl.xs.SchemaGrammar) != (null org.apache.xerces.impl.xs.SchemaGrammar)  -> B:9:0x0020 A[HIDDEN]
          (r0v5 org.apache.xerces.impl.xs.SchemaGrammar) from 0x0020: PHI (r0v11 org.apache.xerces.impl.xs.SchemaGrammar) = (r0v5 org.apache.xerces.impl.xs.SchemaGrammar) binds: [B:21:0x0034] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    /* renamed from: P */
    public void m70171P(javax.xml.namespace.QName r9) {
        /*
            r8 = this;
            java.lang.String r0 = r9.getNamespaceURI()
            org.apache.xerces.util.SymbolTable r1 = r8.fSymbolTable
            java.lang.String r0 = r1.addSymbol(r0)
            java.lang.String r1 = ""
            if (r0 == 0) goto L15
            boolean r2 = r0.equals(r1)
            if (r2 == 0) goto L15
            r0 = 0
        L15:
            r4 = r0
            java.lang.String r0 = org.apache.xerces.impl.p117xs.SchemaSymbols.URI_SCHEMAFORSCHEMA
            boolean r0 = r0.equals(r4)
            if (r0 == 0) goto L2b
            org.apache.xerces.impl.xs.SchemaGrammar$BuiltinSchemaGrammar r0 = org.apache.xerces.impl.p117xs.SchemaGrammar.SG_SchemaNS
        L20:
            java.lang.String r2 = r9.getLocalPart()
            org.apache.xerces.xs.XSTypeDefinition r0 = r0.getGlobalTypeDecl(r2)
            r8.f112816q0 = r0
            goto L37
        L2b:
            r3 = 5
            r5 = 0
            r6 = 0
            r7 = 0
            r2 = r8
            org.apache.xerces.impl.xs.SchemaGrammar r0 = r2.m70184y(r3, r4, r5, r6, r7)
            if (r0 == 0) goto L37
            goto L20
        L37:
            org.apache.xerces.xs.XSTypeDefinition r0 = r8.f112816q0
            if (r0 != 0) goto L6f
            java.lang.String r0 = r9.getPrefix()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4a
            java.lang.String r9 = r9.getLocalPart()
            goto L66
        L4a:
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = r9.getPrefix()
            r0.append(r1)
            java.lang.String r1 = ":"
            r0.append(r1)
            java.lang.String r9 = r9.getLocalPart()
            r0.append(r9)
            java.lang.String r9 = r0.toString()
        L66:
            java.lang.String r0 = "cvc-type.1"
            java.lang.Object[] r9 = new java.lang.Object[]{r9}
            r8.m70172Q(r0, r9)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XMLSchemaValidator.m70171P(javax.xml.namespace.QName):void");
    }

    /* renamed from: Q */
    public void m70172Q(String str, Object[] objArr) {
        if (this.fDoValidation) {
            this.fXSIErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", str, objArr, (short) 1);
        }
    }

    /* renamed from: R */
    public final void m70173R(XSDDescription xSDDescription, String[] strArr, SchemaGrammar schemaGrammar) {
        int length = strArr.length;
        if (schemaGrammar != null) {
            m70174S(xSDDescription, strArr, schemaGrammar.getDocumentLocations());
            return;
        }
        String[] strArr2 = new String[length];
        this.fXSDDescription.fLocationHints = strArr2;
        System.arraycopy(strArr, 0, strArr2, 0, length);
    }

    /* renamed from: S */
    public final void m70174S(XSDDescription xSDDescription, String[] strArr, StringList stringList) {
        int length = strArr.length;
        String[] strArr2 = new String[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (!stringList.contains(strArr[i2])) {
                strArr2[i] = strArr[i2];
                i++;
            }
        }
        if (i > 0) {
            XSDDescription xSDDescription2 = this.fXSDDescription;
            if (i == length) {
                xSDDescription2.fLocationHints = strArr2;
                return;
            }
            String[] strArr3 = new String[i];
            xSDDescription2.fLocationHints = strArr3;
            System.arraycopy(strArr2, 0, strArr3, 0, i);
        }
    }

    /* renamed from: T */
    public void m70175T(String str, String str2) {
        if (str != null) {
            Hashtable hashtable = this.fLocationPairs;
            XMLLocator xMLLocator = this.f112803f;
            if (!XMLSchemaLoader.tokenizeSchemaLocationStr(str, hashtable, xMLLocator == null ? null : xMLLocator.getExpandedSystemId())) {
                this.fXSIErrorReporter.reportError("http://www.w3.org/TR/xml-schema-1", "SchemaLocation", new Object[]{str}, (short) 0);
            }
        }
        if (str2 != null) {
            Hashtable hashtable2 = this.fLocationPairs;
            String str3 = XMLSymbols.EMPTY_STRING;
            XMLSchemaLoader.C20047a c20047a = (XMLSchemaLoader.C20047a) hashtable2.get(str3);
            if (c20047a == null) {
                c20047a = new XMLSchemaLoader.C20047a();
                this.fLocationPairs.put(str3, c20047a);
            }
            XMLLocator xMLLocator2 = this.f112803f;
            if (xMLLocator2 != null) {
                try {
                    str2 = XMLEntityManager.expandSystemId(str2, xMLLocator2.getExpandedSystemId(), false);
                } catch (URI.MalformedURIException unused) {
                }
            }
            c20047a.m70149a(str2);
        }
    }

    @Override // org.apache.xerces.impl.p117xs.identity.FieldActivator
    public XPathMatcher activateField(Field field, int i) {
        XPathMatcher createMatcher = field.createMatcher(this.fValueStoreCache.getValueStoreFor(field.getIdentityConstraint(), i));
        this.fMatcherStack.addMatcher(createMatcher);
        createMatcher.startDocumentFragment();
        return createMatcher;
    }

    @Override // org.apache.xerces.impl.RevalidationHandler
    public boolean characterData(String str, Augmentations augmentations) {
        short s;
        this.f112784C0 = this.f112784C0 || str.length() > 0;
        if (this.fNormalizeData && (s = this.f112808k) != -1 && s != 0) {
            m70165J(str, s == 2);
            StringBuffer stringBuffer = this.f112782A0;
            XMLString xMLString = this.f112805h;
            stringBuffer.append(xMLString.f113585ch, xMLString.offset, xMLString.length);
        } else if (this.f112783B0) {
            this.f112782A0.append(str);
        }
        XSTypeDefinition xSTypeDefinition = this.f112816q0;
        if (xSTypeDefinition != null && xSTypeDefinition.getTypeCategory() == 15 && ((XSComplexTypeDecl) this.f112816q0).f112884m == 2) {
            for (int i = 0; i < str.length(); i++) {
                if (!XMLChar.isSpace(str.charAt(i))) {
                    this.f112786E0 = true;
                    return false;
                }
            }
        }
        return true;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLString m70158C = m70158C(xMLString);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (!this.fNormalizeData || !this.f112810l) {
                xMLDocumentHandler.characters(m70158C, augmentations);
            } else if (augmentations != null) {
                xMLDocumentHandler.characters(this.f112804g, augmentations);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.comment(xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.doctypeDecl(str, str2, str3, augmentations);
        }
    }

    public void elementDefault(String str) {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Augmentations m70163H = m70163H(qName, xMLAttributes, augmentations);
        this.fDefaultValue = null;
        if (this.f112825w != -2) {
            m70163H = m70160E(qName, m70163H);
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (!this.fSchemaElementDefault || this.fDefaultValue == null) {
                xMLDocumentHandler.emptyElement(qName, xMLAttributes, m70163H);
                return;
            }
            xMLDocumentHandler.startElement(qName, xMLAttributes, m70163H);
            this.fDocumentHandler.characters(this.fDefaultValue, null);
            this.fDocumentHandler.endElement(qName, m70163H);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATA = false;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endCDATA(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        m70159D();
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endDocument(augmentations);
        }
        this.f112803f = null;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        XMLString xMLString;
        this.fDefaultValue = null;
        Augmentations m70160E = m70160E(qName, augmentations);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (!this.fSchemaElementDefault || (xMLString = this.fDefaultValue) == null) {
                xMLDocumentHandler.endElement(qName, m70160E);
            } else {
                xMLDocumentHandler.characters(xMLString, null);
                this.fDocumentHandler.endElement(qName, m70160E);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
        this.fEntityRef = false;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endGeneralEntity(str, augmentations);
        }
    }

    @Override // org.apache.xerces.impl.p117xs.identity.FieldActivator
    public void endValueScopeFor(IdentityConstraint identityConstraint, int i) {
        this.fValueStoreCache.getValueStoreFor(identityConstraint, i).endValueScope();
    }

    @Override // org.apache.xerces.xni.parser.XMLDocumentSource
    public XMLDocumentHandler getDocumentHandler() {
        return this.fDocumentHandler;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return this.fDocumentSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112769R0;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112770S0[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.impl.p117xs.XSElementDeclHelper
    public XSElementDecl getGlobalElementDecl(QName qName) {
        SchemaGrammar m70184y = m70184y((short) 5, qName.uri, null, qName, null);
        if (m70184y != null) {
            return m70184y.getGlobalElementDecl(qName.localpart);
        }
        return null;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112771T0;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112772U0[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f112769R0.clone();
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f112771T0.clone();
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        m70161F(xMLString);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.ignorableWhitespace(xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.processingInstruction(str, xMLString, augmentations);
        }
    }

    /* renamed from: q */
    public final void m70176q(IdentityConstraint identityConstraint) {
        Selector selector = identityConstraint.getSelector();
        if (selector == null) {
            return;
        }
        XPathMatcher createMatcher = selector.createMatcher(this, this.f112825w);
        this.fMatcherStack.addMatcher(createMatcher);
        createMatcher.startDocumentFragment();
    }

    /* renamed from: r */
    public void m70177r(QName qName, XMLAttributes xMLAttributes, XSAttributeGroupDecl xSAttributeGroupDecl) {
        int addAttribute;
        XSObjectList attributeUses = xSAttributeGroupDecl.getAttributeUses();
        int length = attributeUses.getLength();
        for (int i = 0; i < length; i++) {
            XSAttributeUseImpl xSAttributeUseImpl = (XSAttributeUseImpl) attributeUses.item(i);
            XSAttributeDecl xSAttributeDecl = xSAttributeUseImpl.fAttrDecl;
            short s = xSAttributeUseImpl.fConstraintType;
            ValidatedInfo validatedInfo = xSAttributeUseImpl.fDefault;
            if (s == 0) {
                s = xSAttributeDecl.getConstraintType();
                validatedInfo = xSAttributeDecl.f112862l;
            }
            boolean z = xMLAttributes.getValue(xSAttributeDecl.f112856f, xSAttributeDecl.f112855e) != null;
            if (xSAttributeUseImpl.fUse == 1 && !z) {
                m70172Q(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$MISSING_REQUIRED_ATTRIBUTE, new Object[]{qName.rawname, xSAttributeDecl.f112855e});
            }
            if (!z && s != 0) {
                String str = xSAttributeDecl.f112855e;
                QName qName2 = new QName(null, str, str, xSAttributeDecl.f112856f);
                String stringValue = validatedInfo != null ? validatedInfo.stringValue() : "";
                if (xMLAttributes instanceof XMLAttributesImpl) {
                    XMLAttributesImpl xMLAttributesImpl = (XMLAttributesImpl) xMLAttributes;
                    addAttribute = xMLAttributesImpl.getLength();
                    xMLAttributesImpl.addAttributeNS(qName2, "CDATA", stringValue);
                } else {
                    addAttribute = xMLAttributes.addAttribute(qName2, "CDATA", stringValue);
                }
                if (this.fAugPSVI) {
                    Augmentations augmentations = xMLAttributes.getAugmentations(addAttribute);
                    AttributePSVImpl attributePSVImpl = new AttributePSVImpl();
                    augmentations.putItem("ATTRIBUTE_PSVI", attributePSVImpl);
                    attributePSVImpl.fDeclaration = xSAttributeDecl;
                    attributePSVImpl.fTypeDecl = xSAttributeDecl.f112857g;
                    attributePSVImpl.fValue.copyFrom(validatedInfo);
                    attributePSVImpl.fValidationContext = this.f112818s;
                    attributePSVImpl.fValidity = (short) 2;
                    attributePSVImpl.fValidationAttempted = (short) 2;
                    attributePSVImpl.fSpecified = true;
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(41:8|(1:10)|(2:11|12)|(2:13|14)|15|(1:17)(2:103|104)|18|(2:20|21)|(2:24|25)|(2:27|28)|(2:29|30)|(2:32|33)|(2:35|36)|(2:37|38)|39|(2:40|41)|(1:43)(2:89|(1:91)(24:92|45|46|(1:48)(2:84|(1:86)(20:87|50|51|(1:53)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|44|45|46|(0)(0)|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71) */
    /* JADX WARN: Can't wrap try/catch for region: R(43:8|(1:10)|(2:11|12)|13|14|15|(1:17)(2:103|104)|18|(2:20|21)|(2:24|25)|(2:27|28)|29|30|(2:32|33)|(2:35|36)|(2:37|38)|39|(2:40|41)|(1:43)(2:89|(1:91)(24:92|45|46|(1:48)(2:84|(1:86)(20:87|50|51|(1:53)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|44|45|46|(0)(0)|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71) */
    /* JADX WARN: Can't wrap try/catch for region: R(45:8|(1:10)|(2:11|12)|13|14|15|(1:17)(2:103|104)|18|(2:20|21)|(2:24|25)|(2:27|28)|29|30|(2:32|33)|(2:35|36)|37|38|39|40|41|(1:43)(2:89|(1:91)(24:92|45|46|(1:48)(2:84|(1:86)(20:87|50|51|(1:53)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|44|45|46|(0)(0)|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71) */
    /* JADX WARN: Can't wrap try/catch for region: R(47:8|(1:10)|(2:11|12)|13|14|15|(1:17)(2:103|104)|18|(2:20|21)|24|25|(2:27|28)|29|30|32|33|(2:35|36)|37|38|39|40|41|(1:43)(2:89|(1:91)(24:92|45|46|(1:48)(2:84|(1:86)(20:87|50|51|(1:53)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|44|45|46|(0)(0)|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71) */
    /* JADX WARN: Can't wrap try/catch for region: R(49:8|(1:10)|(2:11|12)|13|14|15|(1:17)(2:103|104)|18|(2:20|21)|24|25|27|28|29|30|32|33|35|36|37|38|39|40|41|(1:43)(2:89|(1:91)(24:92|45|46|(1:48)(2:84|(1:86)(20:87|50|51|(1:53)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71))|44|45|46|(0)(0)|49|50|51|(0)|54|55|56|58|59|60|61|63|64|65|66|67|68|69|70|71) */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01ca, code lost:
    
        r7.fGrammarPool = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01bd, code lost:
    
        r7.fJaxpSchemaSource = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a3, code lost:
    
        r7.fExternalSchemas = null;
        r7.fExternalNoNamespaceSchema = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0189, code lost:
    
        r7.fValidationState.setUnparsedEntityChecking(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0178, code lost:
    
        r7.fValidationState.setIdIdrefChecking(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x016a, code lost:
    
        r7.f112795M0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x015a, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x014f, code lost:
    
        r7.f112792J0 = null;
        r7.f112793K0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013a A[Catch: XMLConfigurationException -> 0x014f, TryCatch #7 {XMLConfigurationException -> 0x014f, blocks: (B:46:0x0132, B:48:0x013a, B:49:0x013c, B:84:0x013f, B:86:0x0143, B:87:0x0148), top: B:45:0x0132 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x013f A[Catch: XMLConfigurationException -> 0x014f, TryCatch #7 {XMLConfigurationException -> 0x014f, blocks: (B:46:0x0132, B:48:0x013a, B:49:0x013c, B:84:0x013f, B:86:0x0143, B:87:0x0148), top: B:45:0x0132 }] */
    @Override // org.apache.xerces.xni.parser.XMLComponent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reset(org.apache.xerces.xni.parser.XMLComponentManager r8) throws org.apache.xerces.xni.parser.XMLConfigurationException {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XMLSchemaValidator.reset(org.apache.xerces.xni.parser.XMLComponentManager):void");
    }

    /* renamed from: s */
    public void m70178s(XSElementDecl xSElementDecl, QName qName) {
        String str = qName.localpart;
        String str2 = xSElementDecl.fName;
        if (str == str2 && qName.uri == xSElementDecl.fTargetNamespace) {
            return;
        }
        m70172Q("cvc-elt.1.b", new Object[]{qName.rawname, str2});
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
        if (str.equals(ROOT_TYPE_DEF)) {
            if (obj == null) {
                this.f112789H0 = null;
            } else {
                if (!(obj instanceof javax.xml.namespace.QName)) {
                    this.f112790I0 = (XSTypeDefinition) obj;
                    this.f112789H0 = null;
                    return;
                }
                this.f112789H0 = (javax.xml.namespace.QName) obj;
            }
            this.f112790I0 = null;
            return;
        }
        if (str.equals(ROOT_ELEMENT_DECL)) {
            if (obj == null) {
                this.f112792J0 = null;
            } else {
                if (!(obj instanceof javax.xml.namespace.QName)) {
                    this.f112793K0 = (XSElementDecl) obj;
                    this.f112792J0 = null;
                    return;
                }
                this.f112792J0 = (javax.xml.namespace.QName) obj;
            }
            this.f112793K0 = null;
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATA = true;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startCDATA(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        this.fValidationState.setNamespaceSupport(namespaceContext);
        this.f112798O0.setNamespaceSupport(namespaceContext);
        this.f112799P0.setNamespaceSupport(namespaceContext);
        this.f112803f = xMLLocator;
        m70162G(xMLLocator, str);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startDocument(xMLLocator, str, namespaceContext, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Augmentations m70163H = m70163H(qName, xMLAttributes, augmentations);
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startElement(qName, xMLAttributes, m70163H);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        this.fEntityRef = true;
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.startGeneralEntity(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    @Override // org.apache.xerces.impl.p117xs.identity.FieldActivator
    public void startValueScopeFor(IdentityConstraint identityConstraint, int i) {
        this.fValueStoreCache.getValueStoreFor(identityConstraint, i).startValueScope();
    }

    /* renamed from: t */
    public Object m70179t(QName qName, Object obj) {
        XSComplexTypeDecl xSComplexTypeDecl = (XSComplexTypeDecl) this.f112816q0;
        Object obj2 = null;
        if (!this.f112797O) {
            short s = xSComplexTypeDecl.f112884m;
            if (s == 0 && (this.f112827x || this.f112784C0)) {
                m70172Q(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$EMPTY_WITH_CONTENT, new Object[]{qName.rawname});
            } else if (s == 1) {
                if (this.f112827x) {
                    m70172Q(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$SIMPLE_TYPE_WITH_CONTENT, new Object[]{qName.rawname});
                }
                XSSimpleType xSSimpleType = xSComplexTypeDecl.f112885n;
                try {
                    if (!this.fNormalizeData || this.f112810l) {
                        this.fValidationState.setNormalizationRequired(true);
                    }
                    obj2 = xSSimpleType.validate(obj, this.fValidationState, this.f112796N0);
                } catch (InvalidDatatypeValueException e) {
                    m70172Q(e.getKey(), e.getArgs());
                    m70172Q(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$SIMPLE_TYPE_WITH_CONTENT, new Object[]{qName.rawname});
                }
            } else if (s == 2 && this.f112786E0) {
                m70172Q(XmlErrorCodes.ELEM_COMPLEX_TYPE_LOCALLY_VALID$ELEMENT_ONLY_WITH_TEXT, new Object[]{qName.rawname});
            }
            short s2 = xSComplexTypeDecl.f112884m;
            if (s2 == 2 || s2 == 3) {
                int[] iArr = this.f112826w0;
                if (iArr[0] >= 0 && !this.f112822u0.endContentModel(iArr)) {
                    String m70183x = m70183x(this.f112822u0.whatCanGoHere(this.f112826w0));
                    int[] occurenceInfo = this.f112822u0.occurenceInfo(this.f112826w0);
                    if (occurenceInfo != null) {
                        int i = occurenceInfo[0];
                        int i2 = occurenceInfo[2];
                        if (i2 < i) {
                            int i3 = i - i2;
                            String str = qName.rawname;
                            if (i3 > 1) {
                                m70172Q("cvc-complex-type.2.4.j", new Object[]{str, this.f112822u0.getTermName(occurenceInfo[3]), Integer.toString(i), Integer.toString(i3)});
                            } else {
                                m70172Q("cvc-complex-type.2.4.i", new Object[]{str, this.f112822u0.getTermName(occurenceInfo[3]), Integer.toString(i)});
                            }
                        } else {
                            m70172Q("cvc-complex-type.2.4.b", new Object[]{qName.rawname, m70183x});
                        }
                    } else {
                        m70172Q("cvc-complex-type.2.4.b", new Object[]{qName.rawname, m70183x});
                    }
                }
            }
        }
        return obj2;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.textDecl(str, str2, augmentations);
        }
    }

    /* renamed from: u */
    public Object m70180u(QName qName, Object obj) {
        XSTypeDefinition xSTypeDefinition = this.f112816q0;
        if (xSTypeDefinition == null) {
            return null;
        }
        if (xSTypeDefinition.getTypeCategory() != 16) {
            return m70179t(qName, obj);
        }
        if (this.f112827x) {
            m70172Q("cvc-type.3.1.2", new Object[]{qName.rawname});
        }
        if (this.f112797O) {
            return null;
        }
        XSSimpleType xSSimpleType = (XSSimpleType) this.f112816q0;
        try {
            if (!this.fNormalizeData || this.f112810l) {
                this.fValidationState.setNormalizationRequired(true);
            }
            return xSSimpleType.validate(obj, this.fValidationState, this.f112796N0);
        } catch (InvalidDatatypeValueException e) {
            m70172Q(e.getKey(), e.getArgs());
            m70172Q("cvc-type.3.1.3", new Object[]{qName.rawname, obj});
            return null;
        }
    }

    /* renamed from: v */
    public final Augmentations m70181v(boolean z, SchemaGrammar[] schemaGrammarArr, Augmentations augmentations) {
        if (this.fAugPSVI) {
            augmentations = m70156A(augmentations);
            ElementPSVImpl elementPSVImpl = this.fCurrentPSVI;
            elementPSVImpl.fDeclaration = this.f112831z;
            elementPSVImpl.fTypeDecl = this.f112816q0;
            elementPSVImpl.fNotation = this.f112801Z;
            elementPSVImpl.fValidationContext = this.f112818s;
            elementPSVImpl.fNil = this.f112797O;
            int i = this.f112825w;
            int i2 = this.f112821u;
            if (i > i2) {
                elementPSVImpl.fValidationAttempted = (short) 2;
            } else if (i > this.f112823v) {
                elementPSVImpl.fValidationAttempted = (short) 0;
            } else {
                elementPSVImpl.fValidationAttempted = (short) 1;
            }
            if (i2 == i) {
                this.f112821u = i - 1;
            }
            if (this.f112823v == i) {
                this.f112823v = i - 1;
            }
            if (this.fDefaultValue != null) {
                elementPSVImpl.fSpecified = true;
            }
            elementPSVImpl.fValue.copyFrom(this.f112796N0);
            if (this.f112830y0) {
                String[] mergeContext = this.fXSIErrorReporter.mergeContext();
                ElementPSVImpl elementPSVImpl2 = this.fCurrentPSVI;
                elementPSVImpl2.fErrors = mergeContext;
                elementPSVImpl2.fValidity = mergeContext != null ? (short) 1 : (short) 2;
            } else {
                this.fCurrentPSVI.fValidity = (short) 0;
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

    /* renamed from: w */
    public void m70182w() {
        int i = this.f112825w;
        if (i == this.f112791J.length) {
            int i2 = i + 8;
            boolean[] zArr = new boolean[i2];
            System.arraycopy(this.f112829y, 0, zArr, 0, i);
            this.f112829y = zArr;
            XSElementDecl[] xSElementDeclArr = new XSElementDecl[i2];
            System.arraycopy(this.f112791J, 0, xSElementDeclArr, 0, this.f112825w);
            this.f112791J = xSElementDeclArr;
            boolean[] zArr2 = new boolean[i2];
            System.arraycopy(this.f112800Q, 0, zArr2, 0, this.f112825w);
            this.f112800Q = zArr2;
            XSNotationDecl[] xSNotationDeclArr = new XSNotationDecl[i2];
            System.arraycopy(this.f112809k0, 0, xSNotationDeclArr, 0, this.f112825w);
            this.f112809k0 = xSNotationDeclArr;
            XSTypeDefinition[] xSTypeDefinitionArr = new XSTypeDefinition[i2];
            System.arraycopy(this.f112820t0, 0, xSTypeDefinitionArr, 0, this.f112825w);
            this.f112820t0 = xSTypeDefinitionArr;
            XSCMValidator[] xSCMValidatorArr = new XSCMValidator[i2];
            System.arraycopy(this.f112824v0, 0, xSCMValidatorArr, 0, this.f112825w);
            this.f112824v0 = xSCMValidatorArr;
            boolean[] zArr3 = new boolean[i2];
            System.arraycopy(this.f112785D0, 0, zArr3, 0, this.f112825w);
            this.f112785D0 = zArr3;
            boolean[] zArr4 = new boolean[i2];
            System.arraycopy(this.f112787F0, 0, zArr4, 0, this.f112825w);
            this.f112787F0 = zArr4;
            boolean[] zArr5 = new boolean[i2];
            System.arraycopy(this.f112832z0, 0, zArr5, 0, this.f112825w);
            this.f112832z0 = zArr5;
            int[][] iArr = new int[i2];
            System.arraycopy(this.f112828x0, 0, iArr, 0, this.f112825w);
            this.f112828x0 = iArr;
        }
    }

    /* renamed from: x */
    public final String m70183x(Vector vector) {
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

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.xmlDecl(str, str2, str3, augmentations);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00b0 A[Catch: IOException -> 0x00bb, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x00bb, blocks: (B:38:0x0089, B:40:0x0093, B:43:0x0097, B:46:0x00b0), top: B:37:0x0089 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.xerces.impl.p117xs.SchemaGrammar m70184y(short r10, java.lang.String r11, org.apache.xerces.xni.QName r12, org.apache.xerces.xni.QName r13, org.apache.xerces.xni.XMLAttributes r14) {
        /*
            r9 = this;
            org.apache.xerces.impl.xs.XSGrammarBucket r0 = r9.f112811m
            org.apache.xerces.impl.xs.SchemaGrammar r0 = r0.getGrammar(r11)
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L34
            org.apache.xerces.impl.xs.XSDDescription r3 = r9.fXSDDescription
            r3.setNamespace(r11)
            org.apache.xerces.xni.grammars.XMLGrammarPool r3 = r9.fGrammarPool
            if (r3 == 0) goto L34
            org.apache.xerces.impl.xs.XSDDescription r0 = r9.fXSDDescription
            org.apache.xerces.xni.grammars.Grammar r0 = r3.retrieveGrammar(r0)
            org.apache.xerces.impl.xs.SchemaGrammar r0 = (org.apache.xerces.impl.p117xs.SchemaGrammar) r0
            if (r0 == 0) goto L34
            org.apache.xerces.impl.xs.XSGrammarBucket r3 = r9.f112811m
            boolean r4 = r9.fNamespaceGrowth
            boolean r3 = r3.putGrammar(r0, r1, r4)
            if (r3 != 0) goto L34
            org.apache.xerces.impl.xs.XMLSchemaValidator$XSIErrorReporter r0 = r9.fXSIErrorReporter
            org.apache.xerces.impl.XMLErrorReporter r0 = r0.f112848a
            java.lang.String r3 = "http://www.w3.org/TR/xml-schema-1"
            java.lang.String r4 = "GrammarConflict"
            r5 = 0
            r0.reportError(r3, r4, r5, r2)
            r0 = r5
        L34:
            boolean r3 = r9.fUseGrammarPoolOnly
            if (r3 != 0) goto Lda
            if (r0 == 0) goto L44
            boolean r3 = r9.fNamespaceGrowth
            if (r3 == 0) goto Lda
            boolean r3 = r9.m70164I(r0, r10, r13)
            if (r3 != 0) goto Lda
        L44:
            org.apache.xerces.impl.xs.XSDDescription r3 = r9.fXSDDescription
            r3.reset()
            org.apache.xerces.impl.xs.XSDDescription r3 = r9.fXSDDescription
            r3.fContextType = r10
            r3.setNamespace(r11)
            org.apache.xerces.impl.xs.XSDDescription r10 = r9.fXSDDescription
            r10.fEnclosedElementName = r12
            r10.fTriggeringComponent = r13
            r10.fAttributes = r14
            org.apache.xerces.xni.XMLLocator r12 = r9.f112803f
            if (r12 == 0) goto L63
            java.lang.String r12 = r12.getExpandedSystemId()
            r10.setBaseSystemId(r12)
        L63:
            java.util.Hashtable r10 = r9.fLocationPairs
            if (r11 != 0) goto L69
            java.lang.String r11 = org.apache.xerces.util.XMLSymbols.EMPTY_STRING
        L69:
            java.lang.Object r11 = r10.get(r11)
            if (r11 == 0) goto L7d
            org.apache.xerces.impl.xs.XMLSchemaLoader$a r11 = (org.apache.xerces.impl.p117xs.XMLSchemaLoader.C20047a) r11
            java.lang.String[] r11 = r11.m70152d()
            int r12 = r11.length
            if (r12 == 0) goto L7d
            org.apache.xerces.impl.xs.XSDDescription r12 = r9.fXSDDescription
            r9.m70173R(r12, r11, r0)
        L7d:
            if (r0 == 0) goto L85
            org.apache.xerces.impl.xs.XSDDescription r11 = r9.fXSDDescription
            java.lang.String[] r11 = r11.fLocationHints
            if (r11 == 0) goto Lda
        L85:
            if (r0 == 0) goto L89
            java.util.Hashtable r10 = org.apache.xerces.impl.p117xs.XMLSchemaValidator.f112777Z0
        L89:
            org.apache.xerces.impl.xs.XSDDescription r11 = r9.fXSDDescription     // Catch: java.io.IOException -> Lbb
            org.apache.xerces.xni.parser.XMLEntityResolver r12 = r9.fEntityResolver     // Catch: java.io.IOException -> Lbb
            org.apache.xerces.xni.parser.XMLInputSource r10 = org.apache.xerces.impl.p117xs.XMLSchemaLoader.resolveDocument(r11, r10, r12)     // Catch: java.io.IOException -> Lbb
            if (r0 == 0) goto Lad
            boolean r11 = r9.fNamespaceGrowth     // Catch: java.io.IOException -> Lbb
            if (r11 == 0) goto Lad
            org.apache.xerces.xs.StringList r11 = r0.getDocumentLocations()     // Catch: org.apache.xerces.util.URI.MalformedURIException -> Lad java.io.IOException -> Lbb
            java.lang.String r12 = r10.getSystemId()     // Catch: org.apache.xerces.util.URI.MalformedURIException -> Lad java.io.IOException -> Lbb
            java.lang.String r13 = r10.getBaseSystemId()     // Catch: org.apache.xerces.util.URI.MalformedURIException -> Lad java.io.IOException -> Lbb
            java.lang.String r12 = org.apache.xerces.impl.XMLEntityManager.expandSystemId(r12, r13, r2)     // Catch: org.apache.xerces.util.URI.MalformedURIException -> Lad java.io.IOException -> Lbb
            boolean r11 = r11.contains(r12)     // Catch: org.apache.xerces.util.URI.MalformedURIException -> Lad java.io.IOException -> Lbb
            r11 = r11 ^ r1
            goto Lae
        Lad:
            r11 = r1
        Lae:
            if (r11 == 0) goto Lda
            org.apache.xerces.impl.xs.XMLSchemaLoader r11 = r9.f112817r     // Catch: java.io.IOException -> Lbb
            org.apache.xerces.impl.xs.XSDDescription r12 = r9.fXSDDescription     // Catch: java.io.IOException -> Lbb
            java.util.Hashtable r13 = r9.fLocationPairs     // Catch: java.io.IOException -> Lbb
            org.apache.xerces.impl.xs.SchemaGrammar r0 = r11.m70144c(r12, r10, r13)     // Catch: java.io.IOException -> Lbb
            goto Lda
        Lbb:
            r10 = move-exception
            r8 = r10
            org.apache.xerces.impl.xs.XSDDescription r10 = r9.fXSDDescription
            java.lang.String[] r10 = r10.getLocationHints()
            org.apache.xerces.impl.xs.XMLSchemaValidator$XSIErrorReporter r9 = r9.fXSIErrorReporter
            org.apache.xerces.impl.XMLErrorReporter r3 = r9.f112848a
            java.lang.String r4 = "http://www.w3.org/TR/xml-schema-1"
            java.lang.String r5 = "schema_reference.4"
            java.lang.Object[] r6 = new java.lang.Object[r1]
            if (r10 == 0) goto Ld2
            r9 = r10[r2]
            goto Ld4
        Ld2:
            java.lang.String r9 = org.apache.xerces.util.XMLSymbols.EMPTY_STRING
        Ld4:
            r6[r2] = r9
            r7 = 0
            r3.reportError(r4, r5, r6, r7, r8)
        Lda:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p117xs.XMLSchemaValidator.m70184y(short, java.lang.String, org.apache.xerces.xni.QName, org.apache.xerces.xni.QName, org.apache.xerces.xni.XMLAttributes):org.apache.xerces.impl.xs.SchemaGrammar");
    }

    /* renamed from: z */
    public XSTypeDefinition m70185z(QName qName, String str, XMLAttributes xMLAttributes) {
        SchemaGrammar m70184y;
        try {
            QName qName2 = (QName) this.f112813o.validate(str, (ValidationContext) this.fValidationState, (ValidatedInfo) null);
            XSTypeDefinition globalTypeDecl = qName2.uri == SchemaSymbols.URI_SCHEMAFORSCHEMA ? SchemaGrammar.SG_SchemaNS.getGlobalTypeDecl(qName2.localpart) : null;
            if (globalTypeDecl == null && (m70184y = m70184y((short) 7, qName2.uri, qName, qName2, xMLAttributes)) != null) {
                globalTypeDecl = m70184y.getGlobalTypeDecl(qName2.localpart);
            }
            if (globalTypeDecl == null) {
                m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_NOT_FOUND, new Object[]{qName.rawname, str});
                return null;
            }
            XSTypeDefinition xSTypeDefinition = this.f112816q0;
            if (xSTypeDefinition != null) {
                XSElementDecl xSElementDecl = this.f112831z;
                short s = xSElementDecl != null ? xSElementDecl.fBlock : (short) 0;
                if (xSTypeDefinition.getTypeCategory() == 15) {
                    s = (short) (((XSComplexTypeDecl) this.f112816q0).f112881j | s);
                }
                if (!XSConstraints.checkTypeDerivationOk(globalTypeDecl, this.f112816q0, s)) {
                    m70172Q("cvc-elt.4.3", new Object[]{qName.rawname, str, XS10TypeHelper.getSchemaTypeName(this.f112816q0)});
                }
            }
            return globalTypeDecl;
        } catch (InvalidDatatypeValueException e) {
            m70172Q(e.getKey(), e.getArgs());
            String str2 = qName.rawname;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(SchemaSymbols.URI_XSI);
            stringBuffer.append(",");
            stringBuffer.append(SchemaSymbols.XSI_TYPE);
            m70172Q(XmlErrorCodes.ELEM_LOCALLY_VALID$XSI_TYPE_INVALID_QNAME, new Object[]{str2, stringBuffer.toString(), str});
            return null;
        }
    }
}
