package com.sunia.HTREnginev2;

import java.util.Stack;
import java.util.Vector;
import org.apache.xerces.impl.p117xs.SchemaNamespaceSupport;
import org.apache.xerces.impl.p117xs.XMLSchemaException;
import org.apache.xerces.impl.p117xs.opti.SchemaDOM;
import org.apache.xerces.impl.p117xs.traversers.XSAttributeChecker;
import org.apache.xerces.impl.p117xs.util.XInt;
import org.apache.xerces.impl.validation.ValidationState;
import org.apache.xerces.util.SymbolTable;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public class tmo {

    /* renamed from: a */
    public SchemaNamespaceSupport f85501a;

    /* renamed from: b */
    public SchemaNamespaceSupport f85502b;

    /* renamed from: d */
    public boolean f85504d;

    /* renamed from: e */
    public boolean f85505e;

    /* renamed from: f */
    public short f85506f;

    /* renamed from: g */
    public short f85507g;

    /* renamed from: h */
    public String f85508h;

    /* renamed from: i */
    public boolean f85509i;

    /* renamed from: j */
    public Element f85510j;

    /* renamed from: m */
    public SymbolTable f85513m;

    /* renamed from: n */
    public XSAttributeChecker f85514n;

    /* renamed from: o */
    public Object[] f85515o;

    /* renamed from: c */
    public Stack f85503c = new Stack();

    /* renamed from: k */
    public Vector f85511k = new Vector();

    /* renamed from: l */
    public ValidationState f85512l = new ValidationState();

    /* renamed from: p */
    public mmo f85516p = null;

    /* renamed from: q */
    public Vector f85517q = null;

    public tmo(Element element, XSAttributeChecker xSAttributeChecker, SymbolTable symbolTable) throws XMLSchemaException {
        this.f85513m = null;
        this.f85510j = element;
        SchemaNamespaceSupport schemaNamespaceSupport = new SchemaNamespaceSupport(element, symbolTable);
        this.f85501a = schemaNamespaceSupport;
        schemaNamespaceSupport.reset();
        this.f85509i = false;
        this.f85513m = symbolTable;
        this.f85514n = xSAttributeChecker;
        if (element != null) {
            Object[] checkAttributes = xSAttributeChecker.checkAttributes(element, true, this);
            this.f85515o = checkAttributes;
            if (checkAttributes == null) {
                throw new XMLSchemaException(null, null);
            }
            this.f85504d = ((XInt) checkAttributes[XSAttributeChecker.ATTIDX_AFORMDEFAULT]).intValue() == 1;
            this.f85505e = ((XInt) this.f85515o[XSAttributeChecker.ATTIDX_EFORMDEFAULT]).intValue() == 1;
            this.f85506f = ((XInt) this.f85515o[XSAttributeChecker.ATTIDX_BLOCKDEFAULT]).shortValue();
            this.f85507g = ((XInt) this.f85515o[XSAttributeChecker.ATTIDX_FINALDEFAULT]).shortValue();
            String str = (String) this.f85515o[XSAttributeChecker.ATTIDX_TARGETNAMESPACE];
            this.f85508h = str;
            if (str != null) {
                this.f85508h = symbolTable.addSymbol(str);
            }
            this.f85502b = new SchemaNamespaceSupport(this.f85501a);
            this.f85512l.setNamespaceSupport(this.f85501a);
            this.f85512l.setSymbolTable(symbolTable);
        }
    }

    /* renamed from: a */
    public void m57405a(String str) {
        Vector vector = this.f85511k;
        if (str == null) {
            str = "";
        }
        vector.addElement(str);
    }

    /* renamed from: b */
    public void m57406b(mmo mmoVar) {
        mmoVar.f77785e = this.f85516p;
        this.f85516p = mmoVar;
    }

    /* renamed from: c */
    public void m57407c(SchemaNamespaceSupport schemaNamespaceSupport) {
        this.f85503c.push(this.f85501a);
        if (schemaNamespaceSupport == null) {
            schemaNamespaceSupport = this.f85502b;
        }
        SchemaNamespaceSupport schemaNamespaceSupport2 = new SchemaNamespaceSupport(schemaNamespaceSupport);
        this.f85501a = schemaNamespaceSupport2;
        this.f85512l.setNamespaceSupport(schemaNamespaceSupport2);
    }

    /* renamed from: d */
    public mmo m57408d() {
        return this.f85516p;
    }

    /* renamed from: e */
    public Object[] m57409e() {
        return this.f85515o;
    }

    /* renamed from: f */
    public boolean m57410f(String str) {
        Vector vector = this.f85511k;
        if (str == null) {
            str = "";
        }
        return vector.contains(str);
    }

    /* renamed from: g */
    public final boolean m57411g(String str) {
        Vector vector = this.f85517q;
        if (vector == null) {
            this.f85517q = new Vector();
        } else if (vector.contains(str)) {
            return false;
        }
        this.f85517q.addElement(str);
        return true;
    }

    /* renamed from: h */
    public void m57412h() {
        this.f85516p = null;
    }

    /* renamed from: i */
    public void m57413i() {
        SchemaNamespaceSupport schemaNamespaceSupport = (SchemaNamespaceSupport) this.f85503c.pop();
        this.f85501a = schemaNamespaceSupport;
        this.f85512l.setNamespaceSupport(schemaNamespaceSupport);
    }

    /* renamed from: j */
    public void m57414j() {
        this.f85514n.returnAttrArray(this.f85515o, null);
        this.f85515o = null;
    }

    public String toString() {
        String str;
        String documentURI;
        StringBuffer stringBuffer = new StringBuffer();
        if (this.f85508h == null) {
            str = "no targetNamspace";
        } else {
            stringBuffer.append("targetNamespace is ");
            str = this.f85508h;
        }
        stringBuffer.append(str);
        Element element = this.f85510j;
        Document ownerDocument = element != null ? element.getOwnerDocument() : null;
        if ((ownerDocument instanceof SchemaDOM) && (documentURI = ownerDocument.getDocumentURI()) != null && documentURI.length() > 0) {
            stringBuffer.append(" :: schemaLocation is ");
            stringBuffer.append(documentURI);
        }
        return stringBuffer.toString();
    }
}
