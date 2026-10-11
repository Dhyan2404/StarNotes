package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidatedInfo;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.identity.IdentityConstraint;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.SimpleLocator;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.StringListImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSNamedMap4Types;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSNamedMapImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSObjectListImpl;
import com.sun.org.apache.xerces.internal.p056xs.StringList;
import com.sun.org.apache.xerces.internal.p056xs.XSAnnotation;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeDeclaration;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeGroupDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSElementDeclaration;
import com.sun.org.apache.xerces.internal.p056xs.XSModel;
import com.sun.org.apache.xerces.internal.p056xs.XSModelGroupDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSNamedMap;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.p056xs.XSNotationDeclaration;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSParticle;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSWildcard;
import com.sun.org.apache.xerces.internal.parsers.DOMParser;
import com.sun.org.apache.xerces.internal.parsers.IntegratedParserConfiguration;
import com.sun.org.apache.xerces.internal.parsers.SAXParser;
import com.sun.org.apache.xerces.internal.util.SymbolHash;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
import com.sun.org.apache.xerces.internal.xni.grammars.XSGrammar;
import java.util.Vector;

/* loaded from: classes10.dex */
public class SchemaGrammar implements XSGrammar, XSNamespaceItem {
    private static final int BASICSET_COUNT = 29;
    private static final int FULLSET_COUNT = 46;
    private static final boolean[] GLOBAL_COMP;
    private static final int GRAMMAR_XS = 1;
    private static final int GRAMMAR_XSI = 2;
    private static final int INC_SIZE = 16;
    private static final int INITIAL_SIZE = 16;
    private static final short MAX_COMP_IDX = 16;
    private static final int REDEFINED_GROUP_INIT_SIZE = 2;
    public static final Schema4Annotations SG_Schema4Annotations;
    public static final BuiltinSchemaGrammar SG_SchemaNS;
    public static final BuiltinSchemaGrammar SG_XSI;
    public static final XSSimpleType fAnySimpleType;
    public static final XSComplexTypeDecl fAnyType = new XSAnyType();
    XSAnnotationImpl[] fAnnotations;
    private int fCTCount;
    private SimpleLocator[] fCTLocators;
    private XSComplexTypeDecl[] fComplexTypeDecls;
    private XSNamedMap[] fComponents;
    private DOMParser fDOMParser;
    private Vector fDocuments;
    boolean fFullChecked;
    SymbolHash fGlobalAttrDecls;
    SymbolHash fGlobalAttrGrpDecls;
    SymbolHash fGlobalElemDecls;
    SymbolHash fGlobalGroupDecls;
    SymbolHash fGlobalIDConstraintDecls;
    SymbolHash fGlobalNotationDecls;
    SymbolHash fGlobalTypeDecls;
    XSDDescription fGrammarDescription;
    Vector fImported;
    private Vector fLocations;
    int fNumAnnotations;
    private int fRGCount;
    private SimpleLocator[] fRGLocators;
    private XSGroupDecl[] fRedefinedGroupDecls;
    private SAXParser fSAXParser;
    private int fSubGroupCount;
    private XSElementDecl[] fSubGroups;
    private SymbolTable fSymbolTable;
    String fTargetNamespace;

    /* loaded from: classes10.dex */
    public static class BuiltinAttrDecl extends XSAttributeDecl {
        public BuiltinAttrDecl(String str, String str2, XSSimpleType xSSimpleType, short s) {
            this.fName = str;
            this.fTargetNamespace = str2;
            this.fType = xSSimpleType;
            this.fScope = s;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeDecl, com.sun.org.apache.xerces.internal.p056xs.XSAttributeDeclaration
        public XSAnnotation getAnnotation() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSAttributeDecl
        public void reset() {
        }

        public void setValues(String str, String str2, XSSimpleType xSSimpleType, short s, short s2, ValidatedInfo validatedInfo, XSComplexTypeDecl xSComplexTypeDecl) {
        }
    }

