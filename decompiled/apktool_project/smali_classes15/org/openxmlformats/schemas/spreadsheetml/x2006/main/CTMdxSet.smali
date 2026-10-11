.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxSet;",
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

    const-string v2, "ctmdxset03aatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxSet;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxSet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewN()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.end method

.method public abstract getC()J
.end method

.method public abstract getNArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.end method

.method public abstract getNArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.end method

.method public abstract getNList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNs()J
.end method

.method public abstract getO()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;
.end method

.method public abstract insertNewN(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;
.end method

.method public abstract isSetC()Z
.end method

.method public abstract isSetO()Z
.end method

.method public abstract removeN(I)V
.end method

.method public abstract setC(J)V
.end method

.method public abstract setNArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;)V
.end method

.method public abstract setNArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStringIndex;)V
.end method

.method public abstract setNs(J)V
.end method

.method public abstract setO(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder$Enum;)V
.end method

.method public abstract sizeOfNArray()I
.end method

.method public abstract unsetC()V
.end method

.method public abstract unsetO()V
.end method

.method public abstract xgetC()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetNs()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetO()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;
.end method

.method public abstract xsetC(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetNs(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetO(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxSetOrder;)V
.end method
