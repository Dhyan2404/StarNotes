.class public interface abstract Lcom/microsoft/schemas/office/office/CTEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTEntry;",
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

    const-string v2, "ctentry612btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTEntry;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTEntry;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getNew()I
.end method

.method public abstract getOld()I
.end method

.method public abstract isSetNew()Z
.end method

.method public abstract isSetOld()Z
.end method

.method public abstract setNew(I)V
.end method

.method public abstract setOld(I)V
.end method

.method public abstract unsetNew()V
.end method

.method public abstract unsetOld()V
.end method

.method public abstract xgetNew()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetOld()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xsetNew(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetOld(Lorg/apache/xmlbeans/XmlInt;)V
.end method
