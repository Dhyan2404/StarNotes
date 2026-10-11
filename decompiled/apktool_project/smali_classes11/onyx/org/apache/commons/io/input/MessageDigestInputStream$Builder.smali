.class public Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;
.super Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/MessageDigestInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lonyx/org/apache/commons/io/build/AbstractStreamBuilder<",
        "Lonyx/org/apache/commons/io/input/MessageDigestInputStream;",
        "Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    return-void
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
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;->get()Lonyx/org/apache/commons/io/input/MessageDigestInputStream;

    move-result-object p0

    return-object p0
.end method

.method public get()Lonyx/org/apache/commons/io/input/MessageDigestInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lonyx/org/apache/commons/io/input/MessageDigestInputStream;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;->l:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lonyx/org/apache/commons/io/input/MessageDigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;Lonyx/org/apache/commons/io/input/MessageDigestInputStream$a;)V

    return-object v0
.end method

.method public setMessageDigest(Ljava/lang/String;)Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;->l:Ljava/security/MessageDigest;

    return-object p0
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;->l:Ljava/security/MessageDigest;

    return-object p0
.end method
