.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdso;",
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

    const-string v2, "ctodso6017type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdso;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdso;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewColDelim()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewFHdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewFieldMapData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;
.end method

.method public abstract addNewRecipientData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewSrc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewTable()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeSourceType;
.end method

.method public abstract addNewUdl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getColDelim()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getFHdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getFieldMapDataArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;
.end method

.method public abstract getFieldMapDataArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;
.end method

.method public abstract getFieldMapDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecipientDataArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getRecipientDataArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getRecipientDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSrc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getTable()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeSourceType;
.end method

.method public abstract getUdl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract insertNewFieldMapData(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;
.end method

.method public abstract insertNewRecipientData(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract isSetColDelim()Z
.end method

.method public abstract isSetFHdr()Z
.end method

.method public abstract isSetSrc()Z
.end method

.method public abstract isSetTable()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetUdl()Z
.end method

.method public abstract removeFieldMapData(I)V
.end method

.method public abstract removeRecipientData(I)V
.end method

.method public abstract setColDelim(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setFHdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setFieldMapDataArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;)V
.end method

.method public abstract setFieldMapDataArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOdsoFieldMapData;)V
.end method

.method public abstract setRecipientDataArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setRecipientDataArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setSrc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setTable(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMailMergeSourceType;)V
.end method

.method public abstract setUdl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract sizeOfFieldMapDataArray()I
.end method

.method public abstract sizeOfRecipientDataArray()I
.end method

.method public abstract unsetColDelim()V
.end method

.method public abstract unsetFHdr()V
.end method

.method public abstract unsetSrc()V
.end method

.method public abstract unsetTable()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetUdl()V
.end method
