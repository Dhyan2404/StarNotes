package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.impl.schema.ElementFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface ComplexContentDocument extends XmlObject {
    public static final DocumentFactory<ComplexContentDocument> Factory;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public interface ComplexContent extends Annotated {
        public static final ElementFactory<ComplexContent> Factory;
        public static final SchemaType type;

        static {
            ElementFactory<ComplexContent> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "complexcontentaa7felemtype");
            Factory = elementFactory;
            type = elementFactory.getType();
        }

        ExtensionType addNewExtension();

        ComplexRestrictionType addNewRestriction();

        ExtensionType getExtension();

        boolean getMixed();

        ComplexRestrictionType getRestriction();

        boolean isSetExtension();

        boolean isSetMixed();

        boolean isSetRestriction();

        void setExtension(ExtensionType extensionType);

        void setMixed(boolean z);

        void setRestriction(ComplexRestrictionType complexRestrictionType);

        void unsetExtension();

        void unsetMixed();

        void unsetRestriction();

        XmlBoolean xgetMixed();

        void xsetMixed(XmlBoolean xmlBoolean);
    }

    static {
        DocumentFactory<ComplexContentDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "complexcontentc57adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    ComplexContent addNewComplexContent();

    ComplexContent getComplexContent();

    void setComplexContent(ComplexContent complexContent);
}
