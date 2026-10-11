package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.impl.schema.ElementFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface AppinfoDocument extends XmlObject {
    public static final DocumentFactory<AppinfoDocument> Factory;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public interface Appinfo extends XmlObject {
        public static final ElementFactory<Appinfo> Factory;
        public static final SchemaType type;

        static {
            ElementFactory<Appinfo> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "appinfo650belemtype");
            Factory = elementFactory;
            type = elementFactory.getType();
        }

        String getSource();

        boolean isSetSource();

        void setSource(String str);

        void unsetSource();

        XmlAnyURI xgetSource();

        void xsetSource(XmlAnyURI xmlAnyURI);
    }

    static {
        DocumentFactory<AppinfoDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "appinfo2ea6doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Appinfo addNewAppinfo();

    Appinfo getAppinfo();

    void setAppinfo(Appinfo appinfo);
}
