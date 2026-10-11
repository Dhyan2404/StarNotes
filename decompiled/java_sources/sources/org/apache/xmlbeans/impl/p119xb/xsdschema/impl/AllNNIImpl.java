package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlNonNegativeInteger;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI;
import org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;

/* loaded from: classes13.dex */
public class AllNNIImpl extends XmlUnionImpl implements AllNNI, XmlNonNegativeInteger, AllNNI.Member {
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class MemberImpl extends JavaStringEnumerationHolderEx implements AllNNI.Member {
        private static final long serialVersionUID = 1;

        public MemberImpl(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MemberImpl(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    public AllNNIImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public AllNNIImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
