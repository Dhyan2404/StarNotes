package org.apache.xmlbeans.impl.store;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public abstract class NamedNodeXobj extends NodeXobj {
    boolean _canHavePrefixUri;

    public NamedNodeXobj(Locale locale, int i, int i2) {
        super(locale, i, i2);
        this._canHavePrefixUri = true;
    }

    @Override // org.apache.xmlbeans.impl.store.NodeXobj, org.apache.xmlbeans.impl.store.DomImpl.Dom
    public boolean nodeCanHavePrefixUri() {
        return this._canHavePrefixUri;
    }
}
