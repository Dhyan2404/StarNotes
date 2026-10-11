.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectEmbed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectEmbed;",
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

    const-string v2, "ctobjectembedb578type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectEmbed;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectEmbed;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getDrawAspect()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STObjectDrawAspect$Enum;
.end method

.method public abstract getFieldCodes()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getProgId()Ljava/lang/String;
.end method

.method public abstract getShapeId()Ljava/lang/String;
.end method

.method public abstract isSetDrawAspect()Z
.end method

.method public abstract isSetFieldCodes()Z
.end method

.method public abstract isSetProgId()Z
.end method

.method public abstract isSetShapeId()Z
.end method

.method public abstract setDrawAspect(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STObjectDrawAspect$Enum;)V
.end method

.method public abstract setFieldCodes(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setProgId(Ljava/lang/String;)V
.end method

.method public abstract setShapeId(Ljava/lang/String;)V
.end method

.method public abstract unsetDrawAspect()V
.end method

.method public abstract unsetFieldCodes()V
.end method

.method public abstract unsetProgId()V
.end method

.method public abstract unsetShapeId()V
.end method

.method public abstract xgetDrawAspect()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STObjectDrawAspect;
.end method

.method public abstract xgetFieldCodes()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetProgId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetShapeId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xsetDrawAspect(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STObjectDrawAspect;)V
.end method

.method public abstract xsetFieldCodes(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetProgId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetShapeId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
