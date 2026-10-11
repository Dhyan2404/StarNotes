package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTSmartTagType extends XmlObject {
    public static final DocumentFactory<CTSmartTagType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSmartTagType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsmarttagtypeae5dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getName();

    String getNamespaceuri();

    String getUrl();

    boolean isSetName();

    boolean isSetNamespaceuri();

    boolean isSetUrl();

    void setName(String str);

    void setNamespaceuri(String str);

    void setUrl(String str);

    void unsetName();

    void unsetNamespaceuri();

    void unsetUrl();

    STString xgetName();

    STString xgetNamespaceuri();

    STString xgetUrl();

    void xsetName(STString sTString);

    void xsetNamespaceuri(STString sTString);

    void xsetUrl(STString sTString);
}
