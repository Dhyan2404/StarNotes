.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;",
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

    const-string v2, "ctextensionlist4772type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExt()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;
.end method

.method public abstract getExtArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;
.end method

.method public abstract getExtArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;
.end method

.method public abstract getExtList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewExt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;
.end method

.method public abstract removeExt(I)V
.end method

.method public abstract setExtArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;)V
.end method

.method public abstract setExtArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtension;)V
.end method

.method public abstract sizeOfExtArray()I
.end method
