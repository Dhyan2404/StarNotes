package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTSaveThroughXslt extends XmlObject {
    public static final DocumentFactory<CTSaveThroughXslt> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSaveThroughXslt> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsavethroughxslt7b07type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    String getSolutionID();

    boolean isSetId();

    boolean isSetSolutionID();

    void setId(String str);

    void setSolutionID(String str);

    void unsetId();

    void unsetSolutionID();

    STRelationshipId xgetId();

    STString xgetSolutionID();

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetSolutionID(STString sTString);
}
