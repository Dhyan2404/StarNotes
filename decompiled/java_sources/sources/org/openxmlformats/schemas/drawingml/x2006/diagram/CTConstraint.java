package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STBoolOperator;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STConstraintRelationship;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STConstraintType;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STElementType;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTConstraint extends XmlObject {
    public static final DocumentFactory<CTConstraint> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTConstraint> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctconstrainte8b4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTOfficeArtExtensionList getExtLst();

    double getFact();

    STConstraintRelationship.Enum getFor();

    String getForName();

    STBoolOperator.Enum getOp();

    STElementType.Enum getPtType();

    STConstraintRelationship.Enum getRefFor();

    String getRefForName();

    STElementType.Enum getRefPtType();

    STConstraintType.Enum getRefType();

    STConstraintType.Enum getType();

    double getVal();

    boolean isSetExtLst();

    boolean isSetFact();

    boolean isSetFor();

    boolean isSetForName();

    boolean isSetOp();

    boolean isSetPtType();

    boolean isSetRefFor();

    boolean isSetRefForName();

    boolean isSetRefPtType();

    boolean isSetRefType();

    boolean isSetVal();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setFact(double d);

    void setFor(STConstraintRelationship.Enum r1);

    void setForName(String str);

    void setOp(STBoolOperator.Enum r1);

    void setPtType(STElementType.Enum r1);

    void setRefFor(STConstraintRelationship.Enum r1);

    void setRefForName(String str);

    void setRefPtType(STElementType.Enum r1);

    void setRefType(STConstraintType.Enum r1);

    void setType(STConstraintType.Enum r1);

    void setVal(double d);

    void unsetExtLst();

    void unsetFact();

    void unsetFor();

    void unsetForName();

    void unsetOp();

    void unsetPtType();

    void unsetRefFor();

    void unsetRefForName();

    void unsetRefPtType();

    void unsetRefType();

    void unsetVal();

    XmlDouble xgetFact();

    STConstraintRelationship xgetFor();

    XmlString xgetForName();

    STBoolOperator xgetOp();

    STElementType xgetPtType();

    STConstraintRelationship xgetRefFor();

    XmlString xgetRefForName();

    STElementType xgetRefPtType();

    STConstraintType xgetRefType();

    STConstraintType xgetType();

    XmlDouble xgetVal();

    void xsetFact(XmlDouble xmlDouble);

    void xsetFor(STConstraintRelationship sTConstraintRelationship);

    void xsetForName(XmlString xmlString);

    void xsetOp(STBoolOperator sTBoolOperator);

    void xsetPtType(STElementType sTElementType);

    void xsetRefFor(STConstraintRelationship sTConstraintRelationship);

    void xsetRefForName(XmlString xmlString);

    void xsetRefPtType(STElementType sTElementType);

    void xsetRefType(STConstraintType sTConstraintType);

    void xsetType(STConstraintType sTConstraintType);

    void xsetVal(XmlDouble xmlDouble);
}
