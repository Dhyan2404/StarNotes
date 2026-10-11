.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/EventItemType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/EventItemType;",
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

    const-string v2, "eventitemtype417etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/EventItemType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/EventItemType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAction()I
.end method

.method public abstract getEnabled()Z
.end method

.method public abstract getEventCode()I
.end method

.method public abstract getID()J
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract getTargetArgs()Ljava/lang/String;
.end method

.method public abstract isSetEnabled()Z
.end method

.method public abstract setAction(I)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setEventCode(I)V
.end method

.method public abstract setID(J)V
.end method

.method public abstract setTarget(Ljava/lang/String;)V
.end method

.method public abstract setTargetArgs(Ljava/lang/String;)V
.end method

.method public abstract unsetEnabled()V
.end method

.method public abstract xgetAction()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetEnabled()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEventCode()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetTarget()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTargetArgs()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAction(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetEnabled(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEventCode(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetTarget(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTargetArgs(Lorg/apache/xmlbeans/XmlString;)V
.end method
