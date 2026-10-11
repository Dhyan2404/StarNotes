package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCredMethod;

/* loaded from: classes15.dex */
public interface CTConnection extends XmlObject {
    public static final DocumentFactory<CTConnection> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTConnection> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctconnectionc6e7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDbPr addNewDbPr();

    CTExtensionList addNewExtLst();

    CTOlapPr addNewOlapPr();

    CTParameters addNewParameters();

    CTTextPr addNewTextPr();

    CTWebPr addNewWebPr();

    boolean getBackground();

    STCredMethod.Enum getCredentials();

    CTDbPr getDbPr();

    boolean getDeleted();

    String getDescription();

    CTExtensionList getExtLst();

    long getId();

    long getInterval();

    boolean getKeepAlive();

    short getMinRefreshableVersion();

    String getName();

    boolean getNew();

    String getOdcFile();

    CTOlapPr getOlapPr();

    boolean getOnlyUseConnectionFile();

    CTParameters getParameters();

    long getReconnectionMethod();

    boolean getRefreshOnLoad();

    short getRefreshedVersion();

    boolean getSaveData();

    boolean getSavePassword();

    String getSingleSignOnId();

    String getSourceFile();

    CTTextPr getTextPr();

    long getType();

    CTWebPr getWebPr();

    boolean isSetBackground();

    boolean isSetCredentials();

    boolean isSetDbPr();

    boolean isSetDeleted();

    boolean isSetDescription();

    boolean isSetExtLst();

    boolean isSetInterval();

    boolean isSetKeepAlive();

    boolean isSetMinRefreshableVersion();

    boolean isSetName();

    boolean isSetNew();

    boolean isSetOdcFile();

    boolean isSetOlapPr();

    boolean isSetOnlyUseConnectionFile();

    boolean isSetParameters();

    boolean isSetReconnectionMethod();

    boolean isSetRefreshOnLoad();

    boolean isSetSaveData();

    boolean isSetSavePassword();

    boolean isSetSingleSignOnId();

    boolean isSetSourceFile();

    boolean isSetTextPr();

    boolean isSetType();

    boolean isSetWebPr();

    void setBackground(boolean z);

    void setCredentials(STCredMethod.Enum r1);

    void setDbPr(CTDbPr cTDbPr);

    void setDeleted(boolean z);

    void setDescription(String str);

    void setExtLst(CTExtensionList cTExtensionList);

    void setId(long j);

    void setInterval(long j);

    void setKeepAlive(boolean z);

    void setMinRefreshableVersion(short s);

    void setName(String str);

    void setNew(boolean z);

    void setOdcFile(String str);

    void setOlapPr(CTOlapPr cTOlapPr);

    void setOnlyUseConnectionFile(boolean z);

    void setParameters(CTParameters cTParameters);

    void setReconnectionMethod(long j);

    void setRefreshOnLoad(boolean z);

    void setRefreshedVersion(short s);

    void setSaveData(boolean z);

    void setSavePassword(boolean z);

    void setSingleSignOnId(String str);

    void setSourceFile(String str);

    void setTextPr(CTTextPr cTTextPr);

    void setType(long j);

    void setWebPr(CTWebPr cTWebPr);

    void unsetBackground();

    void unsetCredentials();

    void unsetDbPr();

    void unsetDeleted();

    void unsetDescription();

    void unsetExtLst();

    void unsetInterval();

    void unsetKeepAlive();

    void unsetMinRefreshableVersion();

    void unsetName();

    void unsetNew();

    void unsetOdcFile();

    void unsetOlapPr();

    void unsetOnlyUseConnectionFile();

    void unsetParameters();

    void unsetReconnectionMethod();

    void unsetRefreshOnLoad();

    void unsetSaveData();

    void unsetSavePassword();

    void unsetSingleSignOnId();

    void unsetSourceFile();

    void unsetTextPr();

    void unsetType();

    void unsetWebPr();

    XmlBoolean xgetBackground();

    STCredMethod xgetCredentials();

    XmlBoolean xgetDeleted();

    STXstring xgetDescription();

    XmlUnsignedInt xgetId();

    XmlUnsignedInt xgetInterval();

    XmlBoolean xgetKeepAlive();

    XmlUnsignedByte xgetMinRefreshableVersion();

    STXstring xgetName();

    XmlBoolean xgetNew();

    STXstring xgetOdcFile();

    XmlBoolean xgetOnlyUseConnectionFile();

    XmlUnsignedInt xgetReconnectionMethod();

    XmlBoolean xgetRefreshOnLoad();

    XmlUnsignedByte xgetRefreshedVersion();

    XmlBoolean xgetSaveData();

    XmlBoolean xgetSavePassword();

    STXstring xgetSingleSignOnId();

    STXstring xgetSourceFile();

    XmlUnsignedInt xgetType();

    void xsetBackground(XmlBoolean xmlBoolean);

    void xsetCredentials(STCredMethod sTCredMethod);

    void xsetDeleted(XmlBoolean xmlBoolean);

    void xsetDescription(STXstring sTXstring);

    void xsetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetInterval(XmlUnsignedInt xmlUnsignedInt);

    void xsetKeepAlive(XmlBoolean xmlBoolean);

    void xsetMinRefreshableVersion(XmlUnsignedByte xmlUnsignedByte);

    void xsetName(STXstring sTXstring);

    void xsetNew(XmlBoolean xmlBoolean);

    void xsetOdcFile(STXstring sTXstring);

    void xsetOnlyUseConnectionFile(XmlBoolean xmlBoolean);

    void xsetReconnectionMethod(XmlUnsignedInt xmlUnsignedInt);

    void xsetRefreshOnLoad(XmlBoolean xmlBoolean);

    void xsetRefreshedVersion(XmlUnsignedByte xmlUnsignedByte);

    void xsetSaveData(XmlBoolean xmlBoolean);

    void xsetSavePassword(XmlBoolean xmlBoolean);

    void xsetSingleSignOnId(STXstring sTXstring);

    void xsetSourceFile(STXstring sTXstring);

    void xsetType(XmlUnsignedInt xmlUnsignedInt);
}
