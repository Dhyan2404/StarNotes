.class public interface abstract Lorg/etsi/uri/x01903/v13/ResponderIDType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/ResponderIDType;",
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

    const-string v2, "responderidtype55b9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/ResponderIDType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/ResponderIDType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getByKey()[B
.end method

.method public abstract getByName()Ljava/lang/String;
.end method

.method public abstract isSetByKey()Z
.end method

.method public abstract isSetByName()Z
.end method

.method public abstract setByKey([B)V
.end method

.method public abstract setByName(Ljava/lang/String;)V
.end method

.method public abstract unsetByKey()V
.end method

.method public abstract unsetByName()V
.end method

.method public abstract xgetByKey()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetByName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetByKey(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetByName(Lorg/apache/xmlbeans/XmlString;)V
.end method
