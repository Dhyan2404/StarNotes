package com.sun.org.apache.xerces.internal.impl.p055xs.traversers;

import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaNamespaceSupport;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaException;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XInt;
import com.sun.org.apache.xerces.internal.impl.validation.ValidationState;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import java.util.Stack;
import java.util.Vector;
import org.w3c.dom.Element;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class XSDocumentInfo {
    protected boolean fAreLocalAttributesQualified;
    protected boolean fAreLocalElementsQualified;
    protected XSAttributeChecker fAttrChecker;
    protected short fBlockDefault;
    protected short fFinalDefault;
    protected boolean fIsChameleonSchema;
    protected SchemaNamespaceSupport fNamespaceSupport;
    protected SchemaNamespaceSupport fNamespaceSupportRoot;
    protected Object[] fSchemaAttrs;
    protected Element fSchemaElement;
    SymbolTable fSymbolTable;
    String fTargetNamespace;
    protected Stack SchemaNamespaceSupportStack = new Stack();
    Vector fImportedNS = new Vector();
    protected ValidationState fValidationContext = new ValidationState();
    protected XSAnnotationInfo fAnnotations = null;
    private Vector fReportedTNS = null;

    public XSDocumentInfo(Element element, XSAttributeChecker xSAttributeChecker, SymbolTable symbolTable) throws XMLSchemaException {
        this.fSymbolTable = null;
        this.fSchemaElement = element;
        SchemaNamespaceSupport schemaNamespaceSupport = new SchemaNamespaceSupport();
        this.fNamespaceSupport = schemaNamespaceSupport;
        schemaNamespaceSupport.reset();
        this.fIsChameleonSchema = false;
        this.fSymbolTable = symbolTable;
        this.fAttrChecker = xSAttributeChecker;
        if (element != null) {
            Object[] checkAttributes = xSAttributeChecker.checkAttributes(element, true, this);
            this.fSchemaAttrs = checkAttributes;
            if (checkAttributes == null) {
                throw new XMLSchemaException(null, null);
            }
            this.fAreLocalAttributesQualified = ((XInt) checkAttributes[XSAttributeChecker.ATTIDX_AFORMDEFAULT]).intValue() == 1;
            this.fAreLocalElementsQualified = ((XInt) this.fSchemaAttrs[XSAttributeChecker.ATTIDX_EFORMDEFAULT]).intValue() == 1;
            this.fBlockDefault = ((XInt) this.fSchemaAttrs[XSAttributeChecker.ATTIDX_BLOCKDEFAULT]).shortValue();
            this.fFinalDefault = ((XInt) this.fSchemaAttrs[XSAttributeChecker.ATTIDX_FINALDEFAULT]).shortValue();
            String str = (String) this.fSchemaAttrs[XSAttributeChecker.ATTIDX_TARGETNAMESPACE];
            this.fTargetNamespace = str;
            if (str != null) {
                this.fTargetNamespace = symbolTable.addSymbol(str);
            }
            this.fNamespaceSupportRoot = new SchemaNamespaceSupport(this.fNamespaceSupport);
            this.fValidationContext.setNamespaceSupport(this.fNamespaceSupport);
            this.fValidationContext.setSymbolTable(symbolTable);
        }
    }

    public void addAllowedNS(String str) {
        Vector vector = this.fImportedNS;
        if (str == null) {
            str = "";
        }
        vector.addElement(str);
    }

    public void addAnnotation(XSAnnotationInfo xSAnnotationInfo) {
        xSAnnotationInfo.next = this.fAnnotations;
        this.fAnnotations = xSAnnotationInfo;
    }

    public void backupNSSupport(SchemaNamespaceSupport schemaNamespaceSupport) {
        this.SchemaNamespaceSupportStack.push(this.fNamespaceSupport);
        if (schemaNamespaceSupport == null) {
            schemaNamespaceSupport = this.fNamespaceSupportRoot;
        }
        SchemaNamespaceSupport schemaNamespaceSupport2 = new SchemaNamespaceSupport(schemaNamespaceSupport);
        this.fNamespaceSupport = schemaNamespaceSupport2;
        this.fValidationContext.setNamespaceSupport(schemaNamespaceSupport2);
    }

    public XSAnnotationInfo getAnnotations() {
        return this.fAnnotations;
    }

    public Object[] getSchemaAttrs() {
        return this.fSchemaAttrs;
    }

    public boolean isAllowedNS(String str) {
        Vector vector = this.fImportedNS;
        if (str == null) {
            str = "";
        }
        return vector.contains(str);
    }

    public final boolean needReportTNSError(String str) {
        Vector vector = this.fReportedTNS;
        if (vector == null) {
            this.fReportedTNS = new Vector();
        } else if (vector.contains(str)) {
            return false;
        }
        this.fReportedTNS.addElement(str);
        return true;
    }

    public void removeAnnotations() {
        this.fAnnotations = null;
    }

    public void restoreNSSupport() {
        SchemaNamespaceSupport schemaNamespaceSupport = (SchemaNamespaceSupport) this.SchemaNamespaceSupportStack.pop();
        this.fNamespaceSupport = schemaNamespaceSupport;
        this.fValidationContext.setNamespaceSupport(schemaNamespaceSupport);
    }

    public void returnSchemaAttrs() {
        this.fAttrChecker.returnAttrArray(this.fSchemaAttrs, null);
        this.fSchemaAttrs = null;
    }

    public String toString() {
        if (this.fTargetNamespace == null) {
            return "no targetNamspace";
        }
        return "targetNamespace is " + this.fTargetNamespace;
    }
}
