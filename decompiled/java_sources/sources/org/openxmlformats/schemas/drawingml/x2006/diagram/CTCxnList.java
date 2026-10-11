package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCxnList extends XmlObject {
    public static final DocumentFactory<CTCxnList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCxnList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcxnlist1564type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCxn addNewCxn();

    CTCxn getCxnArray(int i);

    CTCxn[] getCxnArray();

    List<CTCxn> getCxnList();

    CTCxn insertNewCxn(int i);

    void removeCxn(int i);

    void setCxnArray(int i, CTCxn cTCxn);

    void setCxnArray(CTCxn[] cTCxnArr);

    int sizeOfCxnArray();
}
