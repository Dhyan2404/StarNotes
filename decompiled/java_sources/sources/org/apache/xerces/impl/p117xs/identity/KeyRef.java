package org.apache.xerces.impl.p117xs.identity;

import org.apache.xerces.p118xs.XSIDCDefinition;

/* loaded from: classes13.dex */
public class KeyRef extends IdentityConstraint {
    protected final UniqueOrKey fKey;

    public KeyRef(String str, String str2, String str3, UniqueOrKey uniqueOrKey) {
        super(str, str2, str3);
        this.fKey = uniqueOrKey;
        this.type = (short) 2;
    }

    public UniqueOrKey getKey() {
        return this.fKey;
    }

    @Override // org.apache.xerces.impl.p117xs.identity.IdentityConstraint, org.apache.xerces.p118xs.XSIDCDefinition
    public XSIDCDefinition getRefKey() {
        return this.fKey;
    }
}
