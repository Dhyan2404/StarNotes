.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;",
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

    const-string v2, "rowmaptype02d7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/RowMapType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getPageID()J
.end method

.method public abstract getRowID()J
.end method

.method public abstract getShapeID()J
.end method

.method public abstract setPageID(J)V
.end method

.method public abstract setRowID(J)V
.end method

.method public abstract setShapeID(J)V
.end method

.method public abstract xgetPageID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRowID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShapeID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetPageID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRowID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShapeID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
