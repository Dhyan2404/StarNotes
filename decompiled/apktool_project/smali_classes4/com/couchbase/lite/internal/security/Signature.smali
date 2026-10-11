.class public final Lcom/couchbase/lite/internal/security/Signature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;
    }
.end annotation


# static fields
.field private static final DER_TAG_OCTET_STRING:B = 0x4t

.field private static final DER_TAG_SEQUENCE:B = 0x30t

.field private static final SIGNING_ALGORITHM:Ljava/lang/String; = "NONEwithRSA"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode([BLcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;)[B
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->NONE:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->access$000(Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x4

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/security/Signature;->encodeDerValue(Ljava/io/ByteArrayOutputStream;B[B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/security/Signature;->encodeSequence(Ljava/io/ByteArrayOutputStream;[B)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static encodeDerValue(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 0
    .param p0    # Ljava/io/ByteArrayOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    array-length p1, p2

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/security/Signature;->encodeLength(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private static encodeLength(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3
    .param p0    # Ljava/io/ByteArrayOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    :goto_0
    ushr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    or-int/lit16 v1, v2, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    :goto_1
    if-ltz v2, :cond_2

    shr-int v0, p1, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static encodeSequence(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 1
    .param p0    # Ljava/io/ByteArrayOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    invoke-static {p0, v0, p1}, Lcom/couchbase/lite/internal/security/Signature;->encodeDerValue(Ljava/io/ByteArrayOutputStream;B[B)V

    return-void
.end method

.method public static signHashData(Ljava/security/PrivateKey;[BLcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;)[B
    .locals 0
    .param p0    # Ljava/security/PrivateKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/security/Signature;->encode([BLcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;)[B

    move-result-object p1

    const-string p2, "NONEwithRSA"

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0
.end method
