package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTBookViews extends XmlObject {
    public static final DocumentFactory<CTBookViews> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBookViews> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbookviewsb864type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBookView addNewWorkbookView();

    CTBookView getWorkbookViewArray(int i);

    CTBookView[] getWorkbookViewArray();

    List<CTBookView> getWorkbookViewList();

    CTBookView insertNewWorkbookView(int i);

    void removeWorkbookView(int i);

    void setWorkbookViewArray(int i, CTBookView cTBookView);

    void setWorkbookViewArray(CTBookView[] cTBookViewArr);

    int sizeOfWorkbookViewArray();
}
