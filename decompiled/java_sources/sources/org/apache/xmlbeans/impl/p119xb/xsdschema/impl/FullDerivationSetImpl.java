package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.FullDerivationSet;
import org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx;
import org.apache.xmlbeans.impl.values.XmlListImpl;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;

/* loaded from: classes13.dex */
public class FullDerivationSetImpl extends XmlUnionImpl implements FullDerivationSet, FullDerivationSet.Member, FullDerivationSet.Member2 {
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class MemberImpl extends JavaStringEnumerationHolderEx implements FullDerivationSet.Member {
        private static final long serialVersionUID = 1;

        public MemberImpl(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MemberImpl(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    /* loaded from: classes13.dex */
    public static class MemberImpl2 extends XmlListImpl implements FullDerivationSet.Member2 {
        private static final long serialVersionUID = 1;

        public MemberImpl2(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MemberImpl2(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    public FullDerivationSetImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public FullDerivationSetImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
