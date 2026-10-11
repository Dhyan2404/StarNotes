.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;",
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

    const-string v2, "ctvolmaina48btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolMain;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTp()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;
.end method

.method public abstract getFirst()Ljava/lang/String;
.end method

.method public abstract getTpArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;
.end method

.method public abstract getTpArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;
.end method

.method public abstract getTpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTp(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;
.end method

.method public abstract removeTp(I)V
.end method

.method public abstract setFirst(Ljava/lang/String;)V
.end method

.method public abstract setTpArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;)V
.end method

.method public abstract setTpArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;)V
.end method

.method public abstract sizeOfTpArray()I
.end method

.method public abstract xgetFirst()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetFirst(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
