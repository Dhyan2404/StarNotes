.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;",
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

    const-string v2, "ctpersontypef23dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/bibliography/CTPersonType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addFirst(Ljava/lang/String;)V
.end method

.method public abstract addLast(Ljava/lang/String;)V
.end method

.method public abstract addMiddle(Ljava/lang/String;)V
.end method

.method public abstract addNewFirst()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewLast()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract addNewMiddle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract getFirstArray(I)Ljava/lang/String;
.end method

.method public abstract getFirstArray()[Ljava/lang/String;
.end method

.method public abstract getFirstList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastArray(I)Ljava/lang/String;
.end method

.method public abstract getLastArray()[Ljava/lang/String;
.end method

.method public abstract getLastList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMiddleArray(I)Ljava/lang/String;
.end method

.method public abstract getMiddleArray()[Ljava/lang/String;
.end method

.method public abstract getMiddleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertFirst(ILjava/lang/String;)V
.end method

.method public abstract insertLast(ILjava/lang/String;)V
.end method

.method public abstract insertMiddle(ILjava/lang/String;)V
.end method

.method public abstract insertNewFirst(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewLast(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract insertNewMiddle(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract removeFirst(I)V
.end method

.method public abstract removeLast(I)V
.end method

.method public abstract removeMiddle(I)V
.end method

.method public abstract setFirstArray(ILjava/lang/String;)V
.end method

.method public abstract setFirstArray([Ljava/lang/String;)V
.end method

.method public abstract setLastArray(ILjava/lang/String;)V
.end method

.method public abstract setLastArray([Ljava/lang/String;)V
.end method

.method public abstract setMiddleArray(ILjava/lang/String;)V
.end method

.method public abstract setMiddleArray([Ljava/lang/String;)V
.end method

.method public abstract sizeOfFirstArray()I
.end method

.method public abstract sizeOfLastArray()I
.end method

.method public abstract sizeOfMiddleArray()I
.end method

.method public abstract xgetFirstArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetFirstArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetFirstList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLastArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetLastArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetLastList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMiddleArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetMiddleArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetMiddleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetFirstArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetFirstArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetLastArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetLastArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetMiddleArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetMiddleArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
