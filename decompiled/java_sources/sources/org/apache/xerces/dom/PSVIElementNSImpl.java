package org.apache.xerces.dom;

import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p117xs.ElementPSVImpl;
import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.ItemPSVI;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSComplexTypeDefinition;
import org.apache.xerces.p118xs.XSElementDeclaration;
import org.apache.xerces.p118xs.XSModel;
import org.apache.xerces.p118xs.XSNotationDeclaration;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.p118xs.XSValue;

/* loaded from: classes13.dex */
public class PSVIElementNSImpl extends ElementNSImpl implements ElementPSVI {
    static final long serialVersionUID = 6815489624636016068L;
    protected XSElementDeclaration fDeclaration;
    protected StringList fErrorCodes;
    protected StringList fErrorMessages;
    protected boolean fNil;
    protected XSNotationDeclaration fNotation;
    protected XSModel fSchemaInformation;
    protected boolean fSpecified;
    protected XSTypeDefinition fTypeDecl;
    protected short fValidationAttempted;
    protected String fValidationContext;
    protected short fValidity;
    protected ValidatedInfo fValue;

    public PSVIElementNSImpl(CoreDocumentImpl coreDocumentImpl, String str, String str2) {
        super(coreDocumentImpl, str, str2);
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fNil = false;
        this.fSpecified = true;
        this.fValue = new ValidatedInfo();
        this.fNotation = null;
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrorCodes = null;
        this.fErrorMessages = null;
        this.fValidationContext = null;
        this.fSchemaInformation = null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        throw new NotSerializableException(getClass().getName());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        throw new NotSerializableException(getClass().getName());
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public ItemPSVI constant() {
        return new ElementPSVImpl(true, this);
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public Object getActualNormalizedValue() {
        return this.fValue.getActualValue();
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public short getActualNormalizedValueType() {
        return this.fValue.getActualValueType();
    }

    @Override // org.apache.xerces.p118xs.ElementPSVI
    public XSElementDeclaration getElementDeclaration() {
        return this.fDeclaration;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public StringList getErrorCodes() {
        StringList stringList = this.fErrorCodes;
        return stringList != null ? stringList : StringListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public StringList getErrorMessages() {
        StringList stringList = this.fErrorMessages;
        return stringList != null ? stringList : StringListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public boolean getIsSchemaSpecified() {
        return this.fSpecified;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public ShortList getItemValueTypes() {
        return this.fValue.getListValueTypes();
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public XSSimpleTypeDefinition getMemberTypeDefinition() {
        return this.fValue.getMemberTypeDefinition();
    }

    @Override // org.apache.xerces.p118xs.ElementPSVI
    public boolean getNil() {
        return this.fNil;
    }

    @Override // org.apache.xerces.p118xs.ElementPSVI
    public XSNotationDeclaration getNotation() {
        return this.fNotation;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public String getSchemaDefault() {
        XSElementDeclaration xSElementDeclaration = this.fDeclaration;
        if (xSElementDeclaration == null) {
            return null;
        }
        return xSElementDeclaration.getConstraintValue();
    }

    @Override // org.apache.xerces.p118xs.ElementPSVI
    public XSModel getSchemaInformation() {
        return this.fSchemaInformation;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public String getSchemaNormalizedValue() {
        return this.fValue.getNormalizedValue();
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public XSValue getSchemaValue() {
        return this.fValue;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public XSTypeDefinition getTypeDefinition() {
        return this.fTypeDecl;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public short getValidationAttempted() {
        return this.fValidationAttempted;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public String getValidationContext() {
        return this.fValidationContext;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public short getValidity() {
        return this.fValidity;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public boolean isConstant() {
        return false;
    }

    public void setPSVI(ElementPSVI elementPSVI) {
        this.fDeclaration = elementPSVI.getElementDeclaration();
        this.fNotation = elementPSVI.getNotation();
        this.fValidationContext = elementPSVI.getValidationContext();
        this.fTypeDecl = elementPSVI.getTypeDefinition();
        this.fSchemaInformation = elementPSVI.getSchemaInformation();
        this.fValidity = elementPSVI.getValidity();
        this.fValidationAttempted = elementPSVI.getValidationAttempted();
        this.fErrorCodes = elementPSVI.getErrorCodes();
        this.fErrorMessages = elementPSVI.getErrorMessages();
        XSTypeDefinition xSTypeDefinition = this.fTypeDecl;
        if ((xSTypeDefinition instanceof XSSimpleTypeDefinition) || ((xSTypeDefinition instanceof XSComplexTypeDefinition) && ((XSComplexTypeDefinition) xSTypeDefinition).getContentType() == 1)) {
            this.fValue.copyFrom(elementPSVI.getSchemaValue());
        } else {
            this.fValue.reset();
        }
        this.fSpecified = elementPSVI.getIsSchemaSpecified();
        this.fNil = elementPSVI.getNil();
    }

    public PSVIElementNSImpl(CoreDocumentImpl coreDocumentImpl, String str, String str2, String str3) {
        super(coreDocumentImpl, str, str2, str3);
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fNil = false;
        this.fSpecified = true;
        this.fValue = new ValidatedInfo();
        this.fNotation = null;
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrorCodes = null;
        this.fErrorMessages = null;
        this.fValidationContext = null;
        this.fSchemaInformation = null;
    }
}
