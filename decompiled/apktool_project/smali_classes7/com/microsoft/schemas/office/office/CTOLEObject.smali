.class public interface abstract Lcom/microsoft/schemas/office/office/CTOLEObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTOLEObject;",
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

    const-string v2, "ctoleobjecte5c0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTOLEObject;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTOLEObject;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getDrawAspect()Lcom/microsoft/schemas/office/office/STOLEDrawAspect$Enum;
.end method

.method public abstract getFieldCodes()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLinkType()Ljava/lang/String;
.end method

.method public abstract getLockedField()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;
.end method

.method public abstract getObjectID()Ljava/lang/String;
.end method

.method public abstract getProgID()Ljava/lang/String;
.end method

.method public abstract getShapeID()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/microsoft/schemas/office/office/STOLEType$Enum;
.end method

.method public abstract getUpdateMode()Lcom/microsoft/schemas/office/office/STOLEUpdateMode$Enum;
.end method

.method public abstract isSetDrawAspect()Z
.end method

.method public abstract isSetFieldCodes()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetLinkType()Z
.end method

.method public abstract isSetLockedField()Z
.end method

.method public abstract isSetObjectID()Z
.end method

.method public abstract isSetProgID()Z
.end method

.method public abstract isSetShapeID()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetUpdateMode()Z
.end method

.method public abstract setDrawAspect(Lcom/microsoft/schemas/office/office/STOLEDrawAspect$Enum;)V
.end method

.method public abstract setFieldCodes(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setLinkType(Ljava/lang/String;)V
.end method

.method public abstract setLockedField(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank$Enum;)V
.end method

.method public abstract setObjectID(Ljava/lang/String;)V
.end method

.method public abstract setProgID(Ljava/lang/String;)V
.end method

.method public abstract setShapeID(Ljava/lang/String;)V
.end method

.method public abstract setType(Lcom/microsoft/schemas/office/office/STOLEType$Enum;)V
.end method

.method public abstract setUpdateMode(Lcom/microsoft/schemas/office/office/STOLEUpdateMode$Enum;)V
.end method

.method public abstract unsetDrawAspect()V
.end method

.method public abstract unsetFieldCodes()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetLinkType()V
.end method

.method public abstract unsetLockedField()V
.end method

.method public abstract unsetObjectID()V
.end method

.method public abstract unsetProgID()V
.end method

.method public abstract unsetShapeID()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetUpdateMode()V
.end method

.method public abstract xgetDrawAspect()Lcom/microsoft/schemas/office/office/STOLEDrawAspect;
.end method

.method public abstract xgetFieldCodes()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetLinkType()Lcom/microsoft/schemas/office/office/STOLELinkType;
.end method

.method public abstract xgetLockedField()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;
.end method

.method public abstract xgetObjectID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetProgID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShapeID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetType()Lcom/microsoft/schemas/office/office/STOLEType;
.end method

.method public abstract xgetUpdateMode()Lcom/microsoft/schemas/office/office/STOLEUpdateMode;
.end method

.method public abstract xsetDrawAspect(Lcom/microsoft/schemas/office/office/STOLEDrawAspect;)V
.end method

.method public abstract xsetFieldCodes(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetLinkType(Lcom/microsoft/schemas/office/office/STOLELinkType;)V
.end method

.method public abstract xsetLockedField(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalseBlank;)V
.end method

.method public abstract xsetObjectID(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetProgID(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShapeID(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetType(Lcom/microsoft/schemas/office/office/STOLEType;)V
.end method

.method public abstract xsetUpdateMode(Lcom/microsoft/schemas/office/office/STOLEUpdateMode;)V
.end method
