package org.apache.poi.hmef.attribute;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes12.dex */
public final class TNEFMAPIAttribute extends TNEFAttribute {
    private final List<MAPIAttribute> attributes;

    public TNEFMAPIAttribute(int i, int i2, InputStream inputStream) throws IOException {
        super(i, i2, inputStream);
        this.attributes = MAPIAttribute.create(this);
    }

    public List<MAPIAttribute> getMAPIAttributes() {
        return this.attributes;
    }

    @Override // org.apache.poi.hmef.attribute.TNEFAttribute
    public String toString() {
        return "Attribute " + getProperty() + ", type=" + getType() + ", " + this.attributes.size() + " MAPI Attributes";
    }
}
