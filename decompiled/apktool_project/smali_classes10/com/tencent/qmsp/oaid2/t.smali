.class public Lcom/tencent/qmsp/oaid2/t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/qmsp/oaid2/q;

.field public b:Lcom/tencent/qmsp/oaid2/s;


# direct methods
.method public constructor <init>(Lcom/tencent/qmsp/oaid2/q;Lcom/tencent/qmsp/oaid2/s;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/t;->a:Lcom/tencent/qmsp/oaid2/q;

    iput-object p2, p0, Lcom/tencent/qmsp/oaid2/t;->b:Lcom/tencent/qmsp/oaid2/s;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/tencent/qmsp/oaid2/t;->a:Lcom/tencent/qmsp/oaid2/q;

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :catch_0
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/t;->a:Lcom/tencent/qmsp/oaid2/q;

    invoke-interface {v0}, Lcom/tencent/qmsp/oaid2/q;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v1, 0xa

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_1

    :cond_2
    if-eqz v0, :cond_3

    .line 5
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/t;->b:Lcom/tencent/qmsp/oaid2/s;

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    .line 6
    invoke-interface {p0, p1}, Lcom/tencent/qmsp/oaid2/s;->a(Z)V

    .line 7
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/oaid2/t;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/oaid2/t;->a(Ljava/lang/Boolean;)V

    return-void
.end method
