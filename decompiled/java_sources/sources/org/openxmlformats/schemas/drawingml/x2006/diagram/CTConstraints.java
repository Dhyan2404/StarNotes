package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTConstraints extends XmlObject {
    public static final DocumentFactory<CTConstraints> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTConstraints> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctconstraintsfc65type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTConstraint addNewConstr();

    CTConstraint getConstrArray(int i);

    CTConstraint[] getConstrArray();

    List<CTConstraint> getConstrList();

    CTConstraint insertNewConstr(int i);

    void removeConstr(int i);

    void setConstrArray(int i, CTConstraint cTConstraint);

    void setConstrArray(CTConstraint[] cTConstraintArr);

    int sizeOfConstrArray();
}
