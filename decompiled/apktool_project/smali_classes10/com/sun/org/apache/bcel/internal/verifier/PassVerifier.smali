.class public abstract Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private messages:Ljava/util/ArrayList;

.field private verificationResult:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verificationResult:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract do_verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verificationResult:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->do_verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verificationResult:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verificationResult:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    return-object p0
.end method
