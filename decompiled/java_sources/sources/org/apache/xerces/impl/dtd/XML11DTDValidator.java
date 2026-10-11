package org.apache.xerces.impl.dtd;

import org.apache.xerces.xni.parser.XMLComponentManager;

/* loaded from: classes13.dex */
public class XML11DTDValidator extends XMLDTDValidator {
    protected static final String DTD_VALIDATOR_PROPERTY = "http://apache.org/xml/properties/internal/validator/dtd";

    @Override // org.apache.xerces.impl.dtd.XMLDTDValidator
    public void init() {
        if (this.fValidation || this.fDynamicValidation) {
            super.init();
            try {
                this.fValID = this.fDatatypeValidatorFactory.getBuiltInDV("XML11ID");
                this.fValIDRef = this.fDatatypeValidatorFactory.getBuiltInDV("XML11IDREF");
                this.fValIDRefs = this.fDatatypeValidatorFactory.getBuiltInDV("XML11IDREFS");
                this.fValNMTOKEN = this.fDatatypeValidatorFactory.getBuiltInDV("XML11NMTOKEN");
                this.fValNMTOKENS = this.fDatatypeValidatorFactory.getBuiltInDV("XML11NMTOKENS");
            } catch (Exception e) {
                e.printStackTrace(System.err);
            }
        }
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDValidator, org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) {
        XMLDTDValidator xMLDTDValidator = (XMLDTDValidator) xMLComponentManager.getProperty(DTD_VALIDATOR_PROPERTY);
        if (xMLDTDValidator != null && xMLDTDValidator != this) {
            this.fGrammarBucket = xMLDTDValidator.m69901t();
        }
        super.reset(xMLComponentManager);
    }
}
