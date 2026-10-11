.class public Lcom/tencent/qmsp/oaid2/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qmsp/oaid2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qmsp/oaid2/i;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/oaid2/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/i$a;->a:Lcom/tencent/qmsp/oaid2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "HSDID did service binded"

    invoke-static {p1}, Lcom/tencent/qmsp/oaid2/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/i$a;->a:Lcom/tencent/qmsp/oaid2/i;

    invoke-static {p2}, Lcom/tencent/qmsp/oaid2/f$a;->a(Landroid/os/IBinder;)Lcom/tencent/qmsp/oaid2/f;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/qmsp/oaid2/i;->c:Lcom/tencent/qmsp/oaid2/f;

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/i$a;->a:Lcom/tencent/qmsp/oaid2/i;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/tencent/qmsp/oaid2/i;->a(Lcom/tencent/qmsp/oaid2/i;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/i$a;->a:Lcom/tencent/qmsp/oaid2/i;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/tencent/qmsp/oaid2/i;->a(Lcom/tencent/qmsp/oaid2/i;Z)V

    return-void
.end method
