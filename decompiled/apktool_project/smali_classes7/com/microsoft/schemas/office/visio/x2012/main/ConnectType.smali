.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;",
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

    const-string v2, "connecttypeea41type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFromCell()Ljava/lang/String;
.end method

.method public abstract getFromPart()I
.end method

.method public abstract getFromSheet()J
.end method

.method public abstract getToCell()Ljava/lang/String;
.end method

.method public abstract getToPart()I
.end method

.method public abstract getToSheet()J
.end method

.method public abstract isSetFromCell()Z
.end method

.method public abstract isSetFromPart()Z
.end method

.method public abstract isSetToCell()Z
.end method

.method public abstract isSetToPart()Z
.end method

.method public abstract setFromCell(Ljava/lang/String;)V
.end method

.method public abstract setFromPart(I)V
.end method

.method public abstract setFromSheet(J)V
.end method

.method public abstract setToCell(Ljava/lang/String;)V
.end method

.method public abstract setToPart(I)V
.end method

.method public abstract setToSheet(J)V
.end method

.method public abstract unsetFromCell()V
.end method

.method public abstract unsetFromPart()V
.end method

.method public abstract unsetToCell()V
.end method

.method public abstract unsetToPart()V
.end method

.method public abstract xgetFromCell()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFromPart()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetFromSheet()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetToCell()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetToPart()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetToSheet()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetFromCell(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFromPart(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetFromSheet(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetToCell(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetToPart(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetToSheet(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
