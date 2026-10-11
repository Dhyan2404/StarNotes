package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STConstraintRelationship;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STConstraintType;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STElementType;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTNumericRule extends XmlObject {
    public static final DocumentFactory<CTNumericRule> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNumericRule> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnumericrule4e52type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTOfficeArtExtensionList getExtLst();

    double getFact();

    STConstraintRelationship.Enum getFor();

    String getForName();

    double getMax();

    STElementType.Enum getPtType();

    STConstraintType.Enum getType();

    double getVal();

    boolean isSetExtLst();

    boolean isSetFact();

    boolean isSetFor();

    boolean isSetForName();

    boolean isSetMax();

    boolean isSetPtType();

    boolean isSetVal();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setFact(double d);

    void setFor(STConstraintRelationship.Enum r1);

    void setForName(String str);

    void setMax(double d);

    void setPtType(STElementType.Enum r1);

    void setType(STConstraintType.Enum r1);

    void setVal(double d);

    void unsetExtLst();

    void unsetFact();

    void unsetFor();

    void unsetForName();

    void unsetMax();

    void unsetPtType();

    void unsetVal();

    XmlDouble xgetFact();

    STConstraintRelationship xgetFor();

    XmlString xgetForName();

    XmlDouble xgetMax();

    STElementType xgetPtType();

    STConstraintType xgetType();

    XmlDouble xgetVal();

    void xsetFact(XmlDouble xmlDouble);

    void xsetFor(STConstraintRelationship sTConstraintRelationship);

    void xsetForName(XmlString xmlString);

    void xsetMax(XmlDouble xmlDouble);

    void xsetPtType(STElementType sTElementType);

    void xsetType(STConstraintType sTConstraintType);

    void xsetVal(XmlDouble xmlDouble);
}
