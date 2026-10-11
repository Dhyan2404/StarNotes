.class public Lorg/mortbay/jetty/security/SslSocketConnector$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/SslSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[Ljava/security/cert/X509Certificate;

.field public b:Ljava/lang/Integer;

.field public final synthetic c:Lorg/mortbay/jetty/security/SslSocketConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$a;->c:Lorg/mortbay/jetty/security/SslSocketConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mortbay/jetty/security/SslSocketConnector$a;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/mortbay/jetty/security/SslSocketConnector$a;->a:[Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public a()[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$a;->a:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$a;->b:Ljava/lang/Integer;

    return-object p0
.end method
