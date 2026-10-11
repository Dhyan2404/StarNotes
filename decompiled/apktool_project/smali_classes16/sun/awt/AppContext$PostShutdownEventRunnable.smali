.class final Lsun/awt/AppContext$PostShutdownEventRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostShutdownEventRunnable"
.end annotation


# instance fields
.field private final appContext:Lsun/awt/AppContext;


# direct methods
.method public constructor <init>(Lsun/awt/AppContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/awt/AppContext$PostShutdownEventRunnable;->appContext:Lsun/awt/AppContext;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
