package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocPartPr extends XmlObject {
    public static final DocumentFactory<CTDocPartPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocPartPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocpartpra1c5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDocPartBehaviors addNewBehaviors();

    CTDocPartCategory addNewCategory();

    CTString addNewDescription();

    CTGuid addNewGuid();

    CTDocPartName addNewName();

    CTString addNewStyle();

    CTDocPartTypes addNewTypes();

    CTDocPartBehaviors getBehaviors();

    CTDocPartCategory getCategory();

    CTString getDescription();

    CTGuid getGuid();

    CTDocPartName getName();

    CTString getStyle();

    CTDocPartTypes getTypes();

    boolean isSetBehaviors();

    boolean isSetCategory();

    boolean isSetDescription();

    boolean isSetGuid();

    boolean isSetStyle();

    boolean isSetTypes();

    void setBehaviors(CTDocPartBehaviors cTDocPartBehaviors);

    void setCategory(CTDocPartCategory cTDocPartCategory);

    void setDescription(CTString cTString);

    void setGuid(CTGuid cTGuid);

    void setName(CTDocPartName cTDocPartName);

    void setStyle(CTString cTString);

    void setTypes(CTDocPartTypes cTDocPartTypes);

    void unsetBehaviors();

    void unsetCategory();

    void unsetDescription();

    void unsetGuid();

    void unsetStyle();

    void unsetTypes();
}
