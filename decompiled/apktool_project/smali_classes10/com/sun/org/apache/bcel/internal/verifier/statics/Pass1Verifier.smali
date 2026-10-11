.class public final Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;
.super Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;
.source "SourceFile"


# instance fields
.field private jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

.field private myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/bcel/internal/verifier/Verifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    return-void
.end method

.method private getJavaClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->jc:Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    return-object p0
.end method


# virtual methods
.method public do_verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->getJavaClass()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sun/org/apache/bcel/internal/verifier/exc/LoadingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong name: the internal name of the .class file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' does not match the file\'s name \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->myOwner:Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/LoadingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/sun/org/apache/bcel/internal/verifier/exc/LoadingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassFormatError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    sget-object p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    return-object p0

    :cond_2
    new-instance p0, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    const-string v1, "Repository.lookup() failed. FILE NOT FOUND?"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing via BCEL did not succeed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " occured:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/Utility;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v1

    :catch_1
    move-exception p0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v1

    :catch_2
    move-exception p0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/exc/VerifierConstraintViolatedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->getMessages()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
