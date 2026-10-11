package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlNonNegativeInteger;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.impl.schema.ElementFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface NarrowMaxMin extends LocalElement {
    public static final DocumentFactory<NarrowMaxMin> Factory;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public interface MaxOccurs extends AllNNI {
        public static final ElementFactory<MaxOccurs> Factory;
        public static final SchemaType type;

        static {
            ElementFactory<MaxOccurs> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "maxoccursd85dattrtype");
            Factory = elementFactory;
            type = elementFactory.getType();
        }

        @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI
        Object getObjectValue();

        @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI
        SchemaType instanceType();

        @Override // org.apache.xmlbeans.impl.p119xb.xsdschema.AllNNI
        void setObjectValue(Object obj);
    }

    /* loaded from: classes13.dex */
    public interface MinOccurs extends XmlNonNegativeInteger {
        public static final ElementFactory<MinOccurs> Factory;
        public static final SchemaType type;

        static {
            ElementFactory<MinOccurs> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "minoccurs1acbattrtype");
            Factory = elementFactory;
            type = elementFactory.getType();
        }
    }

    static {
        DocumentFactory<NarrowMaxMin> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "narrowmaxmin926atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
