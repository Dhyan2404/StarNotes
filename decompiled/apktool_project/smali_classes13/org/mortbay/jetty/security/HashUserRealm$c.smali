.class public Lorg/mortbay/jetty/security/HashUserRealm$c;
.super Lorg/mortbay/jetty/security/HashUserRealm$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/HashUserRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public g:Ljava/security/Principal;

.field public h:Ljava/lang/String;

.field public final synthetic i:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;Ljava/security/Principal;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$c;->i:Lorg/mortbay/jetty/security/HashUserRealm;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mortbay/jetty/security/HashUserRealm$b;-><init>(Lorg/mortbay/jetty/security/HashUserRealm;Lorg/mortbay/jetty/security/b;)V

    iput-object p2, p0, Lorg/mortbay/jetty/security/HashUserRealm$c;->g:Ljava/security/Principal;

    iput-object p3, p0, Lorg/mortbay/jetty/security/HashUserRealm$c;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d()Ljava/security/Principal;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm$c;->g:Ljava/security/Principal;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm$c;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/security/HashUserRealm$c;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
