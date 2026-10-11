.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;",
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

    const-string v2, "dataconnectiontype1591type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DataConnectionType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlwaysUseConnectionFile()Z
.end method

.method public abstract getCommand()Ljava/lang/String;
.end method

.method public abstract getConnectionString()Ljava/lang/String;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFriendlyName()Ljava/lang/String;
.end method

.method public abstract getID()J
.end method

.method public abstract getTimeout()J
.end method

.method public abstract isSetAlwaysUseConnectionFile()Z
.end method

.method public abstract isSetCommand()Z
.end method

.method public abstract isSetConnectionString()Z
.end method

.method public abstract isSetFriendlyName()Z
.end method

.method public abstract isSetTimeout()Z
.end method

.method public abstract setAlwaysUseConnectionFile(Z)V
.end method

.method public abstract setCommand(Ljava/lang/String;)V
.end method

.method public abstract setConnectionString(Ljava/lang/String;)V
.end method

.method public abstract setFileName(Ljava/lang/String;)V
.end method

.method public abstract setFriendlyName(Ljava/lang/String;)V
.end method

.method public abstract setID(J)V
.end method

.method public abstract setTimeout(J)V
.end method

.method public abstract unsetAlwaysUseConnectionFile()V
.end method

.method public abstract unsetCommand()V
.end method

.method public abstract unsetConnectionString()V
.end method

.method public abstract unsetFriendlyName()V
.end method

.method public abstract unsetTimeout()V
.end method

.method public abstract xgetAlwaysUseConnectionFile()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCommand()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetConnectionString()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFileName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetFriendlyName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetTimeout()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetAlwaysUseConnectionFile(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCommand(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetConnectionString(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFileName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetFriendlyName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetTimeout(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
