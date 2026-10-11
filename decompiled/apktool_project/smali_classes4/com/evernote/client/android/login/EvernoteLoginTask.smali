.class public Lcom/evernote/client/android/login/EvernoteLoginTask;
.super Lnet/vrallev/android/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/vrallev/android/task/Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lcom/evernote/client/android/helper/Cat;

.field public static final t:I = 0x35a

.field public static final u:I = 0x35b


# instance fields
.field public final j:Lcom/evernote/client/android/EvernoteOAuthHelper;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evernote/edam/userstore/BootstrapProfile;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/evernote/edam/userstore/BootstrapProfile;

.field public m:I

.field public n:Ljava/util/concurrent/CountDownLatch;

.field public o:Ljava/util/concurrent/CountDownLatch;

.field public p:I

.field public q:Landroid/content/Intent;

.field public final r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/client/android/helper/Cat;

    const-string v1, "EvernoteLoginTask"

    invoke-direct {v0, v1}, Lcom/evernote/client/android/helper/Cat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/client/android/login/EvernoteLoginTask;->s:Lcom/evernote/client/android/helper/Cat;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/client/android/EvernoteOAuthHelper;Z)V
    .locals 0

    invoke-direct {p0}, Lnet/vrallev/android/task/Task;-><init>()V

    iput-object p1, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->j:Lcom/evernote/client/android/EvernoteOAuthHelper;

    iput-boolean p2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->r:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->l()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final k()Z
    .locals 1

    invoke-virtual {p0}, Lnet/vrallev/android/task/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/vrallev/android/task/Task;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->t()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->k()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->o:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->m()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final m()Z
    .locals 3

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->j:Lcom/evernote/client/android/EvernoteOAuthHelper;

    invoke-virtual {p0}, Lnet/vrallev/android/task/Task;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->p:I

    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->q:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p0}, Lcom/evernote/client/android/EvernoteOAuthHelper;->finishAuthorization(Landroid/app/Activity;ILandroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lnet/vrallev/android/task/Task;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->o()Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getInstance()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/evernote/client/android/EvernoteUtil;->createGetBootstrapProfileNameIntent(Landroid/content/Context;Lcom/evernote/client/android/EvernoteSession;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const/16 v3, 0x35b

    invoke-interface {v2, v0, v3}, Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;->startActivityForResult(Landroid/content/Intent;I)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->o:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->q:Landroid/content/Intent;

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "bootstrap_profile_name"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public final o()Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;
    .locals 2

    iget-boolean v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/vrallev/android/task/Task;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lnet/vrallev/android/task/Task;->getActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final p()Lcom/evernote/edam/userstore/BootstrapProfile;
    .locals 2

    iget v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->m:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/userstore/BootstrapProfile;

    return-object p0
.end method

.method public final q(Lcom/evernote/edam/userstore/BootstrapProfile;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Evernote-China"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u5370\u8c61\u7b14\u8bb0"

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->getSettings()Lcom/evernote/edam/userstore/BootstrapSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/BootstrapSettings;->getServiceHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://www.evernote.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Evernote International"

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->o:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    iput p1, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->p:I

    iput-object p2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->q:Landroid/content/Intent;

    return-void
.end method

.method public final s()V
    .locals 4

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->o()Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->p()Lcom/evernote/edam/userstore/BootstrapProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/client/android/login/EvernoteLoginTask;->q(Lcom/evernote/edam/userstore/BootstrapProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;->show(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->n:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->s()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->o()Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;->show(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/evernote/client/android/login/EvernoteLoginTask;->s:Lcom/evernote/client/android/helper/Cat;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/helper/Cat;->e(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final t()Z
    .locals 6

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->j:Lcom/evernote/client/android/EvernoteOAuthHelper;

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteOAuthHelper;->fetchBootstrapProfiles()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    iget-object v3, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->j:Lcom/evernote/client/android/EvernoteOAuthHelper;

    invoke-virtual {v3, v2}, Lcom/evernote/client/android/EvernoteOAuthHelper;->getDefaultBootstrapProfile(Ljava/util/List;)Lcom/evernote/edam/userstore/BootstrapProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->l:Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->k()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_7

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->k()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {v4}, Lcom/evernote/edam/userstore/BootstrapProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v4, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->l:Lcom/evernote/edam/userstore/BootstrapProfile;

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    if-eqz v2, :cond_7

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->l:Lcom/evernote/edam/userstore/BootstrapProfile;

    iget-object v4, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {v3, v4}, Lcom/evernote/edam/userstore/BootstrapProfile;->equals(Lcom/evernote/edam/userstore/BootstrapProfile;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput v2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->m:I

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    sget-object v3, Lcom/evernote/client/android/login/EvernoteLoginTask;->s:Lcom/evernote/client/android/helper/Cat;

    invoke-virtual {v3, v2}, Lcom/evernote/client/android/helper/Cat;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->l:Lcom/evernote/edam/userstore/BootstrapProfile;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->j:Lcom/evernote/client/android/EvernoteOAuthHelper;

    invoke-virtual {v3, v2}, Lcom/evernote/client/android/EvernoteOAuthHelper;->setBootstrapProfile(Lcom/evernote/edam/userstore/BootstrapProfile;)V

    :cond_8
    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->k()Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->j:Lcom/evernote/client/android/EvernoteOAuthHelper;

    invoke-virtual {p0}, Lnet/vrallev/android/task/Task;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evernote/client/android/EvernoteOAuthHelper;->startAuthorization(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->k()Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/evernote/client/android/login/EvernoteLoginTask;->o()Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;

    move-result-object p0

    if-eqz p0, :cond_b

    const/16 v1, 0x35a

    invoke-interface {p0, v2, v1}, Lcom/evernote/client/android/login/EvernoteLoginTask$LoginTaskCallback;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    :cond_b
    :goto_4
    return v1
.end method

.method public u()V
    .locals 2

    iget v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->m:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->m:I

    iget-object v1, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/userstore/BootstrapProfile;

    iput-object v0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->l:Lcom/evernote/edam/userstore/BootstrapProfile;

    iget-object p0, p0, Lcom/evernote/client/android/login/EvernoteLoginTask;->n:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
