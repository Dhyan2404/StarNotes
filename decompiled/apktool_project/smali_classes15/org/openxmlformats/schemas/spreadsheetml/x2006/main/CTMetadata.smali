.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadata;",
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

    const-string v2, "ctmetadata7138type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadata;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadata;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCellMetadata()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataBlocks;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFutureMetadata()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;
.end method

.method public abstract addNewMdxMetadata()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxMetadata;
.end method

.method public abstract addNewMetadataStrings()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStrings;
.end method

.method public abstract addNewMetadataTypes()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataTypes;
.end method

.method public abstract addNewValueMetadata()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataBlocks;
.end method

.method public abstract getCellMetadata()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataBlocks;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFutureMetadataArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;
.end method

.method public abstract getFutureMetadataArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;
.end method

.method public abstract getFutureMetadataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMdxMetadata()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxMetadata;
.end method

.method public abstract getMetadataStrings()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStrings;
.end method

.method public abstract getMetadataTypes()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataTypes;
.end method

.method public abstract getValueMetadata()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataBlocks;
.end method

.method public abstract insertNewFutureMetadata(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;
.end method

.method public abstract isSetCellMetadata()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetMdxMetadata()Z
.end method

.method public abstract isSetMetadataStrings()Z
.end method

.method public abstract isSetMetadataTypes()Z
.end method

.method public abstract isSetValueMetadata()Z
.end method

.method public abstract removeFutureMetadata(I)V
.end method

.method public abstract setCellMetadata(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataBlocks;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFutureMetadataArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;)V
.end method

.method public abstract setFutureMetadataArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFutureMetadata;)V
.end method

.method public abstract setMdxMetadata(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMdxMetadata;)V
.end method

.method public abstract setMetadataStrings(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataStrings;)V
.end method

.method public abstract setMetadataTypes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataTypes;)V
.end method

.method public abstract setValueMetadata(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMetadataBlocks;)V
.end method

.method public abstract sizeOfFutureMetadataArray()I
.end method

.method public abstract unsetCellMetadata()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetMdxMetadata()V
.end method

.method public abstract unsetMetadataStrings()V
.end method

.method public abstract unsetMetadataTypes()V
.end method

.method public abstract unsetValueMetadata()V
.end method
