.class public Lcom/dropbox/core/android/AuthActivity$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dropbox/core/DbxAuthFinish;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lcom/dropbox/core/android/AuthActivity;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity$d;->b:Lcom/dropbox/core/android/AuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/dropbox/core/android/AuthActivity$d;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;Lcom/dropbox/core/android/AuthActivity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/android/AuthActivity$d;-><init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity$d;->b:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {p1}, Lcom/dropbox/core/android/AuthActivity;->g(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxPKCEManager;

    move-result-object v0

    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity$d;->b:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {p1}, Lcom/dropbox/core/android/AuthActivity;->d(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity$d;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/dropbox/core/android/AuthActivity$d;->b:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {p1}, Lcom/dropbox/core/android/AuthActivity;->e(Lcom/dropbox/core/android/AuthActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/dropbox/core/android/AuthActivity$d;->b:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {p0}, Lcom/dropbox/core/android/AuthActivity;->f(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/DbxHost;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/DbxPKCEManager;->makeTokenRequest(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token Request Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/android/AuthActivity$d;->a([Ljava/lang/Void;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object p0

    return-object p0
.end method
