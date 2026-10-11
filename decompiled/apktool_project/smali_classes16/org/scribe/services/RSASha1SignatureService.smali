.class public Lorg/scribe/services/RSASha1SignatureService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/scribe/services/SignatureService;


# static fields
.field public static final b:Ljava/lang/String; = "RSA-SHA1"

.field public static final c:Ljava/lang/String; = "SHA1withRSA"

.field public static final d:Ljava/lang/String; = "UTF-8"


# instance fields
.field public a:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/scribe/services/RSASha1SignatureService;->a:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/Signature;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {}, Lorg/scribe/services/Base64Encoder;->getInstance()Lorg/scribe/services/Base64Encoder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/scribe/services/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    const-string p2, "SHA1withRSA"

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    iget-object p3, p0, Lorg/scribe/services/RSASha1SignatureService;->a:Ljava/security/PrivateKey;

    invoke-virtual {p2, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const-string p3, "UTF-8"

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0, p2}, Lorg/scribe/services/RSASha1SignatureService;->a(Ljava/security/Signature;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Lorg/scribe/exceptions/OAuthSignatureException;

    invoke-direct {p2, p1, p0}, Lorg/scribe/exceptions/OAuthSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "RSA-SHA1"

    return-object p0
.end method
