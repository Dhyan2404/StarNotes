.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;",
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

    const-string v2, "ctcachesource00dctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewConsolidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConsolidation;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;
.end method

.method public abstract getConnectionId()J
.end method

.method public abstract getConsolidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConsolidation;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;
.end method

.method public abstract getWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;
.end method

.method public abstract isSetConnectionId()Z
.end method

.method public abstract isSetConsolidation()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetWorksheetSource()Z
.end method

.method public abstract setConnectionId(J)V
.end method

.method public abstract setConsolidation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConsolidation;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType$Enum;)V
.end method

.method public abstract setWorksheetSource(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
.end method

.method public abstract unsetConnectionId()V
.end method

.method public abstract unsetConsolidation()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetWorksheetSource()V
.end method

.method public abstract xgetConnectionId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;
.end method

.method public abstract xsetConnectionId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSourceType;)V
.end method
