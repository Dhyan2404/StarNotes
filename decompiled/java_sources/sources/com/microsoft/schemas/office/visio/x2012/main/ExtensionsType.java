package com.microsoft.schemas.office.visio.x2012.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ExtensionsType extends XmlObject {
    public static final DocumentFactory<ExtensionsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ExtensionsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "extensionstype1ca5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CellDefType addNewCellDef();

    FunctionDefType addNewFunctionDef();

    SectionDefType addNewSectionDef();

    CellDefType getCellDefArray(int i);

    CellDefType[] getCellDefArray();

    List<CellDefType> getCellDefList();

    FunctionDefType getFunctionDefArray(int i);

    FunctionDefType[] getFunctionDefArray();

    List<FunctionDefType> getFunctionDefList();

    SectionDefType getSectionDefArray(int i);

    SectionDefType[] getSectionDefArray();

    List<SectionDefType> getSectionDefList();

    CellDefType insertNewCellDef(int i);

    FunctionDefType insertNewFunctionDef(int i);

    SectionDefType insertNewSectionDef(int i);

    void removeCellDef(int i);

    void removeFunctionDef(int i);

    void removeSectionDef(int i);

    void setCellDefArray(int i, CellDefType cellDefType);

    void setCellDefArray(CellDefType[] cellDefTypeArr);

    void setFunctionDefArray(int i, FunctionDefType functionDefType);

    void setFunctionDefArray(FunctionDefType[] functionDefTypeArr);

    void setSectionDefArray(int i, SectionDefType sectionDefType);

    void setSectionDefArray(SectionDefType[] sectionDefTypeArr);

    int sizeOfCellDefArray();

    int sizeOfFunctionDefArray();

    int sizeOfSectionDefArray();
}
