package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.impl.schema.ElementFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface PatternDocument extends XmlObject {
    public static final DocumentFactory<PatternDocument> Factory;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public interface Pattern extends NoFixedFacet {
        public static final ElementFactory<Pattern> Factory;
        public static final SchemaType type;

        static {
            ElementFactory<Pattern> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "pattern6809elemtype");
            Factory = elementFactory;
            type = elementFactory.getType();
        }
    }

    static {
        DocumentFactory<PatternDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pattern9585doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Pattern addNewPattern();

    Pattern getPattern();

    void setPattern(Pattern pattern);
}
