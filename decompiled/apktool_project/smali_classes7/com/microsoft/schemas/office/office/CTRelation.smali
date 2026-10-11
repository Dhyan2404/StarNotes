.class public interface abstract Lcom/microsoft/schemas/office/office/CTRelation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTRelation;",
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

    const-string v2, "ctrelation60dftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTRelation;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTRelation;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getIdcntr()Ljava/lang/String;
.end method

.method public abstract getIddest()Ljava/lang/String;
.end method

.method public abstract getIdsrc()Ljava/lang/String;
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract isSetIdcntr()Z
.end method

.method public abstract isSetIddest()Z
.end method

.method public abstract isSetIdsrc()Z
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setIdcntr(Ljava/lang/String;)V
.end method

.method public abstract setIddest(Ljava/lang/String;)V
.end method

.method public abstract setIdsrc(Ljava/lang/String;)V
.end method

.method public abstract unsetExt()V
.end method

.method public abstract unsetIdcntr()V
.end method

.method public abstract unsetIddest()V
.end method

.method public abstract unsetIdsrc()V
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xgetIdcntr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetIddest()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetIdsrc()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method

.method public abstract xsetIdcntr(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetIddest(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetIdsrc(Lorg/apache/xmlbeans/XmlString;)V
.end method
