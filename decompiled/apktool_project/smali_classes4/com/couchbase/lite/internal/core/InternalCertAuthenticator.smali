.class public Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ListenerAuthenticator;


# static fields
.field public static final BEGIN_CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field public static final END_CERT:Ljava/lang/String; = "-----END CERTIFICATE-----"


# instance fields
.field private final delegate:Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final rootCerts:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;->rootCerts:Ljava/util/List;

    iput-object p2, p0, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;->delegate:Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;

    return-void
.end method

.method private encodeCertificate(Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;Ljava/security/cert/Certificate;Ljava/io/PrintStream;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/cert/Certificate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3}, Ljava/io/PrintStream;->println()V

    const-string p2, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    add-int/lit8 v0, p2, 0x40

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move p2, v0

    goto :goto_0

    :cond_1
    const-string p0, "-----END CERTIFICATE-----"

    invoke-virtual {p3, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private encodeCertificateChain(Ljava/util/Collection;)[B
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/utils/PlatformUtils;->getEncoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/PrintStream;

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-direct {p0, v0, v3, v2}, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;->encodeCertificate(Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;Ljava/security/cert/Certificate;Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateEncodingException;

    const-string v0, "I/O error during encoding"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public authenticate(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;->delegate:Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/couchbase/lite/ListenerCertificateAuthenticatorDelegate;->authenticate(Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "No delegate has been set"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRootCerts()[B
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;->rootCerts:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/InternalCertAuthenticator;->encodeCertificateChain(Ljava/util/Collection;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v1, "Failed to encode certificates in PEM format"

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
