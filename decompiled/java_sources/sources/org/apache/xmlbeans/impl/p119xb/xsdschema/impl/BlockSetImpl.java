package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.BlockSet;
import org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx;
import org.apache.xmlbeans.impl.values.XmlListImpl;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;

/* loaded from: classes13.dex */
public class BlockSetImpl extends XmlUnionImpl implements BlockSet, BlockSet.Member, BlockSet.Member2 {
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class MemberImpl extends JavaStringEnumerationHolderEx implements BlockSet.Member {
        private static final long serialVersionUID = 1;

        public MemberImpl(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MemberImpl(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    /* loaded from: classes13.dex */
    public static class MemberImpl2 extends XmlListImpl implements BlockSet.Member2 {
        private static final long serialVersionUID = 1;

        /* loaded from: classes13.dex */
        public static class ItemImpl extends JavaStringEnumerationHolderEx implements BlockSet.Member2.Item {
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

    public BlockSetImpl(SchemaType schemaType) {
        super(schemaType, false);
    }

    public BlockSetImpl(SchemaType schemaType, boolean z) {
        super(schemaType, z);
    }
}
