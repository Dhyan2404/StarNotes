.class public final Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final MAX_RECORD_LENGTH:I = 0x1312d00


# instance fields
.field private _contents:[B

.field private _type:J


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    const v0, 0x1312d00

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;->_contents:[B

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;->_type:J

    return-void
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;->_contents:[B

    return-object p0
.end method


# virtual methods
.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/xtn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xtn;-><init>(Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;)V

    const-string p0, "contents"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;->_type:J

    return-wide v0
.end method

.method public getRecordTypeEnum()Lorg/apache/poi/hslf/record/RecordTypes;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;->_type:J

    long-to-int p0, v0

    invoke-static {p0}, Lorg/apache/poi/hslf/record/RecordTypes;->forTypeID(I)Lorg/apache/poi/hslf/record/RecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/record/UnknownRecordPlaceholder;->_contents:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
