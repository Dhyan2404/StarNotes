package org.apache.xerces.impl.p117xs.util;

import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
public final class XSInputSource extends XMLInputSource {

    /* renamed from: a */
    public SchemaGrammar[] f113247a;

    /* renamed from: b */
    public XSObject[] f113248b;

    public XSInputSource(SchemaGrammar[] schemaGrammarArr) {
        super(null, null, null);
        this.f113247a = schemaGrammarArr;
        this.f113248b = null;
    }

    public XSObject[] getComponents() {
        return this.f113248b;
    }

    public SchemaGrammar[] getGrammars() {
        return this.f113247a;
    }

    public void setComponents(XSObject[] xSObjectArr) {
        this.f113248b = xSObjectArr;
    }

    public void setGrammars(SchemaGrammar[] schemaGrammarArr) {
        this.f113247a = schemaGrammarArr;
    }

    public XSInputSource(XSObject[] xSObjectArr) {
        super(null, null, null);
        this.f113247a = null;
        this.f113248b = xSObjectArr;
    }
}
