.class public final synthetic Lcom/sunia/HTREnginev2/t7n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/security/cert/X509Certificate;

.field public final synthetic h:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/util/List;Ljava/security/cert/X509Certificate;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t7n;->e:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/t7n;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/t7n;->g:Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/t7n;->h:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t7n;->e:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/t7n;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/t7n;->g:Ljava/security/cert/X509Certificate;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t7n;->h:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->c(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/util/List;Ljava/security/cert/X509Certificate;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
