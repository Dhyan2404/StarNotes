.class public final synthetic Lcom/sunia/HTREnginev2/rqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rqm;->e:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rqm;->e:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setXadesDigestAlgo(Ljava/lang/String;)V

    return-void
.end method
