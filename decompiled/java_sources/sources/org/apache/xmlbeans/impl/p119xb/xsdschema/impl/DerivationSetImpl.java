package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.DerivationSet;
import org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx;
import org.apache.xmlbeans.impl.values.XmlListImpl;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;

/* loaded from: classes13.dex */
public class DerivationSetImpl extends XmlUnionImpl implements DerivationSet, DerivationSet.Member, DerivationSet.Member2 {
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class MemberImpl extends JavaStringEnumerationHolderEx implements DerivationSet.Member {
        private static final long serialVersionUID = 1;

        public MemberImpl(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MemberImpl(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    /* loaded from: classes13.dex */
    public static class MemberImpl2 extends XmlListImpl implements DerivationSet.Member2 {
        private static final long serialVersionUID = 1;

        public MemberImpl2(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MemberImpl2(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    public DerivationSetImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public DerivationSetImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
