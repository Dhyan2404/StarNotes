package org.apache.xmlbeans.impl.p119xb.xsdschema.impl;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlNonNegativeInteger;
import org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NarrowMaxMin;
import org.apache.xmlbeans.impl.values.JavaIntegerHolderEx;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;

/* loaded from: classes13.dex */
public class NarrowMaxMinImpl extends LocalElementImpl implements NarrowMaxMin {
    private static final long serialVersionUID = 1;

    /* loaded from: classes13.dex */
    public static class MaxOccursImpl extends XmlUnionImpl implements NarrowMaxMin.MaxOccurs, XmlNonNegativeInteger, AllNNI.Member {
        private static final long serialVersionUID = 1;

        public MaxOccursImpl(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MaxOccursImpl(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    /* loaded from: classes13.dex */
    public static class MinOccursImpl extends JavaIntegerHolderEx implements NarrowMaxMin.MinOccurs {
        private static final long serialVersionUID = 1;

        public MinOccursImpl(SchemaType schemaType) {
            super(schemaType, false);
        }

        public MinOccursImpl(SchemaType schemaType, boolean z) {
            super(schemaType, z);
        }
    }

    public NarrowMaxMinImpl(SchemaType schemaType) {
        super(schemaType);
    }
}
