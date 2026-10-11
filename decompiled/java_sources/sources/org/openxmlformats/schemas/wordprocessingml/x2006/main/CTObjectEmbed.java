package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STObjectDrawAspect;

/* loaded from: classes16.dex */
public interface CTObjectEmbed extends XmlObject {
    public static final DocumentFactory<CTObjectEmbed> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTObjectEmbed> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctobjectembedb578type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STObjectDrawAspect.Enum getDrawAspect();

    String getFieldCodes();

    String getId();

    String getProgId();

    String getShapeId();

    boolean isSetDrawAspect();

    boolean isSetFieldCodes();

    boolean isSetProgId();

    boolean isSetShapeId();

    void setDrawAspect(STObjectDrawAspect.Enum r1);

    void setFieldCodes(String str);

    void setId(String str);

    void setProgId(String str);

    void setShapeId(String str);

    void unsetDrawAspect();

    void unsetFieldCodes();

    void unsetProgId();

    void unsetShapeId();

    STObjectDrawAspect xgetDrawAspect();

    STString xgetFieldCodes();

    STRelationshipId xgetId();

    STString xgetProgId();

    STString xgetShapeId();

    void xsetDrawAspect(STObjectDrawAspect sTObjectDrawAspect);

    void xsetFieldCodes(STString sTString);

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetProgId(STString sTString);

    void xsetShapeId(STString sTString);
}
