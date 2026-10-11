.class public Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;


# instance fields
.field private indent:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;->indent:I

    return-void
.end method

.method public static _main([Ljava/lang/String;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Need exactly one argument: The root class to verify."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    :cond_1
    aget-object v1, p0, v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;

    invoke-direct {v1}, Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;-><init>()V

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->attach(Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;)V

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->detach(Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;->indent:I

    if-ge v1, v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;->indent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;->indent:I

    invoke-static {p1}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v1

    sget-object v2, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-eq v1, v2, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pass 1:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v1

    if-eq v1, v2, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pass 2:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass3a(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    const-string v4, "\']:\n"

    const-string v5, " [\'"

    if-eq v2, v3, :cond_3

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Pass 3a, method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass3b(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v2

    if-eq v2, v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Pass 3b, method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;->indent:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/TransitiveHull;->indent:I

    return-void
.end method
