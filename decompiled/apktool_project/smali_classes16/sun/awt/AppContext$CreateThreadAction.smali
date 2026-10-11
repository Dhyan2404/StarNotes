.class final Lsun/awt/AppContext$CreateThreadAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateThreadAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContext:Lsun/awt/AppContext;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lsun/awt/AppContext;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/awt/AppContext$CreateThreadAction;->appContext:Lsun/awt/AppContext;

    iput-object p2, p0, Lsun/awt/AppContext$CreateThreadAction;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/awt/AppContext$CreateThreadAction;->run()Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Thread;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lsun/awt/AppContext$CreateThreadAction;->appContext:Lsun/awt/AppContext;

    invoke-virtual {v1}, Lsun/awt/AppContext;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    iget-object v2, p0, Lsun/awt/AppContext$CreateThreadAction;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 3
    iget-object p0, p0, Lsun/awt/AppContext$CreateThreadAction;->appContext:Lsun/awt/AppContext;

    invoke-virtual {p0}, Lsun/awt/AppContext;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p0, 0x6

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
