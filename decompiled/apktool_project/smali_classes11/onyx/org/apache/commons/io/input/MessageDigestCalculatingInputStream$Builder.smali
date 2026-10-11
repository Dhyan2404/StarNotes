.class public Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;",
        "Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;->g0()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->l:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->l:Ljava/security/MessageDigest;

    invoke-direct {v0, v1, p0}, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-object v0
.end method

.method public setMessageDigest(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->l:Ljava/security/MessageDigest;

    return-void
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->l:Ljava/security/MessageDigest;

    return-void
.end method