    /* loaded from: classes10.dex */
    public static class BuiltinSchemaGrammar extends SchemaGrammar {
        public BuiltinSchemaGrammar(int i) {
            SchemaDVFactory schemaDVFactory = SchemaDVFactory.getInstance();
            if (i == 1) {
                String str = SchemaSymbols.URI_SCHEMAFORSCHEMA;
                this.fTargetNamespace = str;
                XSDDescription xSDDescription = new XSDDescription();
                this.fGrammarDescription = xSDDescription;
                xSDDescription.fContextType = (short) 3;
                xSDDescription.setNamespace(str);
                this.fGlobalAttrDecls = new SymbolHash(1);
                this.fGlobalAttrGrpDecls = new SymbolHash(1);
                this.fGlobalElemDecls = new SymbolHash(1);
                this.fGlobalGroupDecls = new SymbolHash(1);
                this.fGlobalNotationDecls = new SymbolHash(1);
                this.fGlobalIDConstraintDecls = new SymbolHash(1);
                SymbolHash builtInTypes = schemaDVFactory.getBuiltInTypes();
                this.fGlobalTypeDecls = builtInTypes;
                XSComplexTypeDecl xSComplexTypeDecl = SchemaGrammar.fAnyType;
                builtInTypes.put(xSComplexTypeDecl.getName(), xSComplexTypeDecl);
                return;
            }
            if (i == 2) {
                String str2 = SchemaSymbols.URI_XSI;
                this.fTargetNamespace = str2;
                XSDDescription xSDDescription2 = new XSDDescription();
                this.fGrammarDescription = xSDDescription2;
                xSDDescription2.fContextType = (short) 3;
                xSDDescription2.setNamespace(str2);
                this.fGlobalAttrGrpDecls = new SymbolHash(1);
                this.fGlobalElemDecls = new SymbolHash(1);
                this.fGlobalGroupDecls = new SymbolHash(1);
                this.fGlobalNotationDecls = new SymbolHash(1);
                this.fGlobalIDConstraintDecls = new SymbolHash(1);
                this.fGlobalTypeDecls = new SymbolHash(1);
                this.fGlobalAttrDecls = new SymbolHash(8);
                String str3 = SchemaSymbols.XSI_TYPE;
                this.fGlobalAttrDecls.put(str3, new BuiltinAttrDecl(str3, str2, schemaDVFactory.getBuiltInType("QName"), (short) 1));
                String str4 = SchemaSymbols.XSI_NIL;
                this.fGlobalAttrDecls.put(str4, new BuiltinAttrDecl(str4, str2, schemaDVFactory.getBuiltInType("boolean"), (short) 1));
                XSSimpleType builtInType = schemaDVFactory.getBuiltInType("anyURI");
                String str5 = SchemaSymbols.XSI_SCHEMALOCATION;
                this.fGlobalAttrDecls.put(str5, new BuiltinAttrDecl(str5, str2, schemaDVFactory.createTypeList(null, str2, (short) 0, builtInType, null), (short) 1));
                String str6 = SchemaSymbols.XSI_NONAMESPACESCHEMALOCATION;
                this.fGlobalAttrDecls.put(str6, new BuiltinAttrDecl(str6, str2, builtInType, (short) 1));
            }
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public synchronized void addDocument(Object obj, String str) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public synchronized DOMParser getDOMParser() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar, com.sun.org.apache.xerces.internal.xni.grammars.Grammar
        public XMLGrammarDescription getGrammarDescription() {
            return this.fGrammarDescription.makeClone();
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public synchronized SAXParser getSAXParser() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void setImportedGrammars(Vector vector) {
        }
    }

    /* loaded from: classes10.dex */
    public static final class Schema4Annotations extends SchemaGrammar {
        public Schema4Annotations() {
            String str = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            this.fTargetNamespace = str;
            XSDDescription xSDDescription = new XSDDescription();
            this.fGrammarDescription = xSDDescription;
            xSDDescription.fContextType = (short) 3;
            xSDDescription.setNamespace(str);
            this.fGlobalAttrDecls = new SymbolHash(1);
            this.fGlobalAttrGrpDecls = new SymbolHash(1);
            this.fGlobalElemDecls = new SymbolHash(6);
            this.fGlobalGroupDecls = new SymbolHash(1);
            this.fGlobalNotationDecls = new SymbolHash(1);
            this.fGlobalIDConstraintDecls = new SymbolHash(1);
            this.fGlobalTypeDecls = SchemaGrammar.SG_SchemaNS.fGlobalTypeDecls;
            String str2 = SchemaSymbols.ELT_ANNOTATION;
            XSElementDecl createAnnotationElementDecl = createAnnotationElementDecl(str2);
            String str3 = SchemaSymbols.ELT_DOCUMENTATION;
            XSElementDecl createAnnotationElementDecl2 = createAnnotationElementDecl(str3);
            String str4 = SchemaSymbols.ELT_APPINFO;
            XSElementDecl createAnnotationElementDecl3 = createAnnotationElementDecl(str4);
            this.fGlobalElemDecls.put(createAnnotationElementDecl.fName, createAnnotationElementDecl);
            this.fGlobalElemDecls.put(createAnnotationElementDecl2.fName, createAnnotationElementDecl2);
            this.fGlobalElemDecls.put(createAnnotationElementDecl3.fName, createAnnotationElementDecl3);
            XSComplexTypeDecl xSComplexTypeDecl = new XSComplexTypeDecl();
            XSComplexTypeDecl xSComplexTypeDecl2 = new XSComplexTypeDecl();
            XSComplexTypeDecl xSComplexTypeDecl3 = new XSComplexTypeDecl();
            createAnnotationElementDecl.fType = xSComplexTypeDecl;
            createAnnotationElementDecl2.fType = xSComplexTypeDecl2;
            createAnnotationElementDecl3.fType = xSComplexTypeDecl3;
            XSAttributeGroupDecl xSAttributeGroupDecl = new XSAttributeGroupDecl();
            XSAttributeGroupDecl xSAttributeGroupDecl2 = new XSAttributeGroupDecl();
            XSAttributeGroupDecl xSAttributeGroupDecl3 = new XSAttributeGroupDecl();
            XSAttributeUseImpl xSAttributeUseImpl = new XSAttributeUseImpl();
            XSAttributeDecl xSAttributeDecl = new XSAttributeDecl();
            xSAttributeUseImpl.fAttrDecl = xSAttributeDecl;
            xSAttributeDecl.setValues(SchemaSymbols.ATT_ID, null, (XSSimpleType) this.fGlobalTypeDecls.get("ID"), (short) 0, (short) 2, null, xSComplexTypeDecl, null);
            xSAttributeUseImpl.fUse = (short) 0;
            xSAttributeUseImpl.fConstraintType = (short) 0;
            XSAttributeUseImpl xSAttributeUseImpl2 = new XSAttributeUseImpl();
            XSAttributeDecl xSAttributeDecl2 = new XSAttributeDecl();
            xSAttributeUseImpl2.fAttrDecl = xSAttributeDecl2;
            String str5 = SchemaSymbols.ATT_SOURCE;
            xSAttributeDecl2.setValues(str5, null, (XSSimpleType) this.fGlobalTypeDecls.get("anyURI"), (short) 0, (short) 2, null, xSComplexTypeDecl2, null);
            xSAttributeUseImpl2.fUse = (short) 0;
            xSAttributeUseImpl2.fConstraintType = (short) 0;
            XSAttributeUseImpl xSAttributeUseImpl3 = new XSAttributeUseImpl();
            XSAttributeDecl xSAttributeDecl3 = new XSAttributeDecl();
            xSAttributeUseImpl3.fAttrDecl = xSAttributeDecl3;
            xSAttributeDecl3.setValues("lang".intern(), NamespaceContext.XML_URI, (XSSimpleType) this.fGlobalTypeDecls.get("language"), (short) 0, (short) 2, null, xSComplexTypeDecl2, null);
            xSAttributeUseImpl3.fUse = (short) 0;
            xSAttributeUseImpl3.fConstraintType = (short) 0;
            XSAttributeUseImpl xSAttributeUseImpl4 = new XSAttributeUseImpl();
            XSAttributeDecl xSAttributeDecl4 = new XSAttributeDecl();
            xSAttributeUseImpl4.fAttrDecl = xSAttributeDecl4;
            xSAttributeDecl4.setValues(str5, null, (XSSimpleType) this.fGlobalTypeDecls.get("anyURI"), (short) 0, (short) 2, null, xSComplexTypeDecl3, null);
            xSAttributeUseImpl4.fUse = (short) 0;
            xSAttributeUseImpl4.fConstraintType = (short) 0;
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fNamespaceList = new String[]{this.fTargetNamespace, null};
            xSWildcardDecl.fType = (short) 2;
            xSWildcardDecl.fProcessContents = (short) 3;
            xSAttributeGroupDecl.addAttributeUse(xSAttributeUseImpl);
            xSAttributeGroupDecl.fAttributeWC = xSWildcardDecl;
            xSAttributeGroupDecl2.addAttributeUse(xSAttributeUseImpl2);
            xSAttributeGroupDecl2.addAttributeUse(xSAttributeUseImpl3);
            xSAttributeGroupDecl2.fAttributeWC = xSWildcardDecl;
            xSAttributeGroupDecl3.addAttributeUse(xSAttributeUseImpl4);
            xSAttributeGroupDecl3.fAttributeWC = xSWildcardDecl;
            XSParticleDecl createUnboundedModelGroupParticle = createUnboundedModelGroupParticle();
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short) 101;
            xSModelGroupImpl.fParticleCount = 2;
            XSParticleDecl[] xSParticleDeclArr = new XSParticleDecl[2];
            xSModelGroupImpl.fParticles = xSParticleDeclArr;
            xSParticleDeclArr[0] = createChoiceElementParticle(createAnnotationElementDecl3);
            xSModelGroupImpl.fParticles[1] = createChoiceElementParticle(createAnnotationElementDecl2);
            createUnboundedModelGroupParticle.fValue = xSModelGroupImpl;
            XSParticleDecl createUnboundedAnyWildcardSequenceParticle = createUnboundedAnyWildcardSequenceParticle();
            String str6 = this.fTargetNamespace;
            XSComplexTypeDecl xSComplexTypeDecl4 = SchemaGrammar.fAnyType;
            xSComplexTypeDecl.setValues("#AnonType_" + str2, str6, xSComplexTypeDecl4, (short) 2, (short) 0, (short) 3, (short) 2, false, xSAttributeGroupDecl, null, createUnboundedModelGroupParticle, new XSObjectListImpl(null, 0));
            xSComplexTypeDecl.setName("#AnonType_" + str2);
            xSComplexTypeDecl.setIsAnonymous();
            xSComplexTypeDecl2.setValues("#AnonType_" + str3, this.fTargetNamespace, xSComplexTypeDecl4, (short) 2, (short) 0, (short) 3, (short) 3, false, xSAttributeGroupDecl2, null, createUnboundedAnyWildcardSequenceParticle, new XSObjectListImpl(null, 0));
            xSComplexTypeDecl2.setName("#AnonType_" + str3);
            xSComplexTypeDecl2.setIsAnonymous();
            xSComplexTypeDecl3.setValues("#AnonType_" + str4, this.fTargetNamespace, xSComplexTypeDecl4, (short) 2, (short) 0, (short) 3, (short) 3, false, xSAttributeGroupDecl3, null, createUnboundedAnyWildcardSequenceParticle, new XSObjectListImpl(null, 0));
            xSComplexTypeDecl3.setName("#AnonType_" + str4);
            xSComplexTypeDecl3.setIsAnonymous();
        }

        private XSElementDecl createAnnotationElementDecl(String str) {
            XSElementDecl xSElementDecl = new XSElementDecl();
            xSElementDecl.fName = str;
            xSElementDecl.fTargetNamespace = this.fTargetNamespace;
            xSElementDecl.setIsGlobal();
            xSElementDecl.fBlock = (short) 7;
            xSElementDecl.setConstraintType((short) 0);
            return xSElementDecl;
        }

        private XSParticleDecl createAnyLaxWildcardParticle() {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 1;
            xSParticleDecl.fMaxOccurs = 1;
            xSParticleDecl.fType = (short) 2;
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fNamespaceList = null;
            xSWildcardDecl.fType = (short) 1;
            xSWildcardDecl.fProcessContents = (short) 3;
            xSParticleDecl.fValue = xSWildcardDecl;
            return xSParticleDecl;
        }

        private XSParticleDecl createChoiceElementParticle(XSElementDecl xSElementDecl) {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 1;
            xSParticleDecl.fMaxOccurs = 1;
            xSParticleDecl.fType = (short) 1;
            xSParticleDecl.fValue = xSElementDecl;
            return xSParticleDecl;
        }

        private XSParticleDecl createUnboundedAnyWildcardSequenceParticle() {
            XSParticleDecl createUnboundedModelGroupParticle = createUnboundedModelGroupParticle();
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short) 102;
            xSModelGroupImpl.fParticleCount = 1;
            xSModelGroupImpl.fParticles = r2;
            XSParticleDecl[] xSParticleDeclArr = {createAnyLaxWildcardParticle()};
            createUnboundedModelGroupParticle.fValue = xSModelGroupImpl;
            return createUnboundedModelGroupParticle;
        }

