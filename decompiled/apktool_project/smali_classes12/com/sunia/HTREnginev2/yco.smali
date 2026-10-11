.class public final synthetic Lcom/sunia/HTREnginev2/yco;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/etsi/uri/x01903/v13/CertIDListType;

.field public final synthetic f:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method public synthetic constructor <init>(Lorg/etsi/uri/x01903/v13/CertIDListType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yco;->e:Lorg/etsi/uri/x01903/v13/CertIDListType;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yco;->f:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yco;->e:Lorg/etsi/uri/x01903/v13/CertIDListType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yco;->f:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/XAdESXLSignatureFacet;->a(Lorg/etsi/uri/x01903/v13/CertIDListType;Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;Ljava/security/cert/X509Certificate;)V

    return-void
.end method
