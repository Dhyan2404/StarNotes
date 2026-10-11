package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTSmartTagType extends XmlObject {
    public static final DocumentFactory<CTSmartTagType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSmartTagType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsmarttagtypedc74type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    String getNamespaceUri();

    String getUrl();

    boolean isSetName();

    boolean isSetNamespaceUri();

    boolean isSetUrl();

    void setName(String str);

    void setNamespaceUri(String str);

    void setUrl(String str);

    void unsetName();

    void unsetNamespaceUri();

    void unsetUrl();

    STXstring xgetName();

    STXstring xgetNamespaceUri();

    STXstring xgetUrl();

    void xsetName(STXstring sTXstring);

    void xsetNamespaceUri(STXstring sTXstring);

    void xsetUrl(STXstring sTXstring);
}
