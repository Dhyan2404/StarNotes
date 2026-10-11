package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes16.dex */
public interface CTBottomPageBorder extends CTPageBorder {
    public static final DocumentFactory<CTBottomPageBorder> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBottomPageBorder> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbottompageborderde82type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getBottomLeft();

    String getBottomRight();

    boolean isSetBottomLeft();

    boolean isSetBottomRight();

    void setBottomLeft(String str);

    void setBottomRight(String str);

    void unsetBottomLeft();

    void unsetBottomRight();

    STRelationshipId xgetBottomLeft();

    STRelationshipId xgetBottomRight();

    void xsetBottomLeft(STRelationshipId sTRelationshipId);

    void xsetBottomRight(STRelationshipId sTRelationshipId);
}
