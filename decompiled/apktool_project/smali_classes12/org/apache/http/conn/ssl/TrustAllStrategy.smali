.class public Lorg/apache/http/conn/ssl/TrustAllStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ssl/TrustStrategy;


# static fields
.field public static final INSTANCE:Lorg/apache/http/conn/ssl/TrustAllStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/conn/ssl/TrustAllStrategy;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/TrustAllStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/TrustAllStrategy;->INSTANCE:Lorg/apache/http/conn/ssl/TrustAllStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
