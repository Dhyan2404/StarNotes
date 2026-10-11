package org.openxmlformats.schemas.xpackage.x2006.relationships;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTRelationships extends XmlObject {
    public static final DocumentFactory<CTRelationships> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRelationships> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelationshipse33ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRelationship addNewRelationship();

    CTRelationship getRelationshipArray(int i);

    CTRelationship[] getRelationshipArray();

    List<CTRelationship> getRelationshipList();

    CTRelationship insertNewRelationship(int i);

    void removeRelationship(int i);

    void setRelationshipArray(int i, CTRelationship cTRelationship);

    void setRelationshipArray(CTRelationship[] cTRelationshipArr);

    int sizeOfRelationshipArray();
}
