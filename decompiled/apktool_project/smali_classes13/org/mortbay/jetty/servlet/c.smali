.class public Lorg/mortbay/jetty/servlet/c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lorg/mortbay/jetty/servlet/HashSessionManager;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/c;->e:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/c;->e:Lorg/mortbay/jetty/servlet/HashSessionManager;

    invoke-static {p0}, Lorg/mortbay/jetty/servlet/HashSessionManager;->g(Lorg/mortbay/jetty/servlet/HashSessionManager;)V

    return-void
.end method
