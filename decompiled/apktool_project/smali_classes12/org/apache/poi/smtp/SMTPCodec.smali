.class public interface abstract Lorg/apache/poi/smtp/SMTPCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Lorg/apache/poi/smtp/ContentTransferEncoding;)Lorg/apache/poi/smtp/SMTPCodec;
    .locals 2

    sget-object v0, Lorg/apache/poi/smtp/SMTPCodec$1;->$SwitchMap$org$apache$poi$smtp$ContentTransferEncoding:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    new-instance p0, Lorg/apache/poi/smtp/QuotedPrintableCodec;

    invoke-direct {p0}, Lorg/apache/poi/smtp/QuotedPrintableCodec;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/smtp/SMTPException;

    const-string v1, "Unsupported ContentTransferEncoding: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/smtp/SMTPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lorg/apache/poi/smtp/Base64Codec;

    invoke-direct {p0}, Lorg/apache/poi/smtp/Base64Codec;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/poi/smtp/EmptyCodec;

    invoke-direct {p0}, Lorg/apache/poi/smtp/EmptyCodec;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract decode(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract decode([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
