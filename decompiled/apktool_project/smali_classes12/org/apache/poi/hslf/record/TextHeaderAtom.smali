.class public final Lorg/apache/poi/hslf/record/TextHeaderAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hslf/record/ParentAwareRecord;


# static fields
.field public static final _type:J


# instance fields
.field private _header:[B

.field private index:I

.field private parentRecord:Lorg/apache/poi/hslf/record/RecordContainer;

.field private textType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->TextHeaderAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_type:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->index:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_header:[B

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 11
    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_header:[B

    sget-wide v1, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_type:J

    long-to-int v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 12
    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_header:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 13
    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->OTHER:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget v0, v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    iput v0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->textType:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->index:I

    const/16 v0, 0xc

    if-ge p3, v0, :cond_1

    .line 3
    array-length p3, p1

    sub-int/2addr p3, p2

    if-lt p3, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough data to form a TextHeaderAtom (always 12 bytes long) - found "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    add-int/lit8 p3, p2, 0x8

    .line 5
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_header:[B

    .line 6
    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->textType:I

    return-void
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/vcn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vcn;-><init>(Lorg/apache/poi/hslf/record/TextHeaderAtom;)V

    new-instance v1, Lcom/sunia/HTREnginev2/wcn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wcn;-><init>(Lorg/apache/poi/hslf/record/TextHeaderAtom;)V

    const-string p0, "index"

    const-string v2, "textType"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->index:I

    return p0
.end method

.method public getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->parentRecord:Lorg/apache/poi/hslf/record/RecordContainer;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_type:J

    return-wide v0
.end method

.method public getTextType()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->textType:I

    return p0
.end method

.method public getTextTypeEnum()Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->textType:I

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    move-result-object p0

    return-object p0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->index:I

    return-void
.end method

.method public setParentRecord(Lorg/apache/poi/hslf/record/RecordContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->parentRecord:Lorg/apache/poi/hslf/record/RecordContainer;

    return-void
.end method

.method public setTextType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->textType:I

    return-void
.end method

.method public setTextTypeEnum(Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;)V
    .locals 0

    iget p1, p1, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    iput p1, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->textType:I

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget p0, p0, Lorg/apache/poi/hslf/record/TextHeaderAtom;->textType:I

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/record/Record;->writeLittleEndian(ILjava/io/OutputStream;)V

    return-void
.end method
