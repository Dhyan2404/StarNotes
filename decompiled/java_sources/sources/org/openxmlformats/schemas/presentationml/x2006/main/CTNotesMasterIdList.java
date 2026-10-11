package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTNotesMasterIdList extends XmlObject {
    public static final DocumentFactory<CTNotesMasterIdList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNotesMasterIdList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnotesmasteridlist2853type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNotesMasterIdListEntry addNewNotesMasterId();

    CTNotesMasterIdListEntry getNotesMasterId();

    boolean isSetNotesMasterId();

    void setNotesMasterId(CTNotesMasterIdListEntry cTNotesMasterIdListEntry);

    void unsetNotesMasterId();
}
