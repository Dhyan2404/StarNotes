.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;",
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

    const-string v2, "ctfuturemetadata3e9btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBk()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getBkArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;
.end method

.method public abstract getBkArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;
.end method

.method public abstract getBkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract insertNewBk(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeBk(I)V
.end method

.method public abstract setBkArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;)V
.end method

.method public abstract setBkArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadataBlock;)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract sizeOfBkArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
