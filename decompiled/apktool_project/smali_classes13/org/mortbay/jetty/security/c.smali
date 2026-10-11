.class public Lorg/mortbay/jetty/security/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/Scanner$BulkListener;


# instance fields
.field public final synthetic a:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/c;->a:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filesChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/mortbay/jetty/security/c;->a:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-static {v0}, Lorg/mortbay/jetty/security/HashUserRealm;->g(Lorg/mortbay/jetty/security/HashUserRealm;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/security/c;->a:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/HashUserRealm;->loadConfig()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "HashUserRealm$Scanner"

    return-object p0
.end method
