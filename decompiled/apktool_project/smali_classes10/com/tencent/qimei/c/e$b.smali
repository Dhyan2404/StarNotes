.class public Lcom/tencent/qimei/c/e$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/tencent/qimei/c/e$a;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Lcom/tencent/qimei/c/e$a;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/qimei/c/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/tencent/qimei/c/e$b;->a:Lcom/tencent/qimei/c/e$a;

    iput-object p3, p0, Lcom/tencent/qimei/c/e$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/qimei/c/e$b;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/qimei/c/e$b;->c:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qimei/c/e$b;->a:Lcom/tencent/qimei/c/e$a;

    iget-object p0, p0, Lcom/tencent/qimei/c/e$b;->b:Ljava/lang/String;

    check-cast v0, Lcom/tencent/qimei/v/g;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/qimei/v/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
