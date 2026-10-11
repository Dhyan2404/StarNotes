package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTLayoutVariablePropertySet extends XmlObject {
    public static final DocumentFactory<CTLayoutVariablePropertySet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLayoutVariablePropertySet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlayoutvariablepropertysetf054type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAnimLvl addNewAnimLvl();

    CTAnimOne addNewAnimOne();

    CTBulletEnabled addNewBulletEnabled();

    CTChildMax addNewChMax();

    CTChildPref addNewChPref();

    CTDirection addNewDir();

    CTHierBranchStyle addNewHierBranch();

    CTOrgChart addNewOrgChart();

    CTResizeHandles addNewResizeHandles();

    CTAnimLvl getAnimLvl();

    CTAnimOne getAnimOne();

    CTBulletEnabled getBulletEnabled();

    CTChildMax getChMax();

    CTChildPref getChPref();

    CTDirection getDir();

    CTHierBranchStyle getHierBranch();

    CTOrgChart getOrgChart();

    CTResizeHandles getResizeHandles();

    boolean isSetAnimLvl();

    boolean isSetAnimOne();

    boolean isSetBulletEnabled();

    boolean isSetChMax();

    boolean isSetChPref();

    boolean isSetDir();

    boolean isSetHierBranch();

    boolean isSetOrgChart();

    boolean isSetResizeHandles();

    void setAnimLvl(CTAnimLvl cTAnimLvl);

    void setAnimOne(CTAnimOne cTAnimOne);

    void setBulletEnabled(CTBulletEnabled cTBulletEnabled);

    void setChMax(CTChildMax cTChildMax);

    void setChPref(CTChildPref cTChildPref);

    void setDir(CTDirection cTDirection);

    void setHierBranch(CTHierBranchStyle cTHierBranchStyle);

    void setOrgChart(CTOrgChart cTOrgChart);

    void setResizeHandles(CTResizeHandles cTResizeHandles);

    void unsetAnimLvl();

    void unsetAnimOne();

    void unsetBulletEnabled();

    void unsetChMax();

    void unsetChPref();

    void unsetDir();

    void unsetHierBranch();

    void unsetOrgChart();

    void unsetResizeHandles();
}
