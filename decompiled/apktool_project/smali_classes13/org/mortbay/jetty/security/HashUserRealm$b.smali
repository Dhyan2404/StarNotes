.class public Lorg/mortbay/jetty/security/HashUserRealm$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HashUserRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:Ljava/util/List;

.field public final synthetic f:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$b;->f:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$b;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;Lorg/mortbay/jetty/security/b;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/security/HashUserRealm$b;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;)V

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/jetty/security/HashUserRealm$b;)Lorg/mortbay/jetty/security/UserRealm;
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm$b;->b()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lorg/mortbay/jetty/security/UserRealm;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm$b;->f:Lorg/mortbay/jetty/security/HashUserRealm;

    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Anonymous"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm$b;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
