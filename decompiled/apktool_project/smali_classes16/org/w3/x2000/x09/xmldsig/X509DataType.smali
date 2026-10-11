.class public interface abstract Lorg/w3/x2000/x09/xmldsig/X509DataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/X509DataType;",
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

    const-string v2, "x509datatype5775type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/X509DataType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/X509DataType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewX509CRL()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract addNewX509Certificate()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract addNewX509IssuerSerial()Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;
.end method

.method public abstract addNewX509SKI()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract addNewX509SubjectName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addX509CRL([B)V
.end method

.method public abstract addX509Certificate([B)V
.end method

.method public abstract addX509SKI([B)V
.end method

.method public abstract addX509SubjectName(Ljava/lang/String;)V
.end method

.method public abstract getX509CRLArray(I)[B
.end method

.method public abstract getX509CRLArray()[[B
.end method

.method public abstract getX509CRLList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getX509CertificateArray(I)[B
.end method

.method public abstract getX509CertificateArray()[[B
.end method

.method public abstract getX509CertificateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getX509IssuerSerialArray(I)Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;
.end method

.method public abstract getX509IssuerSerialArray()[Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;
.end method

.method public abstract getX509IssuerSerialList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getX509SKIArray(I)[B
.end method

.method public abstract getX509SKIArray()[[B
.end method

.method public abstract getX509SKIList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract getX509SubjectNameArray(I)Ljava/lang/String;
.end method

.method public abstract getX509SubjectNameArray()[Ljava/lang/String;
.end method

.method public abstract getX509SubjectNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewX509CRL(I)Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract insertNewX509Certificate(I)Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract insertNewX509IssuerSerial(I)Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;
.end method

.method public abstract insertNewX509SKI(I)Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract insertNewX509SubjectName(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertX509CRL(I[B)V
.end method

.method public abstract insertX509Certificate(I[B)V
.end method

.method public abstract insertX509SKI(I[B)V
.end method

.method public abstract insertX509SubjectName(ILjava/lang/String;)V
.end method

.method public abstract removeX509CRL(I)V
.end method

.method public abstract removeX509Certificate(I)V
.end method

.method public abstract removeX509IssuerSerial(I)V
.end method

.method public abstract removeX509SKI(I)V
.end method

.method public abstract removeX509SubjectName(I)V
.end method

.method public abstract setX509CRLArray(I[B)V
.end method

.method public abstract setX509CRLArray([[B)V
.end method

.method public abstract setX509CertificateArray(I[B)V
.end method

.method public abstract setX509CertificateArray([[B)V
.end method

.method public abstract setX509IssuerSerialArray(ILorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;)V
.end method

.method public abstract setX509IssuerSerialArray([Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;)V
.end method

.method public abstract setX509SKIArray(I[B)V
.end method

.method public abstract setX509SKIArray([[B)V
.end method

.method public abstract setX509SubjectNameArray(ILjava/lang/String;)V
.end method

.method public abstract setX509SubjectNameArray([Ljava/lang/String;)V
.end method

.method public abstract sizeOfX509CRLArray()I
.end method

.method public abstract sizeOfX509CertificateArray()I
.end method

.method public abstract sizeOfX509IssuerSerialArray()I
.end method

.method public abstract sizeOfX509SKIArray()I
.end method

.method public abstract sizeOfX509SubjectNameArray()I
.end method

.method public abstract xgetX509CRLArray(I)Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetX509CRLArray()[Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetX509CRLList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlBase64Binary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetX509CertificateArray(I)Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetX509CertificateArray()[Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetX509CertificateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlBase64Binary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetX509SKIArray(I)Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetX509SKIArray()[Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetX509SKIList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlBase64Binary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetX509SubjectNameArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetX509SubjectNameArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetX509SubjectNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetX509CRLArray(ILorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetX509CRLArray([Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetX509CertificateArray(ILorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetX509CertificateArray([Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetX509SKIArray(ILorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetX509SKIArray([Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetX509SubjectNameArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetX509SubjectNameArray([Lorg/apache/xmlbeans/XmlString;)V
.end method
