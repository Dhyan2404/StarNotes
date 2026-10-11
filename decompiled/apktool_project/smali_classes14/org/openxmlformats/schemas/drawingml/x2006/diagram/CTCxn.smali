.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;",
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

    const-string v2, "ctcxn0662type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTCxn;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getDestId()Ljava/lang/Object;
.end method

.method public abstract getDestOrd()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getModelId()Ljava/lang/Object;
.end method

.method public abstract getParTransId()Ljava/lang/Object;
.end method

.method public abstract getPresId()Ljava/lang/String;
.end method

.method public abstract getSibTransId()Ljava/lang/Object;
.end method

.method public abstract getSrcId()Ljava/lang/Object;
.end method

.method public abstract getSrcOrd()J
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetParTransId()Z
.end method

.method public abstract isSetPresId()Z
.end method

.method public abstract isSetSibTransId()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setDestId(Ljava/lang/Object;)V
.end method

.method public abstract setDestOrd(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setModelId(Ljava/lang/Object;)V
.end method

.method public abstract setParTransId(Ljava/lang/Object;)V
.end method

.method public abstract setPresId(Ljava/lang/String;)V
.end method

.method public abstract setSibTransId(Ljava/lang/Object;)V
.end method

.method public abstract setSrcId(Ljava/lang/Object;)V
.end method

.method public abstract setSrcOrd(J)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType$Enum;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetParTransId()V
.end method

.method public abstract unsetPresId()V
.end method

.method public abstract unsetSibTransId()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetDestId()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;
.end method

.method public abstract xgetDestOrd()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetModelId()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;
.end method

.method public abstract xgetParTransId()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;
.end method

.method public abstract xgetPresId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSibTransId()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;
.end method

.method public abstract xgetSrcId()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;
.end method

.method public abstract xgetSrcOrd()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;
.end method

.method public abstract xsetDestId(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;)V
.end method

.method public abstract xsetDestOrd(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetModelId(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;)V
.end method

.method public abstract xsetParTransId(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;)V
.end method

.method public abstract xsetPresId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSibTransId(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;)V
.end method

.method public abstract xsetSrcId(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STModelId;)V
.end method

.method public abstract xsetSrcOrd(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STCxnType;)V
.end method
