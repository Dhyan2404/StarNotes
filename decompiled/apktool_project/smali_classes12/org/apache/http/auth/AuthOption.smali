.class public final Lorg/apache/http/auth/AuthOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field public final a:Lorg/apache/http/auth/AuthScheme;

.field public final b:Lorg/apache/http/auth/Credentials;


# direct methods
.method public constructor <init>(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "User credentials"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/auth/AuthOption;->a:Lorg/apache/http/auth/AuthScheme;

    iput-object p2, p0, Lorg/apache/http/auth/AuthOption;->b:Lorg/apache/http/auth/Credentials;

    return-void
.end method


# virtual methods
.method public getAuthScheme()Lorg/apache/http/auth/AuthScheme;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/auth/AuthOption;->a:Lorg/apache/http/auth/AuthScheme;

    return-object p0
.end method

.method public getCredentials()Lorg/apache/http/auth/Credentials;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/auth/AuthOption;->b:Lorg/apache/http/auth/Credentials;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/auth/AuthOption;->a:Lorg/apache/http/auth/AuthScheme;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
