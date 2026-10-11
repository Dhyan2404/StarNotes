.class public final synthetic Lcom/sunia/HTREnginev2/k7n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k7n;->e:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k7n;->e:Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->addCRL([B)V

    return-void
.end method
