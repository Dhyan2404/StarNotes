.class public interface abstract Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;",
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

    const-string v2, "ctschemac919type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getManifestLocation()Ljava/lang/String;
.end method

.method public abstract getSchemaLanguage()Ljava/lang/String;
.end method

.method public abstract getSchemaLocation()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract isSetManifestLocation()Z
.end method

.method public abstract isSetSchemaLanguage()Z
.end method

.method public abstract isSetSchemaLocation()Z
.end method

.method public abstract isSetUri()Z
.end method

.method public abstract setManifestLocation(Ljava/lang/String;)V
.end method

.method public abstract setSchemaLanguage(Ljava/lang/String;)V
.end method

.method public abstract setSchemaLocation(Ljava/lang/String;)V
.end method

.method public abstract setUri(Ljava/lang/String;)V
.end method

.method public abstract unsetManifestLocation()V
.end method

.method public abstract unsetSchemaLanguage()V
.end method

.method public abstract unsetSchemaLocation()V
.end method

.method public abstract unsetUri()V
.end method

.method public abstract xgetManifestLocation()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSchemaLanguage()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetSchemaLocation()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUri()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetManifestLocation(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSchemaLanguage(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetSchemaLocation(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUri(Lorg/apache/xmlbeans/XmlString;)V
.end method
