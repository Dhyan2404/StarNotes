package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SimpleDerivationSet;
import org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx;
import org.apache.xmlbeans.impl.values.XmlListImpl;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;

/* loaded from: classes13.dex */
public class SimpleDerivationSetImpl extends XmlUnionImpl implements SimpleDerivationSet, SimpleDerivationSet.Member, SimpleDerivationSet.Member2 {
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class MemberImpl extends JavaStringEnumerationHolderEx implements SimpleDerivationSet.Member {
        private static final long serialVersionUID = 1;

        public MemberImpl(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MemberImpl(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    /* loaded from: classes13.dex */
    public static class MemberImpl2 extends XmlListImpl implements SimpleDerivationSet.Member2 {
        private static final long serialVersionUID = 1;

        /* loaded from: classes13.dex */
        public static class ItemImpl extends JavaStringEnumerationHolderEx implements SimpleDerivationSet.Member2.Item {
            private static final long serialVersionUID = 1;

            public ItemImpl(SchemaType schemaType) {
                super(schemaType, false);
            }

            public ItemImpl(SchemaType schemaType, boolean z) {
                super(schemaType, z);
            }
        }

        public MemberImpl2(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MemberImpl2(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    public SimpleDerivationSetImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public SimpleDerivationSetImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
