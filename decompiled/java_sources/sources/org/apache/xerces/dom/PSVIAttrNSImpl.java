package org.apache.xerces.dom;

import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p117xs.AttributePSVImpl;
import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.ItemPSVI;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSAttributeDeclaration;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.p118xs.XSValue;

/* loaded from: classes13.dex */
public class PSVIAttrNSImpl extends AttrNSImpl implements AttributePSVI {
    static final long serialVersionUID = -3241738699421018889L;
    protected XSAttributeDeclaration fDeclaration;
    protected StringList fErrorCodes;
    protected StringList fErrorMessages;
    protected boolean fSpecified;
    protected XSTypeDefinition fTypeDecl;
    protected short fValidationAttempted;
    protected String fValidationContext;
    protected short fValidity;
    protected ValidatedInfo fValue;

    public PSVIAttrNSImpl(CoreDocumentImpl coreDocumentImpl, String str, String str2) {
        super(coreDocumentImpl, str, str2);
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fSpecified = true;
        this.fValue = new ValidatedInfo();
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrorCodes = null;
        this.fErrorMessages = null;
        this.fValidationContext = null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        throw new NotSerializableException(getClass().getName());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        throw new NotSerializableException(getClass().getName());
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public ItemPSVI constant() {
        return new AttributePSVImpl(true, this);
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public Object getActualNormalizedValue() {
        return this.fValue.getActualValue();
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public short getActualNormalizedValueType() {
        return this.fValue.getActualValueType();
    }

    @Override // org.apache.xerces.p118xs.AttributePSVI
    public XSAttributeDeclaration getAttributeDeclaration() {
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

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public String getSchemaDefault() {
        XSAttributeDeclaration xSAttributeDeclaration = this.fDeclaration;
        if (xSAttributeDeclaration == null) {
            return null;
        }
        return xSAttributeDeclaration.getConstraintValue();
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

    public void setPSVI(AttributePSVI attributePSVI) {
        this.fDeclaration = attributePSVI.getAttributeDeclaration();
        this.fValidationContext = attributePSVI.getValidationContext();
        this.fValidity = attributePSVI.getValidity();
        this.fValidationAttempted = attributePSVI.getValidationAttempted();
        this.fErrorCodes = attributePSVI.getErrorCodes();
        this.fErrorMessages = attributePSVI.getErrorMessages();
        this.fValue.copyFrom(attributePSVI.getSchemaValue());
        this.fTypeDecl = attributePSVI.getTypeDefinition();
        this.fSpecified = attributePSVI.getIsSchemaSpecified();
    }

    public PSVIAttrNSImpl(CoreDocumentImpl coreDocumentImpl, String str, String str2, String str3) {
        super(coreDocumentImpl, str, str2, str3);
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fSpecified = true;
        this.fValue = new ValidatedInfo();
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrorCodes = null;
        this.fErrorMessages = null;
        this.fValidationContext = null;
    }
}
