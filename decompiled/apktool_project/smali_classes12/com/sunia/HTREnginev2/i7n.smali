.class public final synthetic Lcom/sunia/HTREnginev2/i7n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lorg/bouncycastle/asn1/x500/X500Name;

.field public final synthetic f:Ljava/math/BigInteger;


# direct methods
.method public synthetic constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i7n;->e:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/i7n;->f:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/i7n;->e:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i7n;->f:Ljava/math/BigInteger;

    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->h(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/cert/X509CertificateHolder;)Z

    move-result p0

    return p0
.end method
