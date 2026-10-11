.class public interface abstract Lorg/w3/x2000/x09/xmldsig/SPKIDataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/SPKIDataType;",
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

    const-string v2, "spkidatatypea180type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/SPKIDataType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/SPKIDataType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSPKISexp()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract addSPKISexp([B)V
.end method

.method public abstract getSPKISexpArray(I)[B
.end method

.method public abstract getSPKISexpArray()[[B
.end method

.method public abstract getSPKISexpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract insertNewSPKISexp(I)Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract insertSPKISexp(I[B)V
.end method

.method public abstract removeSPKISexp(I)V
.end method

.method public abstract setSPKISexpArray(I[B)V
.end method

.method public abstract setSPKISexpArray([[B)V
.end method

.method public abstract sizeOfSPKISexpArray()I
.end method

.method public abstract xgetSPKISexpArray(I)Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSPKISexpArray()[Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetSPKISexpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlBase64Binary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetSPKISexpArray(ILorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetSPKISexpArray([Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method
