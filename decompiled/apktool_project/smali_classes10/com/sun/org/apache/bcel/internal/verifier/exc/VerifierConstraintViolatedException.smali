.class public abstract Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private detailMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public extendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    :cond_1
    if-nez p2, :cond_2

    move-object p2, v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    return-object p0
.end method
