.class public Lorg/mortbay/jetty/servlet/b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lorg/mortbay/jetty/servlet/HashSessionManager;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/b;->e:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/b;->e:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->saveSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
