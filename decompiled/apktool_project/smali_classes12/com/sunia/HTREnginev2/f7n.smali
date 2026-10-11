.class public final synthetic Lcom/sunia/HTREnginev2/f7n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

.field public final synthetic f:Ljava/security/cert/X509Certificate;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f7n;->e:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f7n;->f:Ljava/security/cert/X509Certificate;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/f7n;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f7n;->e:Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f7n;->f:Ljava/security/cert/X509Certificate;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f7n;->g:Ljava/lang/String;

    check-cast p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->a(Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;)Z

    move-result p0

    return p0
.end method
