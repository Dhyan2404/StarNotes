.class public Lcom/couchbase/lite/internal/BaseTLSIdentity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final CERT_ATTRIBUTE_COMMON_NAME:Ljava/lang/String; = "CN"

.field public static final CERT_ATTRIBUTE_COUNTRY:Ljava/lang/String; = "C"

.field public static final CERT_ATTRIBUTE_EMAIL_ADDRESS:Ljava/lang/String; = "rfc822Name"

.field public static final CERT_ATTRIBUTE_GIVEN_NAME:Ljava/lang/String; = "GN"

.field public static final CERT_ATTRIBUTE_HOSTNAME:Ljava/lang/String; = "dNSName"

.field public static final CERT_ATTRIBUTE_IP_ADDRESS:Ljava/lang/String; = "iPAddress"

.field public static final CERT_ATTRIBUTE_LOCALITY:Ljava/lang/String; = "locality"

.field public static final CERT_ATTRIBUTE_ORGANIZATION:Ljava/lang/String; = "O"

.field public static final CERT_ATTRIBUTE_ORGANIZATION_UNIT:Ljava/lang/String; = "OU"

.field public static final CERT_ATTRIBUTE_POSTAL_ADDRESS:Ljava/lang/String; = "postalAddress"

.field public static final CERT_ATTRIBUTE_POSTAL_CODE:Ljava/lang/String; = "postalCode"

.field public static final CERT_ATTRIBUTE_PSEUDONYM:Ljava/lang/String; = "pseudonym"

.field public static final CERT_ATTRIBUTE_REGISTERED_ID:Ljava/lang/String; = "registeredID"

.field public static final CERT_ATTRIBUTE_STATE_OR_PROVINCE:Ljava/lang/String; = "ST"

.field public static final CERT_ATTRIBUTE_SURNAME:Ljava/lang/String; = "SN"

.field public static final CERT_ATTRIBUTE_URL:Ljava/lang/String; = "uniformResourceIdentifier"


# instance fields
.field private final certificates:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final keyAlias:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final keyPair:Lcom/couchbase/lite/internal/core/C4KeyPair;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4KeyPair;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4KeyPair;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/internal/core/C4KeyPair;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key alias"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/couchbase/lite/internal/BaseTLSIdentity;->keyAlias:Ljava/lang/String;

    const-string p1, "key pair"

    invoke-static {p2, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/core/C4KeyPair;

    iput-object p1, p0, Lcom/couchbase/lite/internal/BaseTLSIdentity;->keyPair:Lcom/couchbase/lite/internal/core/C4KeyPair;

    const-string p1, "cert chain"

    invoke-static {p3, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/couchbase/lite/internal/BaseTLSIdentity;->certificates:Ljava/util/List;

    return-void
.end method

.method public static getAlias(Lcom/couchbase/lite/internal/BaseTLSIdentity;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/couchbase/lite/internal/BaseTLSIdentity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getAlias()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getCert(Lcom/couchbase/lite/internal/BaseTLSIdentity;)Ljava/security/cert/Certificate;
    .locals 0
    .param p0    # Lcom/couchbase/lite/internal/BaseTLSIdentity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getCert()Ljava/security/cert/Certificate;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getManager()Lcom/couchbase/lite/internal/KeyStoreManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/KeyStoreManager;->getInstance()Lcom/couchbase/lite/internal/KeyStoreManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseTLSIdentity;->keyPair:Lcom/couchbase/lite/internal/core/C4KeyPair;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4KeyPair;->close()V

    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseTLSIdentity;->keyAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getCert()Ljava/security/cert/Certificate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseTLSIdentity;->certificates:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public getCerts()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseTLSIdentity;->certificates:Ljava/util/List;

    return-object p0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getCert()Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getKeyPair()Lcom/couchbase/lite/internal/core/C4KeyPair;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseTLSIdentity;->keyPair:Lcom/couchbase/lite/internal/core/C4KeyPair;

    return-object p0
.end method
