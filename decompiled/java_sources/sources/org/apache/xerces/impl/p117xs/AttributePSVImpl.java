package org.apache.xerces.impl.p117xs;

import com.sunia.HTREnginev2.jlk;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
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
public class AttributePSVImpl implements AttributePSVI {
    protected XSAttributeDeclaration fDeclaration;
    protected String[] fErrors;
    protected boolean fIsConstant;
    protected boolean fSpecified;
    protected XSTypeDefinition fTypeDecl;
    protected short fValidationAttempted;
    protected String fValidationContext;
    protected short fValidity;
    protected ValidatedInfo fValue;

    public AttributePSVImpl() {
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fSpecified = false;
        this.fValue = new ValidatedInfo();
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrors = null;
        this.fValidationContext = null;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public ItemPSVI constant() {
        return isConstant() ? this : new AttributePSVImpl(true, this);
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
        String[] strArr = this.fErrors;
        return (strArr == null || strArr.length == 0) ? StringListImpl.EMPTY_LIST : new jlk(this.fErrors, true);
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public StringList getErrorMessages() {
        String[] strArr = this.fErrors;
        return (strArr == null || strArr.length == 0) ? StringListImpl.EMPTY_LIST : new jlk(this.fErrors, false);
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
        return this.fIsConstant;
    }

    public void reset() {
        this.fValue.reset();
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fSpecified = false;
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrors = null;
        this.fValidationContext = null;
    }

    public AttributePSVImpl(boolean z, AttributePSVI attributePSVI) {
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fSpecified = false;
        this.fValue = new ValidatedInfo();
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrors = null;
        this.fValidationContext = null;
        this.fDeclaration = attributePSVI.getAttributeDeclaration();
        this.fTypeDecl = attributePSVI.getTypeDefinition();
        this.fSpecified = attributePSVI.getIsSchemaSpecified();
        this.fValue.copyFrom(attributePSVI.getSchemaValue());
        this.fValidationAttempted = attributePSVI.getValidationAttempted();
        this.fValidity = attributePSVI.getValidity();
        if (attributePSVI instanceof AttributePSVImpl) {
            String[] strArr = ((AttributePSVImpl) attributePSVI).fErrors;
            this.fErrors = strArr != null ? (String[]) strArr.clone() : null;
        } else {
            StringList errorCodes = attributePSVI.getErrorCodes();
            int length = errorCodes.getLength();
            if (length > 0) {
                StringList errorMessages = attributePSVI.getErrorMessages();
                String[] strArr2 = new String[length << 1];
                int i = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = i + 1;
                    strArr2[i] = errorCodes.item(i2);
                    i = i3 + 1;
                    strArr2[i3] = errorMessages.item(i2);
                }
                this.fErrors = strArr2;
            }
        }
        this.fValidationContext = attributePSVI.getValidationContext();
        this.fIsConstant = z;
    }
}
