package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTControl extends XmlObject {
    public static final DocumentFactory<CTControl> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTControl> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcontrol7455type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    String getName();

    String getShapeid();

    boolean isSetId();

    boolean isSetName();

    boolean isSetShapeid();

    void setId(String str);

    void setName(String str);

    void setShapeid(String str);

    void unsetId();

    void unsetName();

    void unsetShapeid();

    STRelationshipId xgetId();

    STString xgetName();

    STString xgetShapeid();

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetName(STString sTString);

    void xsetShapeid(STString sTString);
}
