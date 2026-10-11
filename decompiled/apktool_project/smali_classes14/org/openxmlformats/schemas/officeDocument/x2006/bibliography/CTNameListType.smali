.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameListType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameListType;",
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

    const-string v2, "ctnamelisttype0e89type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameListType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTNameListType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPerson()Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;
.end method

.method public abstract getPersonArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;
.end method

.method public abstract getPersonArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;
.end method

.method public abstract getPersonList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewPerson(I)Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;
.end method

.method public abstract removePerson(I)V
.end method

.method public abstract setPersonArray(ILorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;)V
.end method

.method public abstract setPersonArray([Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;)V
.end method

.method public abstract sizeOfPersonArray()I
.end method
