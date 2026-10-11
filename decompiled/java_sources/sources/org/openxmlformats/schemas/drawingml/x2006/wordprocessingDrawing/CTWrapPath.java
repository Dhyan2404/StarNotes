package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;

/* loaded from: classes14.dex */
public interface CTWrapPath extends XmlObject {
    public static final DocumentFactory<CTWrapPath> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWrapPath> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwrappath02b0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPoint2D addNewLineTo();

    CTPoint2D addNewStart();

    boolean getEdited();

    CTPoint2D getLineToArray(int i);

    CTPoint2D[] getLineToArray();

    List<CTPoint2D> getLineToList();

    CTPoint2D getStart();

    CTPoint2D insertNewLineTo(int i);

    boolean isSetEdited();

    void removeLineTo(int i);

    void setEdited(boolean z);

    void setLineToArray(int i, CTPoint2D cTPoint2D);

    void setLineToArray(CTPoint2D[] cTPoint2DArr);

    void setStart(CTPoint2D cTPoint2D);

    int sizeOfLineToArray();

    void unsetEdited();

    XmlBoolean xgetEdited();

    void xsetEdited(XmlBoolean xmlBoolean);
}
