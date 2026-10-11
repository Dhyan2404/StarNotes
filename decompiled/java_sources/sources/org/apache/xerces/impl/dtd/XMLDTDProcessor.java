package org.apache.xerces.impl.dtd;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.XMLDTDContentModelHandler;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDTDContentModelFilter;
import org.apache.xerces.xni.parser.XMLDTDContentModelSource;
import org.apache.xerces.xni.parser.XMLDTDFilter;
import org.apache.xerces.xni.parser.XMLDTDSource;

/* loaded from: classes13.dex */
public class XMLDTDProcessor implements XMLComponent, XMLDTDFilter, XMLDTDContentModelFilter {
    protected static final String DTD_VALIDATOR = "http://apache.org/xml/properties/internal/validator/dtd";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String GRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    protected static final String PARSER_SETTINGS = "http://apache.org/xml/features/internal/parser-settings";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected static final String VALIDATION = "http://xml.org/sax/features/validation";

    /* renamed from: o */
    public static final int f112181o = -1;

    /* renamed from: q */
    public static final Boolean[] f112183q;

    /* renamed from: r */
    public static final String[] f112184r;

    /* renamed from: s */
    public static final Object[] f112185s;

    /* renamed from: e */
    public boolean f112186e;

    /* renamed from: f */
    public boolean f112187f;
    protected XMLDTDContentModelHandler fDTDContentModelHandler;
    protected XMLDTDContentModelSource fDTDContentModelSource;
    protected DTDGrammar fDTDGrammar;
    protected XMLDTDHandler fDTDHandler;
    protected XMLDTDSource fDTDSource;
    protected boolean fDTDValidation;
    protected XMLErrorReporter fErrorReporter;
    protected DTDGrammarBucket fGrammarBucket;
    protected XMLGrammarPool fGrammarPool;
    protected boolean fInDTDIgnore;
    protected Locale fLocale;
    protected SymbolTable fSymbolTable;
    protected boolean fValidation;
    protected XMLDTDValidator fValidator;
    protected boolean fWarnDuplicateAttdef;
    protected boolean fWarnOnUndeclaredElemdef;

    /* renamed from: g */
    public final XMLEntityDecl f112188g = new XMLEntityDecl();

    /* renamed from: h */
    public final HashMap f112189h = new HashMap();

    /* renamed from: i */
    public String f112190i = null;

    /* renamed from: j */
    public final ArrayList f112191j = new ArrayList();

    /* renamed from: k */
    public final ArrayList f112192k = new ArrayList();

    /* renamed from: l */
    public HashMap f112193l;

    /* renamed from: m */
    public HashMap f112194m;

    /* renamed from: n */
    public HashMap f112195n;
    protected static final String WARN_ON_DUPLICATE_ATTDEF = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef";
    protected static final String WARN_ON_UNDECLARED_ELEMDEF = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef";
    protected static final String NOTIFY_CHAR_REFS = "http://apache.org/xml/features/scanner/notify-char-refs";

    /* renamed from: p */
    public static final String[] f112182p = {"http://xml.org/sax/features/validation", WARN_ON_DUPLICATE_ATTDEF, WARN_ON_UNDECLARED_ELEMDEF, NOTIFY_CHAR_REFS};

    static {
        Boolean bool = Boolean.FALSE;
        f112183q = new Boolean[]{null, bool, bool, null};
        f112184r = new String[]{"http://apache.org/xml/properties/internal/symbol-table", "http://apache.org/xml/properties/internal/error-reporter", "http://apache.org/xml/properties/internal/grammar-pool", DTD_VALIDATOR};
        f112185s = new Object[]{null, null, null, null};
    }

    public static void checkStandaloneEntityRef(String str, DTDGrammar dTDGrammar, XMLEntityDecl xMLEntityDecl, XMLErrorReporter xMLErrorReporter) throws XNIException {
        int entityDeclIndex = dTDGrammar.getEntityDeclIndex(str);
        if (entityDeclIndex > -1) {
            dTDGrammar.getEntityDecl(entityDeclIndex, xMLEntityDecl);
            if (xMLEntityDecl.inExternal) {
                xMLErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE", new Object[]{str}, (short) 1);
            }
        }
    }

