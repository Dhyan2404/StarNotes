.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctconnectionc6e7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDbPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDbPr;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewOlapPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOlapPr;
.end method

.method public abstract addNewParameters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTParameters;
.end method

.method public abstract addNewTextPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextPr;
.end method

.method public abstract addNewWebPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPr;
.end method

.method public abstract getBackground()Z
.end method

.method public abstract getCredentials()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCredMethod$Enum;
.end method

.method public abstract getDbPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDbPr;
.end method

.method public abstract getDeleted()Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getId()J
.end method

.method public abstract getInterval()J
.end method

.method public abstract getKeepAlive()Z
.end method

.method public abstract getMinRefreshableVersion()S
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNew()Z
.end method

.method public abstract getOdcFile()Ljava/lang/String;
.end method

.method public abstract getOlapPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOlapPr;
.end method

.method public abstract getOnlyUseConnectionFile()Z
.end method

.method public abstract getParameters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTParameters;
.end method

.method public abstract getReconnectionMethod()J
.end method

.method public abstract getRefreshOnLoad()Z
.end method

.method public abstract getRefreshedVersion()S
.end method

.method public abstract getSaveData()Z
.end method

.method public abstract getSavePassword()Z
.end method

.method public abstract getSingleSignOnId()Ljava/lang/String;
.end method

.method public abstract getSourceFile()Ljava/lang/String;
.end method

.method public abstract getTextPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextPr;
.end method

.method public abstract getType()J
.end method

.method public abstract getWebPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPr;
.end method

.method public abstract isSetBackground()Z
.end method

.method public abstract isSetCredentials()Z
.end method

.method public abstract isSetDbPr()Z
.end method

.method public abstract isSetDeleted()Z
.end method

.method public abstract isSetDescription()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetInterval()Z
.end method

.method public abstract isSetKeepAlive()Z
.end method

.method public abstract isSetMinRefreshableVersion()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNew()Z
.end method

.method public abstract isSetOdcFile()Z
.end method

.method public abstract isSetOlapPr()Z
.end method

.method public abstract isSetOnlyUseConnectionFile()Z
.end method

.method public abstract isSetParameters()Z
.end method

.method public abstract isSetReconnectionMethod()Z
.end method

.method public abstract isSetRefreshOnLoad()Z
.end method

.method public abstract isSetSaveData()Z
.end method

.method public abstract isSetSavePassword()Z
.end method

.method public abstract isSetSingleSignOnId()Z
.end method

.method public abstract isSetSourceFile()Z
.end method

.method public abstract isSetTextPr()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetWebPr()Z
.end method

.method public abstract setBackground(Z)V
.end method

.method public abstract setCredentials(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCredMethod$Enum;)V
.end method

.method public abstract setDbPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDbPr;)V
.end method

.method public abstract setDeleted(Z)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setId(J)V
.end method

.method public abstract setInterval(J)V
.end method

.method public abstract setKeepAlive(Z)V
.end method

.method public abstract setMinRefreshableVersion(S)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNew(Z)V
.end method

.method public abstract setOdcFile(Ljava/lang/String;)V
.end method

.method public abstract setOlapPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOlapPr;)V
.end method

.method public abstract setOnlyUseConnectionFile(Z)V
.end method

.method public abstract setParameters(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTParameters;)V
.end method

.method public abstract setReconnectionMethod(J)V
.end method

.method public abstract setRefreshOnLoad(Z)V
.end method

.method public abstract setRefreshedVersion(S)V
.end method

.method public abstract setSaveData(Z)V
.end method

.method public abstract setSavePassword(Z)V
.end method

.method public abstract setSingleSignOnId(Ljava/lang/String;)V
.end method

.method public abstract setSourceFile(Ljava/lang/String;)V
.end method

.method public abstract setTextPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextPr;)V
.end method

.method public abstract setType(J)V
.end method

.method public abstract setWebPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPr;)V
.end method

.method public abstract unsetBackground()V
.end method

.method public abstract unsetCredentials()V
.end method

.method public abstract unsetDbPr()V
.end method

.method public abstract unsetDeleted()V
.end method

.method public abstract unsetDescription()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetInterval()V
.end method

.method public abstract unsetKeepAlive()V
.end method

.method public abstract unsetMinRefreshableVersion()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNew()V
.end method

.method public abstract unsetOdcFile()V
.end method

.method public abstract unsetOlapPr()V
.end method

.method public abstract unsetOnlyUseConnectionFile()V
.end method

.method public abstract unsetParameters()V
.end method

.method public abstract unsetReconnectionMethod()V
.end method

.method public abstract unsetRefreshOnLoad()V
.end method

.method public abstract unsetSaveData()V
.end method

.method public abstract unsetSavePassword()V
.end method

.method public abstract unsetSingleSignOnId()V
.end method

.method public abstract unsetSourceFile()V
.end method

.method public abstract unsetTextPr()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetWebPr()V
.end method

.method public abstract xgetBackground()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCredentials()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCredMethod;
.end method

.method public abstract xgetDeleted()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDescription()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetInterval()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetKeepAlive()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMinRefreshableVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetNew()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOdcFile()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOnlyUseConnectionFile()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetReconnectionMethod()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRefreshOnLoad()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRefreshedVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetSaveData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSavePassword()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSingleSignOnId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetSourceFile()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetBackground(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCredentials(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCredMethod;)V
.end method

.method public abstract xsetDeleted(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDescription(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetInterval(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetKeepAlive(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMinRefreshableVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetNew(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOdcFile(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOnlyUseConnectionFile(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetReconnectionMethod(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRefreshOnLoad(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRefreshedVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetSaveData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSavePassword(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSingleSignOnId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetSourceFile(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
