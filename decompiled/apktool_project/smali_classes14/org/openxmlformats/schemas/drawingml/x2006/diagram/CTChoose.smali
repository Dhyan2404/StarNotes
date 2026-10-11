.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;",
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

    const-string v2, "ctchoose5b3atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTChoose;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewElse()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTOtherwise;
.end method

.method public abstract addNewIf()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;
.end method

.method public abstract getElse()Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTOtherwise;
.end method

.method public abstract getIfArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;
.end method

.method public abstract getIfArray()[Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;
.end method

.method public abstract getIfList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract insertNewIf(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;
.end method

.method public abstract isSetElse()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract removeIf(I)V
.end method

.method public abstract setElse(Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTOtherwise;)V
.end method

.method public abstract setIfArray(ILorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;)V
.end method

.method public abstract setIfArray([Lorg/openxmlformats/schemas/drawingml/x2006/diagram/CTWhen;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract sizeOfIfArray()I
.end method

.method public abstract unsetElse()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method
