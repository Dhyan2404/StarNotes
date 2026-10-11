package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCustomShowList extends XmlObject {
    public static final DocumentFactory<CTCustomShowList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomShowList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomshowlist3419type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCustomShow addNewCustShow();

    CTCustomShow getCustShowArray(int i);

    CTCustomShow[] getCustShowArray();

    List<CTCustomShow> getCustShowList();

    CTCustomShow insertNewCustShow(int i);

    void removeCustShow(int i);

    void setCustShowArray(int i, CTCustomShow cTCustomShow);

    void setCustShowArray(CTCustomShow[] cTCustomShowArr);

    int sizeOfCustShowArray();
}
