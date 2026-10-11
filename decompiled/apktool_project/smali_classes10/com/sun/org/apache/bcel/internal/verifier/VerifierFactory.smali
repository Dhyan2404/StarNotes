.class public Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hashMap:Ljava/util/HashMap;

.field private static observers:Ljava/util/Vector;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->hashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->observers:Ljava/util/Vector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;)V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static detach(Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;)V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getVerifier(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/verifier/Verifier;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/verifier/Verifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->notify(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getVerifiers()[Lcom/sun/org/apache/bcel/internal/verifier/Verifier;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/org/apache/bcel/internal/verifier/Verifier;

    return-object v0
.end method

.method private static notify(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactory;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;

    invoke-interface {v1, p0}, Lcom/sun/org/apache/bcel/internal/verifier/VerifierFactoryObserver;->update(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
