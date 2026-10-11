package org.apache.xerces.impl.p117xs;

import com.sunia.HTREnginev2.jlk;
import org.apache.xerces.impl.p115dv.ValidatedInfo;
import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.ItemPSVI;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSElementDeclaration;
import org.apache.xerces.p118xs.XSModel;
import org.apache.xerces.p118xs.XSNotationDeclaration;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.p118xs.XSValue;

/* loaded from: classes13.dex */
public class ElementPSVImpl implements ElementPSVI {
    protected XSElementDeclaration fDeclaration;
    protected String[] fErrors;
    protected SchemaGrammar[] fGrammars;
    protected boolean fIsConstant;
    protected boolean fNil;
    protected XSNotationDeclaration fNotation;
    protected XSModel fSchemaInformation;
    protected boolean fSpecified;
    protected XSTypeDefinition fTypeDecl;
    protected short fValidationAttempted;
    protected String fValidationContext;
    protected short fValidity;
    protected ValidatedInfo fValue;

    public ElementPSVImpl() {
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fNil = false;
        this.fSpecified = false;
        this.fValue = new ValidatedInfo();
        this.fNotation = null;
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrors = null;
        this.fValidationContext = null;
        this.fGrammars = null;
        this.fSchemaInformation = null;
    }

    @Override // org.apache.xerces.p118xs.ItemPSVI
    public ItemPSVI constant() {
        return isConstant() ? this : new ElementPSVImpl(true, this);
    }

    public void copySchemaInformationTo(ElementPSVImpl elementPSVImpl) {
        elementPSVImpl.fGrammars = this.fGrammars;
        elementPSVImpl.fSchemaInformation = this.fSchemaInformation;
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
    public synchronized XSModel getSchemaInformation() {
        if (this.fSchemaInformation == null && this.fGrammars != null) {
            this.fSchemaInformation = new XSModelImpl(this.fGrammars);
        }
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
        return this.fIsConstant;
    }

    public void reset() {
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fNil = false;
        this.fSpecified = false;
        this.fNotation = null;
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrors = null;
        this.fValidationContext = null;
        this.fValue.reset();
    }

    public ElementPSVImpl(boolean z, ElementPSVI elementPSVI) {
        this.fDeclaration = null;
        this.fTypeDecl = null;
        this.fNil = false;
        this.fSpecified = false;
        this.fValue = new ValidatedInfo();
        this.fNotation = null;
        this.fValidationAttempted = (short) 0;
        this.fValidity = (short) 0;
        this.fErrors = null;
        this.fValidationContext = null;
        this.fGrammars = null;
        this.fSchemaInformation = null;
        this.fDeclaration = elementPSVI.getElementDeclaration();
        this.fTypeDecl = elementPSVI.getTypeDefinition();
        this.fNil = elementPSVI.getNil();
        this.fSpecified = elementPSVI.getIsSchemaSpecified();
        this.fValue.copyFrom(elementPSVI.getSchemaValue());
        this.fNotation = elementPSVI.getNotation();
        this.fValidationAttempted = elementPSVI.getValidationAttempted();
        this.fValidity = elementPSVI.getValidity();
        this.fValidationContext = elementPSVI.getValidationContext();
        if (elementPSVI instanceof ElementPSVImpl) {
            ElementPSVImpl elementPSVImpl = (ElementPSVImpl) elementPSVI;
            String[] strArr = elementPSVImpl.fErrors;
            this.fErrors = strArr != null ? (String[]) strArr.clone() : null;
            elementPSVImpl.copySchemaInformationTo(this);
        } else {
            StringList errorCodes = elementPSVI.getErrorCodes();
            int length = errorCodes.getLength();
            if (length > 0) {
                StringList errorMessages = elementPSVI.getErrorMessages();
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
            this.fSchemaInformation = elementPSVI.getSchemaInformation();
        }
        this.fIsConstant = z;
    }
}
