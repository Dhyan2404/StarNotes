.class public interface abstract Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchemaLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchemaLibrary;",
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

    const-string v2, "ctschemalibrary4028type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchemaLibrary;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchemaLibrary;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSchema()Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;
.end method

.method public abstract getSchemaArray(I)Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;
.end method

.method public abstract getSchemaArray()[Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;
.end method

.method public abstract getSchemaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSchema(I)Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;
.end method

.method public abstract removeSchema(I)V
.end method

.method public abstract setSchemaArray(ILorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;)V
.end method

.method public abstract setSchemaArray([Lorg/openxmlformats/schemas/schemaLibrary/x2006/main/CTSchema;)V
.end method

.method public abstract sizeOfSchemaArray()I
.end method
