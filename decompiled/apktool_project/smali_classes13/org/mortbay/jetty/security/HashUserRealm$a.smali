.class public Lorg/mortbay/jetty/security/HashUserRealm$a;
.super Lorg/mortbay/jetty/security/HashUserRealm$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HashUserRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public g:Ljava/lang/String;

.field public h:Lorg/mortbay/jetty/security/Credential;

.field public final synthetic i:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/lang/String;Lorg/mortbay/jetty/security/Credential;)V
    .locals 1

    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$a;->i:Lorg/mortbay/jetty/security/HashUserRealm;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/jetty/security/HashUserRealm$b;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Lorg/mortbay/jetty/security/b;)V

    iput-object p2, p0, Lorg/mortbay/jetty/security/HashUserRealm$a;->g:Ljava/lang/String;

    iput-object p3, p0, Lorg/mortbay/jetty/security/HashUserRealm$a;->h:Lorg/mortbay/jetty/security/Credential;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm$a;->h:Lorg/mortbay/jetty/security/Credential;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/security/Credential;->check(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm$a;->g:Ljava/lang/String;

    return-object p0
.end method
