.class public Lorg/apache/http/impl/auth/NegotiateSchemeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

.field public final b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->a:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    .line 3
    iput-boolean p2, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->b:Z

    return-void
.end method


# virtual methods
.method public getSpengoGenerator()Lorg/apache/http/impl/auth/SpnegoTokenGenerator;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->a:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    return-object p0
.end method

.method public isStripPort()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->b:Z

    return p0
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 1

    new-instance p1, Lorg/apache/http/impl/auth/NegotiateScheme;

    iget-object v0, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->a:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    iget-boolean p0, p0, Lorg/apache/http/impl/auth/NegotiateSchemeFactory;->b:Z

    invoke-direct {p1, v0, p0}, Lorg/apache/http/impl/auth/NegotiateScheme;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-object p1
.end method
