.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRefs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRefs;",
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

    const-string v2, "ctdatastoreschemarefsefeatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRefs;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRefs;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSchemaRef()Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRef;
.end method

.method public abstract getSchemaRefArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRef;
.end method

.method public abstract getSchemaRefArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRef;
.end method

.method public abstract getSchemaRefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSchemaRef(I)Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRef;
.end method

.method public abstract removeSchemaRef(I)V
.end method

.method public abstract setSchemaRefArray(ILorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRef;)V
.end method

.method public abstract setSchemaRefArray([Lorg/openxmlformats/schemas/officeDocument/x2006/customXml/CTDatastoreSchemaRef;)V
.end method

.method public abstract sizeOfSchemaRefArray()I
.end method
