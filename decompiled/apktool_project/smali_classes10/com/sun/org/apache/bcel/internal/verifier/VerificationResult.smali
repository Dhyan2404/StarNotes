.class public Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VERIFIED_NOTYET:I = 0x0

.field private static final VERIFIED_NOTYET_MSG:Ljava/lang/String; = "Not yet verified."

.field public static final VERIFIED_OK:I = 0x1

.field private static final VERIFIED_OK_MSG:Ljava/lang/String; = "Passed verification."

.field public static final VERIFIED_REJECTED:I = 0x2

.field public static final VR_NOTYET:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

.field public static final VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;


# instance fields
.field private detailMessage:Ljava/lang/String;

.field private numeric:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    const/4 v1, 0x0

    const-string v2, "Not yet verified."

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_NOTYET:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    const/4 v1, 0x1

    const-string v2, "Passed verification."

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->numeric:I

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    iget v0, p1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->numeric:I

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->numeric:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->numeric:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->numeric:I

    if-nez v0, :cond_0

    const-string v1, "VERIFIED_NOTYET"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v1, "VERIFIED_OK"

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v1, "VERIFIED_REJECTED"

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