        private XSParticleDecl createUnboundedModelGroupParticle() {
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 0;
            xSParticleDecl.fMaxOccurs = -1;
            xSParticleDecl.fType = (short) 3;
            return xSParticleDecl;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public synchronized void addDocument(Object obj, String str) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public synchronized DOMParser getDOMParser() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar, com.sun.org.apache.xerces.internal.xni.grammars.Grammar
        public XMLGrammarDescription getGrammarDescription() {
            return this.fGrammarDescription.makeClone();
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public synchronized SAXParser getSAXParser() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar
        public void setImportedGrammars(Vector vector) {
        }
    }

    /* loaded from: classes10.dex */
    public static class XSAnyType extends XSComplexTypeDecl {
        public XSAnyType() {
            this.fName = "anyType";
            this.fTargetNamespace = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            this.fBaseType = this;
            this.fDerivedBy = (short) 2;
            this.fContentType = (short) 3;
            this.fParticle = null;
            this.fAttrGrp = null;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl, com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
        public XSObjectList getAnnotations() {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl
        public XSAttributeGroupDecl getAttrGrp() {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short) 3;
            XSAttributeGroupDecl xSAttributeGroupDecl = new XSAttributeGroupDecl();
            xSAttributeGroupDecl.fAttributeWC = xSWildcardDecl;
            return xSAttributeGroupDecl;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl, com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
        public XSObjectList getAttributeUses() {
            return new XSObjectListImpl(null, 0);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl, com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
        public XSWildcard getAttributeWildcard() {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short) 3;
            return xSWildcardDecl;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl, com.sun.org.apache.xerces.internal.p056xs.XSComplexTypeDefinition
        public XSParticle getParticle() {
            XSWildcardDecl xSWildcardDecl = new XSWildcardDecl();
            xSWildcardDecl.fProcessContents = (short) 3;
            XSParticleDecl xSParticleDecl = new XSParticleDecl();
            xSParticleDecl.fMinOccurs = 0;
            xSParticleDecl.fMaxOccurs = -1;
            xSParticleDecl.fType = (short) 2;
            xSParticleDecl.fValue = xSWildcardDecl;
            XSModelGroupImpl xSModelGroupImpl = new XSModelGroupImpl();
            xSModelGroupImpl.fCompositor = (short) 102;
            xSModelGroupImpl.fParticleCount = 1;
            xSModelGroupImpl.fParticles = r3;
            XSParticleDecl[] xSParticleDeclArr = {xSParticleDecl};
            XSParticleDecl xSParticleDecl2 = new XSParticleDecl();
            xSParticleDecl2.fType = (short) 3;
            xSParticleDecl2.fValue = xSModelGroupImpl;
            return xSParticleDecl2;
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl
        public void reset() {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl
        public void setContainsTypeID() {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl
        public void setIsAbstractType() {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl
        public void setIsAnonymous() {
        }

        @Override // com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl
        public void setName(String str) {
        }

        public void setValues(String str, String str2, XSTypeDefinition xSTypeDefinition, short s, short s2, short s3, short s4, boolean z, XSAttributeGroupDecl xSAttributeGroupDecl, XSSimpleType xSSimpleType, XSParticleDecl xSParticleDecl) {
        }
    }

    static {
        BuiltinSchemaGrammar builtinSchemaGrammar = new BuiltinSchemaGrammar(1);
        SG_SchemaNS = builtinSchemaGrammar;
        SG_Schema4Annotations = new Schema4Annotations();
        fAnySimpleType = (XSSimpleType) builtinSchemaGrammar.getGlobalTypeDecl("anySimpleType");
        SG_XSI = new BuiltinSchemaGrammar(2);
        GLOBAL_COMP = new boolean[]{false, true, true, true, false, true, true, false, false, false, false, true, false, false, false, true, true};
    }

    public SchemaGrammar() {
        this.fGrammarDescription = null;
        this.fAnnotations = null;
        this.fSymbolTable = null;
        this.fSAXParser = null;
        this.fDOMParser = null;
        this.fImported = null;
        this.fCTCount = 0;
        this.fComplexTypeDecls = new XSComplexTypeDecl[16];
        this.fCTLocators = new SimpleLocator[16];
        this.fRGCount = 0;
        this.fRedefinedGroupDecls = new XSGroupDecl[2];
        this.fRGLocators = new SimpleLocator[1];
        this.fFullChecked = false;
        this.fSubGroupCount = 0;
        this.fSubGroups = new XSElementDecl[16];
        this.fComponents = null;
        this.fDocuments = null;
        this.fLocations = null;
    }

    public static final XSComplexTypeDecl[] resize(XSComplexTypeDecl[] xSComplexTypeDeclArr, int i) {
        XSComplexTypeDecl[] xSComplexTypeDeclArr2 = new XSComplexTypeDecl[i];
        System.arraycopy(xSComplexTypeDeclArr, 0, xSComplexTypeDeclArr2, 0, Math.min(xSComplexTypeDeclArr.length, i));
        return xSComplexTypeDeclArr2;
    }

    public void addAnnotation(XSAnnotationImpl xSAnnotationImpl) {
        if (xSAnnotationImpl == null) {
            return;
        }
        XSAnnotationImpl[] xSAnnotationImplArr = this.fAnnotations;
        if (xSAnnotationImplArr == null) {
            this.fAnnotations = new XSAnnotationImpl[2];
        } else {
            int i = this.fNumAnnotations;
            if (i == xSAnnotationImplArr.length) {
                XSAnnotationImpl[] xSAnnotationImplArr2 = new XSAnnotationImpl[i << 1];
                System.arraycopy(xSAnnotationImplArr, 0, xSAnnotationImplArr2, 0, i);
                this.fAnnotations = xSAnnotationImplArr2;
            }
        }
        XSAnnotationImpl[] xSAnnotationImplArr3 = this.fAnnotations;
        int i2 = this.fNumAnnotations;
        this.fNumAnnotations = i2 + 1;
        xSAnnotationImplArr3[i2] = xSAnnotationImpl;
    }

    public void addComplexTypeDecl(XSComplexTypeDecl xSComplexTypeDecl, SimpleLocator simpleLocator) {
        int i = this.fCTCount;
        XSComplexTypeDecl[] xSComplexTypeDeclArr = this.fComplexTypeDecls;
        if (i == xSComplexTypeDeclArr.length) {
            this.fComplexTypeDecls = resize(xSComplexTypeDeclArr, i + 16);
            this.fCTLocators = resize(this.fCTLocators, this.fCTCount + 16);
        }
        SimpleLocator[] simpleLocatorArr = this.fCTLocators;
        int i2 = this.fCTCount;
        simpleLocatorArr[i2] = simpleLocator;
        XSComplexTypeDecl[] xSComplexTypeDeclArr2 = this.fComplexTypeDecls;
        this.fCTCount = i2 + 1;
        xSComplexTypeDeclArr2[i2] = xSComplexTypeDecl;
    }

    public synchronized void addDocument(Object obj, String str) {
        if (this.fDocuments == null) {
            this.fDocuments = new Vector();
            this.fLocations = new Vector();
        }
        this.fDocuments.addElement(obj);
        this.fLocations.addElement(str);
    }

    public void addGlobalAttributeDecl(XSAttributeDecl xSAttributeDecl) {
        this.fGlobalAttrDecls.put(xSAttributeDecl.fName, xSAttributeDecl);
    }

    public void addGlobalAttributeGroupDecl(XSAttributeGroupDecl xSAttributeGroupDecl) {
        this.fGlobalAttrGrpDecls.put(xSAttributeGroupDecl.fName, xSAttributeGroupDecl);
    }

    public void addGlobalElementDecl(XSElementDecl xSElementDecl) {
        this.fGlobalElemDecls.put(xSElementDecl.fName, xSElementDecl);
        if (xSElementDecl.fSubGroup != null) {
            int i = this.fSubGroupCount;
            XSElementDecl[] xSElementDeclArr = this.fSubGroups;
            if (i == xSElementDeclArr.length) {
                this.fSubGroups = resize(xSElementDeclArr, i + 16);
            }
            XSElementDecl[] xSElementDeclArr2 = this.fSubGroups;
            int i2 = this.fSubGroupCount;
            this.fSubGroupCount = i2 + 1;
            xSElementDeclArr2[i2] = xSElementDecl;
        }
    }

    public void addGlobalGroupDecl(XSGroupDecl xSGroupDecl) {
        this.fGlobalGroupDecls.put(xSGroupDecl.fName, xSGroupDecl);
    }

    public void addGlobalNotationDecl(XSNotationDecl xSNotationDecl) {
        this.fGlobalNotationDecls.put(xSNotationDecl.fName, xSNotationDecl);
    }

    public void addGlobalTypeDecl(XSTypeDefinition xSTypeDefinition) {
        this.fGlobalTypeDecls.put(xSTypeDefinition.getName(), xSTypeDefinition);
    }

    public final void addIDConstraintDecl(XSElementDecl xSElementDecl, IdentityConstraint identityConstraint) {
        xSElementDecl.addIDConstraint(identityConstraint);
        this.fGlobalIDConstraintDecls.put(identityConstraint.getIdentityConstraintName(), identityConstraint);
    }

    public void addRedefinedGroupDecl(XSGroupDecl xSGroupDecl, XSGroupDecl xSGroupDecl2, SimpleLocator simpleLocator) {
        int i = this.fRGCount;
        XSGroupDecl[] xSGroupDeclArr = this.fRedefinedGroupDecls;
        if (i == xSGroupDeclArr.length) {
            this.fRedefinedGroupDecls = resize(xSGroupDeclArr, i << 1);
            this.fRGLocators = resize(this.fRGLocators, this.fRGCount);
        }
        SimpleLocator[] simpleLocatorArr = this.fRGLocators;
        int i2 = this.fRGCount;
        simpleLocatorArr[i2 / 2] = simpleLocator;
        XSGroupDecl[] xSGroupDeclArr2 = this.fRedefinedGroupDecls;
        int i3 = i2 + 1;
        xSGroupDeclArr2[i2] = xSGroupDecl;
        this.fRGCount = i3 + 1;
        xSGroupDeclArr2[i3] = xSGroupDecl2;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public XSObjectList getAnnotations() {
        return new XSObjectListImpl(this.fAnnotations, this.fNumAnnotations);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public XSAttributeDeclaration getAttributeDeclaration(String str) {
        return getGlobalAttributeDecl(str);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public XSAttributeGroupDefinition getAttributeGroup(String str) {
        return getGlobalAttributeGroupDecl(str);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public synchronized XSNamedMap getComponents(short s) {
        SymbolHash symbolHash;
        if (s > 0 && s <= 16) {
            if (GLOBAL_COMP[s]) {
                if (this.fComponents == null) {
                    this.fComponents = new XSNamedMap[17];
                }
                XSNamedMap[] xSNamedMapArr = this.fComponents;
                if (xSNamedMapArr[s] == null) {
                    if (s == 1) {
                        symbolHash = this.fGlobalAttrDecls;
                    } else if (s != 2) {
                        if (s != 3) {
                            if (s == 5) {
                                symbolHash = this.fGlobalAttrGrpDecls;
                            } else if (s == 6) {
                                symbolHash = this.fGlobalGroupDecls;
                            } else if (s == 11) {
                                symbolHash = this.fGlobalNotationDecls;
                            } else if (s != 15 && s != 16) {
                                symbolHash = null;
                            }
                        }
                        symbolHash = this.fGlobalTypeDecls;
                    } else {
                        symbolHash = this.fGlobalElemDecls;
                    }
                    if (s != 15 && s != 16) {
                        xSNamedMapArr[s] = new XSNamedMapImpl(this.fTargetNamespace, symbolHash);
                    }
                    xSNamedMapArr[s] = new XSNamedMap4Types(this.fTargetNamespace, symbolHash, s);
                }
                return this.fComponents[s];
            }
        }
        return XSNamedMapImpl.EMPTY_MAP;
    }

    public synchronized DOMParser getDOMParser() {
        DOMParser dOMParser = this.fDOMParser;
        if (dOMParser != null) {
            return dOMParser;
        }
        IntegratedParserConfiguration integratedParserConfiguration = new IntegratedParserConfiguration(this.fSymbolTable);
        integratedParserConfiguration.setFeature("http://xml.org/sax/features/namespaces", true);
        integratedParserConfiguration.setFeature("http://xml.org/sax/features/validation", false);
        DOMParser dOMParser2 = new DOMParser(integratedParserConfiguration);
        this.fDOMParser = dOMParser2;
        return dOMParser2;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public StringList getDocumentLocations() {
        return new StringListImpl(this.fLocations);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public XSElementDeclaration getElementDeclaration(String str) {
        return getGlobalElementDecl(str);
    }

    public final XSAttributeDecl getGlobalAttributeDecl(String str) {
        return (XSAttributeDecl) this.fGlobalAttrDecls.get(str);
    }

    public final XSAttributeGroupDecl getGlobalAttributeGroupDecl(String str) {
        return (XSAttributeGroupDecl) this.fGlobalAttrGrpDecls.get(str);
    }

    public final XSElementDecl getGlobalElementDecl(String str) {
        return (XSElementDecl) this.fGlobalElemDecls.get(str);
    }

    public final XSGroupDecl getGlobalGroupDecl(String str) {
        return (XSGroupDecl) this.fGlobalGroupDecls.get(str);
    }

    public final XSNotationDecl getGlobalNotationDecl(String str) {
        return (XSNotationDecl) this.fGlobalNotationDecls.get(str);
    }

    public final XSTypeDefinition getGlobalTypeDecl(String str) {
        return (XSTypeDefinition) this.fGlobalTypeDecls.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.Grammar
    public XMLGrammarDescription getGrammarDescription() {
        return this.fGrammarDescription;
    }

    public final IdentityConstraint getIDConstraintDecl(String str) {
        return (IdentityConstraint) this.fGlobalIDConstraintDecls.get(str);
    }

    public Vector getImportedGrammars() {
        return this.fImported;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public XSModelGroupDefinition getModelGroupDefinition(String str) {
        return getGlobalGroupDecl(str);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public XSNotationDeclaration getNotationDeclaration(String str) {
        return getGlobalNotationDecl(str);
    }

    public final SimpleLocator[] getRGLocators() {
        int i = this.fRGCount;
        XSGroupDecl[] xSGroupDeclArr = this.fRedefinedGroupDecls;
        if (i < xSGroupDeclArr.length) {
            this.fRedefinedGroupDecls = resize(xSGroupDeclArr, i);
            this.fRGLocators = resize(this.fRGLocators, this.fRGCount / 2);
        }
        return this.fRGLocators;
    }

    public final XSGroupDecl[] getRedefinedGroupDecls() {
        int i = this.fRGCount;
        XSGroupDecl[] xSGroupDeclArr = this.fRedefinedGroupDecls;
        if (i < xSGroupDeclArr.length) {
            this.fRedefinedGroupDecls = resize(xSGroupDeclArr, i);
            this.fRGLocators = resize(this.fRGLocators, this.fRGCount / 2);
        }
        return this.fRedefinedGroupDecls;
    }

    public synchronized SAXParser getSAXParser() {
        SAXParser sAXParser = this.fSAXParser;
        if (sAXParser != null) {
            return sAXParser;
        }
        IntegratedParserConfiguration integratedParserConfiguration = new IntegratedParserConfiguration(this.fSymbolTable);
        integratedParserConfiguration.setFeature("http://xml.org/sax/features/namespaces", true);
        integratedParserConfiguration.setFeature("http://xml.org/sax/features/validation", false);
        SAXParser sAXParser2 = new SAXParser(integratedParserConfiguration);
        this.fSAXParser = sAXParser2;
        return sAXParser2;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public String getSchemaNamespace() {
        return this.fTargetNamespace;
    }

    public final XSElementDecl[] getSubstitutionGroups() {
        int i = this.fSubGroupCount;
        XSElementDecl[] xSElementDeclArr = this.fSubGroups;
        if (i < xSElementDeclArr.length) {
            this.fSubGroups = resize(xSElementDeclArr, i);
        }
        return this.fSubGroups;
    }

    public final String getTargetNamespace() {
        return this.fTargetNamespace;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem
    public XSTypeDefinition getTypeDefinition(String str) {
        return getGlobalTypeDecl(str);
    }

    public final SimpleLocator[] getUncheckedCTLocators() {
        int i = this.fCTCount;
        if (i < this.fCTLocators.length) {
            this.fComplexTypeDecls = resize(this.fComplexTypeDecls, i);
            this.fCTLocators = resize(this.fCTLocators, this.fCTCount);
        }
        return this.fCTLocators;
    }

    public final XSComplexTypeDecl[] getUncheckedComplexTypeDecls() {
        int i = this.fCTCount;
        XSComplexTypeDecl[] xSComplexTypeDeclArr = this.fComplexTypeDecls;
        if (i < xSComplexTypeDeclArr.length) {
            this.fComplexTypeDecls = resize(xSComplexTypeDeclArr, i);
            this.fCTLocators = resize(this.fCTLocators, this.fCTCount);
        }
        return this.fComplexTypeDecls;
    }

    public final boolean hasIDConstraints() {
        return this.fGlobalIDConstraintDecls.getLength() > 0;
    }

    public boolean isNamespaceAware() {
        return true;
    }

    public void setImportedGrammars(Vector vector) {
        this.fImported = vector;
    }

    public final void setUncheckedTypeNum(int i) {
        this.fCTCount = i;
        this.fComplexTypeDecls = resize(this.fComplexTypeDecls, i);
        this.fCTLocators = resize(this.fCTLocators, this.fCTCount);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XSGrammar
    public XSModel toXSModel() {
        return new XSModelImpl(new SchemaGrammar[]{this});
    }

    @Override // com.sun.org.apache.xerces.internal.xni.grammars.XSGrammar
    public XSModel toXSModel(XSGrammar[] xSGrammarArr) {
        boolean z;
        if (xSGrammarArr != null && xSGrammarArr.length != 0) {
            int length = xSGrammarArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                if (xSGrammarArr[i] == this) {
                    z = true;
                    break;
                }
                i++;
            }
            SchemaGrammar[] schemaGrammarArr = new SchemaGrammar[z ? length : length + 1];
            for (int i2 = 0; i2 < length; i2++) {
                schemaGrammarArr[i2] = (SchemaGrammar) xSGrammarArr[i2];
            }
            if (!z) {
                schemaGrammarArr[length] = this;
            }
            return new XSModelImpl(schemaGrammarArr);
        }
        return toXSModel();
    }

    public static final XSGroupDecl[] resize(XSGroupDecl[] xSGroupDeclArr, int i) {
        XSGroupDecl[] xSGroupDeclArr2 = new XSGroupDecl[i];
        System.arraycopy(xSGroupDeclArr, 0, xSGroupDeclArr2, 0, Math.min(xSGroupDeclArr.length, i));
        return xSGroupDeclArr2;
    }

    public static final XSElementDecl[] resize(XSElementDecl[] xSElementDeclArr, int i) {
        XSElementDecl[] xSElementDeclArr2 = new XSElementDecl[i];
        System.arraycopy(xSElementDeclArr, 0, xSElementDeclArr2, 0, Math.min(xSElementDeclArr.length, i));
        return xSElementDeclArr2;
    }

    public static final SimpleLocator[] resize(SimpleLocator[] simpleLocatorArr, int i) {
        SimpleLocator[] simpleLocatorArr2 = new SimpleLocator[i];
        System.arraycopy(simpleLocatorArr, 0, simpleLocatorArr2, 0, Math.min(simpleLocatorArr.length, i));
        return simpleLocatorArr2;
    }

    public SchemaGrammar(String str, XSDDescription xSDDescription, SymbolTable symbolTable) {
        this.fAnnotations = null;
        this.fSAXParser = null;
        this.fDOMParser = null;
        this.fImported = null;
        this.fCTCount = 0;
        this.fComplexTypeDecls = new XSComplexTypeDecl[16];
        this.fCTLocators = new SimpleLocator[16];
        this.fRGCount = 0;
        this.fRedefinedGroupDecls = new XSGroupDecl[2];
        this.fRGLocators = new SimpleLocator[1];
        this.fFullChecked = false;
        this.fSubGroupCount = 0;
        this.fSubGroups = new XSElementDecl[16];
        this.fComponents = null;
        this.fDocuments = null;
        this.fLocations = null;
        this.fTargetNamespace = str;
        this.fGrammarDescription = xSDDescription;
        this.fSymbolTable = symbolTable;
        this.fGlobalAttrDecls = new SymbolHash();
        this.fGlobalAttrGrpDecls = new SymbolHash();
        this.fGlobalElemDecls = new SymbolHash();
        this.fGlobalGroupDecls = new SymbolHash();
        this.fGlobalNotationDecls = new SymbolHash();
        this.fGlobalIDConstraintDecls = new SymbolHash();
        if (this.fTargetNamespace == SchemaSymbols.URI_SCHEMAFORSCHEMA) {
            this.fGlobalTypeDecls = SG_SchemaNS.fGlobalTypeDecls.makeClone();
        } else {
            this.fGlobalTypeDecls = new SymbolHash();
        }
    }
}
