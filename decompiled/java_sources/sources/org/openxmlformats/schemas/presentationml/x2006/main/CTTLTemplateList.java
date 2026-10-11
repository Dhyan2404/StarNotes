package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLTemplateList extends XmlObject {
    public static final DocumentFactory<CTTLTemplateList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTemplateList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltemplatelist7ab5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLTemplate addNewTmpl();

    CTTLTemplate getTmplArray(int i);

    CTTLTemplate[] getTmplArray();

    List<CTTLTemplate> getTmplList();

    CTTLTemplate insertNewTmpl(int i);

    void removeTmpl(int i);

    void setTmplArray(int i, CTTLTemplate cTTLTemplate);

    void setTmplArray(CTTLTemplate[] cTTLTemplateArr);

    int sizeOfTmplArray();
}
