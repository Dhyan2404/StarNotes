package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p117xs.util.XSGrammarPool;
import org.apache.xerces.p118xs.LSInputList;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSLoader;
import org.apache.xerces.p118xs.XSModel;
import org.apache.xerces.p118xs.XSNamedMap;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XSGrammar;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMStringList;
import org.w3c.dom.ls.LSInput;

/* loaded from: classes13.dex */
public final class XSLoaderImpl implements XSLoader, DOMConfiguration {

    /* renamed from: e */
    public final XSGrammarPool f112928e;

    /* renamed from: f */
    public final XMLSchemaLoader f112929f;

    /* renamed from: org.apache.xerces.impl.xs.XSLoaderImpl$a */
    /* loaded from: classes13.dex */
    public static final class C20048a extends XSGrammarPool {
        /* renamed from: a */
        public final void m70240a(SchemaGrammar schemaGrammar, SchemaGrammar schemaGrammar2) {
            XSNamedMap components = schemaGrammar2.getComponents((short) 2);
            int length = components.getLength();
            for (int i = 0; i < length; i++) {
                XSElementDecl xSElementDecl = (XSElementDecl) components.item(i);
                if (schemaGrammar.getGlobalElementDecl(xSElementDecl.getName()) == null) {
                    schemaGrammar.addGlobalElementDecl(xSElementDecl);
                }
            }
            XSNamedMap components2 = schemaGrammar2.getComponents((short) 1);
            int length2 = components2.getLength();
            for (int i2 = 0; i2 < length2; i2++) {
                XSAttributeDecl xSAttributeDecl = (XSAttributeDecl) components2.item(i2);
                if (schemaGrammar.getGlobalAttributeDecl(xSAttributeDecl.getName()) == null) {
                    schemaGrammar.addGlobalAttributeDecl(xSAttributeDecl);
                }
            }
            XSNamedMap components3 = schemaGrammar2.getComponents((short) 3);
            int length3 = components3.getLength();
            for (int i3 = 0; i3 < length3; i3++) {
                XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) components3.item(i3);
                if (schemaGrammar.getGlobalTypeDecl(xSTypeDefinition.getName()) == null) {
                    schemaGrammar.addGlobalTypeDecl(xSTypeDefinition);
                }
            }
            XSNamedMap components4 = schemaGrammar2.getComponents((short) 5);
            int length4 = components4.getLength();
            for (int i4 = 0; i4 < length4; i4++) {
                XSAttributeGroupDecl xSAttributeGroupDecl = (XSAttributeGroupDecl) components4.item(i4);
                if (schemaGrammar.getGlobalAttributeGroupDecl(xSAttributeGroupDecl.getName()) == null) {
                    schemaGrammar.addGlobalAttributeGroupDecl(xSAttributeGroupDecl);
                }
            }
            XSNamedMap components5 = schemaGrammar2.getComponents((short) 7);
            int length5 = components5.getLength();
            for (int i5 = 0; i5 < length5; i5++) {
                XSGroupDecl xSGroupDecl = (XSGroupDecl) components5.item(i5);
                if (schemaGrammar.getGlobalGroupDecl(xSGroupDecl.getName()) == null) {
                    schemaGrammar.addGlobalGroupDecl(xSGroupDecl);
                }
            }
            XSNamedMap components6 = schemaGrammar2.getComponents((short) 11);
            int length6 = components6.getLength();
            for (int i6 = 0; i6 < length6; i6++) {
                XSNotationDecl xSNotationDecl = (XSNotationDecl) components6.item(i6);
                if (schemaGrammar.getGlobalNotationDecl(xSNotationDecl.getName()) == null) {
                    schemaGrammar.addGlobalNotationDecl(xSNotationDecl);
                }
            }
            XSObjectList annotations = schemaGrammar2.getAnnotations();
            int length7 = annotations.getLength();
            for (int i7 = 0; i7 < length7; i7++) {
                schemaGrammar.addAnnotation((XSAnnotationImpl) annotations.item(i7));
            }
        }

