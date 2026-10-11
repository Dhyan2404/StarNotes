.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;",
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

    const-string v2, "ctschema0e6atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getSchemaLanguage()Ljava/lang/String;
.end method

.method public abstract getSchemaRef()Ljava/lang/String;
.end method

.method public abstract isSetNamespace()Z
.end method

.method public abstract isSetSchemaLanguage()Z
.end method

.method public abstract isSetSchemaRef()Z
.end method

.method public abstract setID(Ljava/lang/String;)V
.end method

.method public abstract setNamespace(Ljava/lang/String;)V
.end method

.method public abstract setSchemaLanguage(Ljava/lang/String;)V
.end method

.method public abstract setSchemaRef(Ljava/lang/String;)V
.end method

.method public abstract unsetNamespace()V
.end method

.method public abstract unsetSchemaLanguage()V
.end method

.method public abstract unsetSchemaRef()V
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNamespace()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSchemaLanguage()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetSchemaRef()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNamespace(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSchemaLanguage(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetSchemaRef(Lorg/apache/xmlbeans/XmlString;)V
.end method
