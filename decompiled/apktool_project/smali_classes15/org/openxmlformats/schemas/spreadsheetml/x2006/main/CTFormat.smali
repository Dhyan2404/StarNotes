.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormat;",
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

    const-string v2, "ctformat1940type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormat;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormat;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewPivotArea()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;
.end method

.method public abstract getAction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;
.end method

.method public abstract getDxfId()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getPivotArea()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;
.end method

.method public abstract isSetAction()Z
.end method

.method public abstract isSetDxfId()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setAction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction$Enum;)V
.end method

.method public abstract setDxfId(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setPivotArea(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotArea;)V
.end method

.method public abstract unsetAction()V
.end method

.method public abstract unsetDxfId()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetAction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;
.end method

.method public abstract xgetDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xsetAction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFormatAction;)V
.end method

.method public abstract xsetDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method