        /* renamed from: b */
        public final SchemaGrammar m70241b(Grammar grammar) {
            if (grammar instanceof SchemaGrammar) {
                return (SchemaGrammar) grammar;
            }
            return null;
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl
        public boolean containsGrammar(XMLGrammarDescription xMLGrammarDescription) {
            return false;
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl
        public Grammar getGrammar(XMLGrammarDescription xMLGrammarDescription) {
            return null;
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl
        public void putGrammar(Grammar grammar) {
            SchemaGrammar m70241b = m70241b(super.getGrammar(grammar.getGrammarDescription()));
            if (m70241b == null) {
                super.putGrammar(grammar);
                return;
            }
            SchemaGrammar m70241b2 = m70241b(grammar);
            if (m70241b2 != null) {
                m70240a(m70241b, m70241b2);
            }
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl, org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            return null;
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl, org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar[] retrieveInitialGrammarSet(String str) {
            return new Grammar[0];
        }
    }

    public XSLoaderImpl() {
        C20048a c20048a = new C20048a();
        this.f112928e = c20048a;
        XMLSchemaLoader xMLSchemaLoader = new XMLSchemaLoader();
        this.f112929f = xMLSchemaLoader;
        xMLSchemaLoader.setProperty("http://apache.org/xml/properties/internal/grammar-pool", c20048a);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public boolean canSetParameter(String str, Object obj) {
        return this.f112929f.canSetParameter(str, obj);
    }

    @Override // org.apache.xerces.p118xs.XSLoader
    public DOMConfiguration getConfig() {
        return this;
    }

    @Override // org.w3c.dom.DOMConfiguration
    public Object getParameter(String str) throws DOMException {
        return this.f112929f.getParameter(str);
    }

    @Override // org.w3c.dom.DOMConfiguration
    public DOMStringList getParameterNames() {
        return this.f112929f.getParameterNames();
    }

    @Override // org.apache.xerces.p118xs.XSLoader
    public XSModel load(LSInput lSInput) {
        try {
            this.f112928e.clear();
            XMLSchemaLoader xMLSchemaLoader = this.f112929f;
            return ((XSGrammar) xMLSchemaLoader.loadGrammar(xMLSchemaLoader.m70142a(lSInput))).toXSModel();
        } catch (Exception e) {
            this.f112929f.m70147f(e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [org.apache.xerces.xs.XSModel] */
    @Override // org.apache.xerces.p118xs.XSLoader
    public XSModel loadInputList(LSInputList lSInputList) {
        int length = lSInputList.getLength();
        try {
            this.f112928e.clear();
            for (int i = 0; i < length; i++) {
                XMLSchemaLoader xMLSchemaLoader = this.f112929f;
                xMLSchemaLoader.loadGrammar(xMLSchemaLoader.m70142a(lSInputList.item(i)));
            }
            this = this.f112928e.toXSModel();
            return this;
        } catch (Exception e) {
            this.f112929f.m70147f(e);
            return null;
        }
    }

    @Override // org.apache.xerces.p118xs.XSLoader
    public XSModel loadURI(String str) {
        try {
            this.f112928e.clear();
            return ((XSGrammar) this.f112929f.loadGrammar(new XMLInputSource(null, str, null))).toXSModel();
        } catch (Exception e) {
            this.f112929f.m70147f(e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [org.apache.xerces.xs.XSModel] */
    @Override // org.apache.xerces.p118xs.XSLoader
    public XSModel loadURIList(StringList stringList) {
        int length = stringList.getLength();
        try {
            this.f112928e.clear();
            for (int i = 0; i < length; i++) {
                this.f112929f.loadGrammar(new XMLInputSource(null, stringList.item(i), null));
            }
            this = this.f112928e.toXSModel();
            return this;
        } catch (Exception e) {
            this.f112929f.m70147f(e);
            return null;
        }
    }

    @Override // org.w3c.dom.DOMConfiguration
    public void setParameter(String str, Object obj) throws DOMException {
        this.f112929f.setParameter(str, obj);
    }
}