    /* renamed from: a */
    public final void m69893a(DTDGrammar dTDGrammar) {
        int firstElementDeclIndex = dTDGrammar.getFirstElementDeclIndex();
        XMLContentSpec xMLContentSpec = new XMLContentSpec();
        while (firstElementDeclIndex >= 0) {
            short contentSpecType = dTDGrammar.getContentSpecType(firstElementDeclIndex);
            if (contentSpecType == 3 || contentSpecType == 2) {
                m69894b(dTDGrammar, firstElementDeclIndex, dTDGrammar.getContentSpecIndex(firstElementDeclIndex), xMLContentSpec);
            }
            firstElementDeclIndex = dTDGrammar.getNextElementDeclIndex(firstElementDeclIndex);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void any(Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.any(augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.any(augmentations);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x017f, code lost:
    
        if (r2.hasMoreTokens() != false) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x016e, code lost:
    
        if (r19 == org.apache.xerces.util.XMLSymbols.fENTITIESSymbol) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0172, code lost:
    
        if (r19 != org.apache.xerces.util.XMLSymbols.fIDREFSSymbol) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0178, code lost:
    
        if (isValidName(r6) != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0181, code lost:
    
        r4 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x015b, code lost:
    
        if (r2.hasMoreTokens() != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x015d, code lost:
    
        r6 = r2.nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0163, code lost:
    
        if (r19 != org.apache.xerces.util.XMLSymbols.fNMTOKENSSymbol) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0169, code lost:
    
        if (isValidNmtoken(r6) != false) goto L124;
     */
    @Override // org.apache.xerces.xni.XMLDTDHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void attributeDecl(java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String[] r20, java.lang.String r21, org.apache.xerces.xni.XMLString r22, org.apache.xerces.xni.XMLString r23, org.apache.xerces.xni.Augmentations r24) throws org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.dtd.XMLDTDProcessor.attributeDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String[], java.lang.String, org.apache.xerces.xni.XMLString, org.apache.xerces.xni.XMLString, org.apache.xerces.xni.Augmentations):void");
    }

    /* renamed from: b */
    public final void m69894b(DTDGrammar dTDGrammar, int i, int i2, XMLContentSpec xMLContentSpec) {
        dTDGrammar.getContentSpec(i2, xMLContentSpec);
        short s = xMLContentSpec.type;
        if (s == 0) {
            String str = (String) xMLContentSpec.value;
            if (str == null || dTDGrammar.getElementDeclIndex(str) != -1) {
                return;
            }
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "UndeclaredElementInContentSpec", new Object[]{dTDGrammar.m69881j(i).rawname, str}, (short) 0);
            return;
        }
        if (s == 4 || s == 5) {
            int i3 = ((int[]) xMLContentSpec.value)[0];
            int i4 = ((int[]) xMLContentSpec.otherValue)[0];
            m69894b(dTDGrammar, i, i3, xMLContentSpec);
            m69894b(dTDGrammar, i, i4, xMLContentSpec);
            return;
        }
        if (s == 2 || s == 1 || s == 3) {
            m69894b(dTDGrammar, i, ((int[]) xMLContentSpec.value)[0], xMLContentSpec);
        }
    }

    /* renamed from: c */
    public final boolean m69895c(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        int i3 = i;
        boolean z = true;
        while (i < i2) {
            char[] cArr = xMLString.f113585ch;
            char c = cArr[i];
            if (c != ' ') {
                if (i3 != i) {
                    cArr[i3] = c;
                }
                i3++;
                z = false;
            } else if (!z) {
                cArr[i3] = ' ';
                i3++;
                z = true;
            }
            i++;
        }
        if (i3 == i2) {
            return false;
        }
        if (z) {
            i3--;
        }
        xMLString.length = i3 - xMLString.offset;
        return true;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.comment(xMLString, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.comment(xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void element(String str, Augmentations augmentations) throws XNIException {
        if (this.f112187f && this.fValidation) {
            if (this.f112191j.contains(str)) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "DuplicateTypeInMixedContent", new Object[]{this.f112190i, str}, (short) 1);
            } else {
                this.f112191j.add(str);
            }
        }
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.element(str, augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.element(str, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        if (this.fValidation) {
            if (this.f112192k.contains(str)) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_ELEMENT_ALREADY_DECLARED", new Object[]{str}, (short) 1);
            } else {
                this.f112192k.add(str);
            }
        }
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.elementDecl(str, str2, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.elementDecl(str, str2, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void empty(Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.empty(augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.empty(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endAttlist(Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.endAttlist(augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endAttlist(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endConditional(Augmentations augmentations) throws XNIException {
        this.fInDTDIgnore = false;
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.endConditional(augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endConditional(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void endContentModel(Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.endContentModel(augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.endContentModel(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endDTD(Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.endDTD(augmentations);
            XMLGrammarPool xMLGrammarPool = this.fGrammarPool;
            if (xMLGrammarPool != null) {
                xMLGrammarPool.cacheGrammars("http://www.w3.org/TR/REC-xml", new Grammar[]{this.fDTDGrammar});
            }
        }
        if (this.fValidation) {
            DTDGrammar dTDGrammar2 = this.fDTDGrammar;
            if (dTDGrammar2 == null) {
                dTDGrammar2 = this.fGrammarBucket.m69889a();
            }
            for (Map.Entry entry : this.f112189h.entrySet()) {
                String str = (String) entry.getValue();
                if (dTDGrammar2.getNotationDeclIndex(str) == -1) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_NOTATION_NOT_DECLARED_FOR_UNPARSED_ENTITYDECL", new Object[]{(String) entry.getKey(), str}, (short) 1);
                }
            }
            for (Map.Entry entry2 : this.f112195n.entrySet()) {
                String str2 = (String) entry2.getKey();
                if (dTDGrammar2.getNotationDeclIndex(str2) == -1) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_NOTATION_NOT_DECLARED_FOR_NOTATIONTYPE_ATTRIBUTE", new Object[]{(String) entry2.getValue(), str2}, (short) 1);
                }
            }
            for (Map.Entry entry3 : this.f112194m.entrySet()) {
                String str3 = (String) entry3.getKey();
                if (dTDGrammar2.getContentSpecType(dTDGrammar2.getElementDeclIndex(str3)) == 1) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "NoNotationOnEmptyElement", new Object[]{str3, (String) entry3.getValue()}, (short) 1);
                }
            }
            this.f112193l = null;
            this.f112194m = null;
            if (this.fWarnOnUndeclaredElemdef) {
                m69893a(dTDGrammar2);
            }
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endDTD(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endExternalSubset(Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.endExternalSubset(augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endExternalSubset(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void endGroup(Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.endGroup(augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.endGroup(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.endParameterEntity(str, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.endParameterEntity(str, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar == null) {
            dTDGrammar = this.fGrammarBucket.m69889a();
        }
        if (dTDGrammar.getEntityDeclIndex(str) == -1) {
            DTDGrammar dTDGrammar2 = this.fDTDGrammar;
            if (dTDGrammar2 != null) {
                dTDGrammar2.externalEntityDecl(str, xMLResourceIdentifier, augmentations);
            }
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.externalEntityDecl(str, xMLResourceIdentifier, augmentations);
            }
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDContentModelSource
    public XMLDTDContentModelHandler getDTDContentModelHandler() {
        return this.fDTDContentModelHandler;
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public XMLDTDContentModelSource getDTDContentModelSource() {
        return this.fDTDContentModelSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDSource
    public XMLDTDHandler getDTDHandler() {
        return this.fDTDHandler;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public XMLDTDSource getDTDSource() {
        return this.fDTDSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112182p;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112183q[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112184r;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112185s[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f112182p.clone();
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f112184r.clone();
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.ignoredCharacters(xMLString, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.ignoredCharacters(xMLString, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar == null) {
            dTDGrammar = this.fGrammarBucket.m69889a();
        }
        if (dTDGrammar.getEntityDeclIndex(str) == -1) {
            DTDGrammar dTDGrammar2 = this.fDTDGrammar;
            if (dTDGrammar2 != null) {
                dTDGrammar2.internalEntityDecl(str, xMLString, xMLString2, augmentations);
            }
            XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
            if (xMLDTDHandler != null) {
                xMLDTDHandler.internalEntityDecl(str, xMLString, xMLString2, augmentations);
            }
        }
    }

    public boolean isValidName(String str) {
        return XMLChar.isValidName(str);
    }

    public boolean isValidNmtoken(String str) {
        return XMLChar.isValidNmtoken(str);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        if (this.fValidation) {
            DTDGrammar dTDGrammar = this.fDTDGrammar;
            if (dTDGrammar == null) {
                dTDGrammar = this.fGrammarBucket.m69889a();
            }
            if (dTDGrammar.getNotationDeclIndex(str) != -1) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "UniqueNotationName", new Object[]{str}, (short) 1);
            }
        }
        DTDGrammar dTDGrammar2 = this.fDTDGrammar;
        if (dTDGrammar2 != null) {
            dTDGrammar2.notationDecl(str, xMLResourceIdentifier, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.notationDecl(str, xMLResourceIdentifier, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void occurrence(short s, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.occurrence(s, augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.occurrence(s, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void pcdata(Augmentations augmentations) {
        this.f112187f = true;
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.pcdata(augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.pcdata(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.processingInstruction(str, xMLString, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.processingInstruction(str, xMLString, augmentations);
        }
    }

    public void reset() {
        this.fDTDGrammar = null;
        this.fInDTDIgnore = false;
        this.f112189h.clear();
        if (this.fValidation) {
            if (this.f112195n == null) {
                this.f112195n = new HashMap();
            }
            this.f112195n.clear();
            this.f112193l = new HashMap();
            this.f112194m = new HashMap();
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void separator(short s, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.separator(s, augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.separator(s, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDContentModelSource
    public void setDTDContentModelHandler(XMLDTDContentModelHandler xMLDTDContentModelHandler) {
        this.fDTDContentModelHandler = xMLDTDContentModelHandler;
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void setDTDContentModelSource(XMLDTDContentModelSource xMLDTDContentModelSource) {
        this.fDTDContentModelSource = xMLDTDContentModelSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLDTDSource
    public void setDTDHandler(XMLDTDHandler xMLDTDHandler) {
        this.fDTDHandler = xMLDTDHandler;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void setDTDSource(XMLDTDSource xMLDTDSource) {
        this.fDTDSource = xMLDTDSource;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startAttlist(String str, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.startAttlist(str, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startAttlist(str, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startConditional(short s, Augmentations augmentations) throws XNIException {
        this.fInDTDIgnore = s == 1;
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.startConditional(s, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startConditional(s, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void startContentModel(String str, Augmentations augmentations) throws XNIException {
        if (this.fValidation) {
            this.f112190i = str;
            this.f112191j.clear();
        }
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.startContentModel(str, augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.startContentModel(str, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
        this.f112189h.clear();
        this.f112192k.clear();
        if (!this.fGrammarBucket.m69889a().m69882k()) {
            this.fDTDGrammar = this.fGrammarBucket.m69889a();
        }
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.startDTD(xMLLocator, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startDTD(xMLLocator, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.startExternalSubset(xMLResourceIdentifier, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startExternalSubset(xMLResourceIdentifier, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void startGroup(Augmentations augmentations) throws XNIException {
        this.f112187f = false;
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.startGroup(augmentations);
        }
        XMLDTDContentModelHandler xMLDTDContentModelHandler = this.fDTDContentModelHandler;
        if (xMLDTDContentModelHandler != null) {
            xMLDTDContentModelHandler.startGroup(augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (this.f112186e && this.fDTDGrammar != null && this.fGrammarBucket.m69890b()) {
            checkStandaloneEntityRef(str, this.fDTDGrammar, this.f112188g, this.fErrorReporter);
        }
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.startParameterEntity(str, xMLResourceIdentifier, str2, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.startParameterEntity(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.textDecl(str, str2, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.textDecl(str, str2, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (this.fValidation) {
            this.f112189h.put(str, str2);
        }
        DTDGrammar dTDGrammar = this.fDTDGrammar;
        if (dTDGrammar != null) {
            dTDGrammar.unparsedEntityDecl(str, xMLResourceIdentifier, str2, augmentations);
        }
        XMLDTDHandler xMLDTDHandler = this.fDTDHandler;
        if (xMLDTDHandler != null) {
            xMLDTDHandler.unparsedEntityDecl(str, xMLResourceIdentifier, str2, augmentations);
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        boolean z;
        try {
            z = xMLComponentManager.getFeature("http://apache.org/xml/features/internal/parser-settings");
        } catch (XMLConfigurationException unused) {
            z = true;
        }
        if (!z) {
            reset();
            return;
        }
        try {
            this.fValidation = xMLComponentManager.getFeature("http://xml.org/sax/features/validation");
        } catch (XMLConfigurationException unused2) {
            this.fValidation = false;
        }
        try {
            this.fDTDValidation = !xMLComponentManager.getFeature("http://apache.org/xml/features/validation/schema");
        } catch (XMLConfigurationException unused3) {
            this.fDTDValidation = true;
        }
        try {
            this.fWarnDuplicateAttdef = xMLComponentManager.getFeature(WARN_ON_DUPLICATE_ATTDEF);
        } catch (XMLConfigurationException unused4) {
            this.fWarnDuplicateAttdef = false;
        }
        try {
            this.fWarnOnUndeclaredElemdef = xMLComponentManager.getFeature(WARN_ON_UNDECLARED_ELEMDEF);
        } catch (XMLConfigurationException unused5) {
            this.fWarnOnUndeclaredElemdef = false;
        }
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        try {
            this.fGrammarPool = (XMLGrammarPool) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        } catch (XMLConfigurationException unused6) {
            this.fGrammarPool = null;
        }
        try {
            this.fValidator = (XMLDTDValidator) xMLComponentManager.getProperty(DTD_VALIDATOR);
        } catch (ClassCastException | XMLConfigurationException unused7) {
            this.fValidator = null;
        }
        XMLDTDValidator xMLDTDValidator = this.fValidator;
        if (xMLDTDValidator != null) {
            this.fGrammarBucket = xMLDTDValidator.m69901t();
        } else {
            this.fGrammarBucket = null;
        }
        reset();
    }
}
