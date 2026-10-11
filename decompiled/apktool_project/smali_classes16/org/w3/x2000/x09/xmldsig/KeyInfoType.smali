.class public interface abstract Lorg/w3/x2000/x09/xmldsig/KeyInfoType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/KeyInfoType;",
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

    const-string v2, "keyinfotypec7eatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/KeyInfoType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/KeyInfoType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addKeyName(Ljava/lang/String;)V
.end method

.method public abstract addMgmtData(Ljava/lang/String;)V
.end method

.method public abstract addNewKeyName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewKeyValue()Lorg/w3/x2000/x09/xmldsig/KeyValueType;
.end method

.method public abstract addNewMgmtData()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewPGPData()Lorg/w3/x2000/x09/xmldsig/PGPDataType;
.end method

.method public abstract addNewRetrievalMethod()Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;
.end method

.method public abstract addNewSPKIData()Lorg/w3/x2000/x09/xmldsig/SPKIDataType;
.end method

.method public abstract addNewX509Data()Lorg/w3/x2000/x09/xmldsig/X509DataType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getKeyNameArray(I)Ljava/lang/String;
.end method

.method public abstract getKeyNameArray()[Ljava/lang/String;
.end method

.method public abstract getKeyNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyValueArray(I)Lorg/w3/x2000/x09/xmldsig/KeyValueType;
.end method

.method public abstract getKeyValueArray()[Lorg/w3/x2000/x09/xmldsig/KeyValueType;
.end method

.method public abstract getKeyValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3/x2000/x09/xmldsig/KeyValueType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMgmtDataArray(I)Ljava/lang/String;
.end method

.method public abstract getMgmtDataArray()[Ljava/lang/String;
.end method

.method public abstract getMgmtDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPGPDataArray(I)Lorg/w3/x2000/x09/xmldsig/PGPDataType;
.end method

.method public abstract getPGPDataArray()[Lorg/w3/x2000/x09/xmldsig/PGPDataType;
.end method

.method public abstract getPGPDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3/x2000/x09/xmldsig/PGPDataType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetrievalMethodArray(I)Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;
.end method

.method public abstract getRetrievalMethodArray()[Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;
.end method

.method public abstract getRetrievalMethodList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSPKIDataArray(I)Lorg/w3/x2000/x09/xmldsig/SPKIDataType;
.end method

.method public abstract getSPKIDataArray()[Lorg/w3/x2000/x09/xmldsig/SPKIDataType;
.end method

.method public abstract getSPKIDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3/x2000/x09/xmldsig/SPKIDataType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getX509DataArray(I)Lorg/w3/x2000/x09/xmldsig/X509DataType;
.end method

.method public abstract getX509DataArray()[Lorg/w3/x2000/x09/xmldsig/X509DataType;
.end method

.method public abstract getX509DataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3/x2000/x09/xmldsig/X509DataType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertKeyName(ILjava/lang/String;)V
.end method

.method public abstract insertMgmtData(ILjava/lang/String;)V
.end method

.method public abstract insertNewKeyName(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewKeyValue(I)Lorg/w3/x2000/x09/xmldsig/KeyValueType;
.end method

.method public abstract insertNewMgmtData(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewPGPData(I)Lorg/w3/x2000/x09/xmldsig/PGPDataType;
.end method

.method public abstract insertNewRetrievalMethod(I)Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;
.end method

.method public abstract insertNewSPKIData(I)Lorg/w3/x2000/x09/xmldsig/SPKIDataType;
.end method

.method public abstract insertNewX509Data(I)Lorg/w3/x2000/x09/xmldsig/X509DataType;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract removeKeyName(I)V
.end method

.method public abstract removeKeyValue(I)V
.end method

.method public abstract removeMgmtData(I)V
.end method

.method public abstract removePGPData(I)V
.end method

.method public abstract removeRetrievalMethod(I)V
.end method

.method public abstract removeSPKIData(I)V
.end method

.method public abstract removeX509Data(I)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setKeyNameArray(ILjava/lang/String;)V
.end method

.method public abstract setKeyNameArray([Ljava/lang/String;)V
.end method

.method public abstract setKeyValueArray(ILorg/w3/x2000/x09/xmldsig/KeyValueType;)V
.end method

.method public abstract setKeyValueArray([Lorg/w3/x2000/x09/xmldsig/KeyValueType;)V
.end method

.method public abstract setMgmtDataArray(ILjava/lang/String;)V
.end method

.method public abstract setMgmtDataArray([Ljava/lang/String;)V
.end method

.method public abstract setPGPDataArray(ILorg/w3/x2000/x09/xmldsig/PGPDataType;)V
.end method

.method public abstract setPGPDataArray([Lorg/w3/x2000/x09/xmldsig/PGPDataType;)V
.end method

.method public abstract setRetrievalMethodArray(ILorg/w3/x2000/x09/xmldsig/RetrievalMethodType;)V
.end method

.method public abstract setRetrievalMethodArray([Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;)V
.end method

.method public abstract setSPKIDataArray(ILorg/w3/x2000/x09/xmldsig/SPKIDataType;)V
.end method

.method public abstract setSPKIDataArray([Lorg/w3/x2000/x09/xmldsig/SPKIDataType;)V
.end method

.method public abstract setX509DataArray(ILorg/w3/x2000/x09/xmldsig/X509DataType;)V
.end method

.method public abstract setX509DataArray([Lorg/w3/x2000/x09/xmldsig/X509DataType;)V
.end method

.method public abstract sizeOfKeyNameArray()I
.end method

.method public abstract sizeOfKeyValueArray()I
.end method

.method public abstract sizeOfMgmtDataArray()I
.end method

.method public abstract sizeOfPGPDataArray()I
.end method

.method public abstract sizeOfRetrievalMethodArray()I
.end method

.method public abstract sizeOfSPKIDataArray()I
.end method

.method public abstract sizeOfX509DataArray()I
.end method

.method public abstract unsetId()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xgetKeyNameArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetKeyNameArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetKeyNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetMgmtDataArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMgmtDataArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMgmtDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method

.method public abstract xsetKeyNameArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetKeyNameArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetMgmtDataArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetMgmtDataArray([Lorg/apache/xmlbeans/XmlString;)V
.end method
