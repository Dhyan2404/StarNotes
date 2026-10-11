.class public final Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;
.super Lorg/apache/poi/hpbf/model/qcbits/QCBit;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static MAX_RECORD_LENGTH:I = 0xf4240


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hpbf/model/qcbits/QCBit;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hpbf/model/qcbits/QCBit;->getData()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    sget v2, Lorg/apache/poi/hpbf/model/qcbits/QCTextBit;->MAX_RECORD_LENGTH:I

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->safelyAllocate(JI)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;[BI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpbf/model/qcbits/QCBit;->setData([B)V

    return-void
.end method
