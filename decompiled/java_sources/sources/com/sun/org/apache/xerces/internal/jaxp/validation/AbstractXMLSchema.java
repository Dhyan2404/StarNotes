package com.sun.org.apache.xerces.internal.jaxp.validation;

import javax.xml.validation.Schema;
import javax.xml.validation.Validator;
import javax.xml.validation.ValidatorHandler;

/* loaded from: classes10.dex */
abstract class AbstractXMLSchema extends Schema implements XSGrammarPoolContainer {
    @Override // javax.xml.validation.Schema
    public final Validator newValidator() {
        return new ValidatorImpl(this);
    }

    @Override // javax.xml.validation.Schema
    public final ValidatorHandler newValidatorHandler() {
        return new ValidatorHandlerImpl(this);
    }
}
