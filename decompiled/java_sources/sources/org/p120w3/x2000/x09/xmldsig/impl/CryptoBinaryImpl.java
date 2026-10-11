package org.p120w3.x2000.x09.xmldsig.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaBase64HolderEx;
import org.p120w3.x2000.x09.xmldsig.CryptoBinary;

/* loaded from: classes16.dex */
public class CryptoBinaryImpl extends JavaBase64HolderEx implements CryptoBinary {
    private static final long serialVersionUID = 1;

    public CryptoBinaryImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public CryptoBinaryImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
