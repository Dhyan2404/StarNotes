package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.STDrawingElementId;

/* loaded from: classes14.dex */
public interface CTTLGraphicalObjectBuild extends XmlObject {
    public static final DocumentFactory<CTTLGraphicalObjectBuild> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLGraphicalObjectBuild> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlgraphicalobjectbuild9a11type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEmpty addNewBldAsOne();

    CTAnimationGraphicalObjectBuildProperties addNewBldSub();

    CTEmpty getBldAsOne();

    CTAnimationGraphicalObjectBuildProperties getBldSub();

    long getGrpId();

    long getSpid();

    boolean getUiExpand();

    boolean isSetBldAsOne();

    boolean isSetBldSub();

    boolean isSetUiExpand();

    void setBldAsOne(CTEmpty cTEmpty);

    void setBldSub(CTAnimationGraphicalObjectBuildProperties cTAnimationGraphicalObjectBuildProperties);

    void setGrpId(long j);

    void setSpid(long j);

    void setUiExpand(boolean z);

    void unsetBldAsOne();

    void unsetBldSub();

    void unsetUiExpand();

    XmlUnsignedInt xgetGrpId();

    STDrawingElementId xgetSpid();

    XmlBoolean xgetUiExpand();

    void xsetGrpId(XmlUnsignedInt xmlUnsignedInt);

    void xsetSpid(STDrawingElementId sTDrawingElementId);

    void xsetUiExpand(XmlBoolean xmlBoolean);
}
