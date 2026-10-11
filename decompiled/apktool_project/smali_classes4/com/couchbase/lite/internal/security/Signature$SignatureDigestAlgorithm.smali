.class public final enum Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/security/Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureDigestAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

.field public static final enum NONE:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

.field public static final enum SHA1:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

.field public static final enum SHA224:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

.field public static final enum SHA256:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

.field public static final enum SHA384:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

.field public static final enum SHA512:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;


# instance fields
.field private final encodedDigestAlgorithmOid:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;
    .locals 6

    sget-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->NONE:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    sget-object v1, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA1:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    sget-object v2, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA224:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    sget-object v3, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA256:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    sget-object v4, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA384:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    sget-object v5, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA512:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    filled-new-array/range {v0 .. v5}, [Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    const/4 v1, 0x0

    new-array v2, v1, [B

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->NONE:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    new-instance v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "SHA1"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA1:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    new-instance v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    const/16 v1, 0xf

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const-string v3, "SHA224"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v2}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA224:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    new-instance v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const-string v3, "SHA256"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v2}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA256:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    new-instance v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const-string v3, "SHA384"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v2}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA384:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    new-instance v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "SHA512"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->SHA512:Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-static {}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->$values()[Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->$VALUES:[Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    return-void

    :array_0
    .array-data 1
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x4t
        0x5t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x1t
        0x5t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x2t
        0x5t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x2t
        0x3t
        0x5t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[B)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->encodedDigestAlgorithmOid:[B

    return-void
.end method

.method public static synthetic access$000(Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;)[B
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->getEncodedDigestAlgorithmOid()[B

    move-result-object p0

    return-object p0
.end method

.method private getEncodedDigestAlgorithmOid()[B
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->encodedDigestAlgorithmOid:[B

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;
    .locals 1

    const-class v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->$VALUES:[Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    invoke-virtual {v0}, [Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/internal/security/Signature$SignatureDigestAlgorithm;

    return-object v0
.end method
