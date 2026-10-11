.class public Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Intent;

.field public final c:Lcom/sunia/HTREnginev2/m9e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sunia/HTREnginev2/m9e;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->b:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->c:Lcom/sunia/HTREnginev2/m9e;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->a:Landroid/content/Context;

    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->b:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->c:Lcom/sunia/HTREnginev2/m9e;

    const/16 v2, 0x1001

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->a:Landroid/content/Context;

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->c:Lcom/sunia/HTREnginev2/m9e;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not bind to the service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TWAConnectionPool"

    const-string v0, "SecurityException while binding."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->c:Lcom/sunia/HTREnginev2/m9e;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/m9e;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->a([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool$a;->b(Ljava/lang/Exception;)V

    return-void
.end method
