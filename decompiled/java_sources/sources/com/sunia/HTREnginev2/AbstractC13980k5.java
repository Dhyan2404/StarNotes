package com.sunia.HTREnginev2;

import java.util.HashMap;
import javax.xml.validation.Schema;
import javax.xml.validation.Validator;
import javax.xml.validation.ValidatorHandler;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.xni.grammars.XMLGrammarPool;

/* renamed from: com.sunia.HTREnginev2.k5 */
/* loaded from: classes13.dex */
public abstract class AbstractC13980k5 extends Schema implements XSGrammarPoolContainer {

    /* renamed from: a */
    public final HashMap f75085a = new HashMap();

    /* renamed from: a */
    public final void m55184a(String str, boolean z) {
        this.f75085a.put(str, z ? Boolean.TRUE : Boolean.FALSE);
    }

    @Override // org.apache.xerces.jaxp.validation.XSGrammarPoolContainer
    public final Boolean getFeature(String str) {
        return (Boolean) this.f75085a.get(str);
    }

    public abstract XMLGrammarPool getGrammarPool();

    public abstract boolean isFullyComposed();

    @Override // javax.xml.validation.Schema
    public final Validator newValidator() {
        return new zzn(this);
    }

    @Override // javax.xml.validation.Schema
    public final ValidatorHandler newValidatorHandler() {
        return new xzn(this);
    }
}
