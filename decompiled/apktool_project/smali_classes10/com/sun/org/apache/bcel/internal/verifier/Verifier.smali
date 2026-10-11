.class public Lcom/sun/org/apache/bcel/internal/verifier/Verifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final classname:Ljava/lang/String;

.field private p1v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;

.field private p2v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

.field private p3avs:Ljava/util/HashMap;

.field private p3bvs:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3avs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3bvs:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->classname:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->flush()V

    return-void
.end method

.method public static _main([Ljava/lang/String;)V
    .locals 12

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "JustIce by Enver Haase, (C) 2001-2002.\n<http://bcel.sourceforge.net>\n<http://jakarta.apache.org/bcel>\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    :cond_0
    aget-object v2, p0, v1

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now verifying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pass 1:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pass 2:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;->VR_OK:Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    if-ne v3, v5, :cond_1

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v3

    move v5, v0

    :goto_1
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass3a(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v6

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pass 3a, method number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " [\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\']:\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->doPass3b(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object v6

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pass 3b, method number "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Warnings:"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->getMessages()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-nez v5, :cond_2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "<none>"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    move v5, v0

    :goto_2
    array-length v6, v3

    if-ge v5, v6, :cond_3

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->flush()V

    invoke-static {}, Lcom/sun/org/apache/bcel/internal/Repository;->clearCache()V

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public doPass1()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p1v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/Verifier;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p1v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p1v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public doPass2()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p2v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/Verifier;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p2v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p2v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public doPass3a(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3avs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3avs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-direct {v1, p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/Verifier;I)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3avs:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public doPass3b(I)Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3bvs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3bvs:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;

    invoke-direct {v1, p0, p1}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;-><init>(Lcom/sun/org/apache/bcel/internal/verifier/Verifier;I)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3bvs:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->verify()Lcom/sun/org/apache/bcel/internal/verifier/VerificationResult;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p1v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p2v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3avs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3bvs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->classname:Ljava/lang/String;

    return-object p0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p1v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass1Verifier;->getMessages()[Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pass 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p2v:Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass2Verifier;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->getMessages()[Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pass 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3avs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\'): "

    const-string v5, " (\'"

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->getMessages()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/statics/Pass3aVerifier;->getMethodNo()I

    move-result v3

    move v7, v2

    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pass 3a, method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->classname:Ljava/lang/String;

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->p3bvs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/PassVerifier;->getMessages()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/verifier/structurals/Pass3bVerifier;->getMethodNo()I

    move-result v3

    move v7, v2

    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pass 3b, method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;->classname:Ljava/lang/String;

    invoke-static {v9}, Lcom/sun/org/apache/bcel/internal/Repository;->lookupClass(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;->getMethods()[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-object p0
.end method
