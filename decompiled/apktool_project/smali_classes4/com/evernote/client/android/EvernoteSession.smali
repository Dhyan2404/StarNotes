.class public final Lcom/evernote/client/android/EvernoteSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/EvernoteSession$Builder;,
        Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    }
.end annotation


# static fields
.field public static final HOST_CHINA:Ljava/lang/String; = "https://app.yinxiang.com"

.field public static final HOST_PRODUCTION:Ljava/lang/String; = "https://www.evernote.com"

.field public static final HOST_SANDBOX:Ljava/lang/String; = "https://sandbox.evernote.com"

.field public static final REQUEST_CODE_LOGIN:I = 0x3836

.field public static final SCREEN_NAME_INTERNATIONAL:Ljava/lang/String; = "Evernote International"

.field public static final SCREEN_NAME_YXBIJI:Ljava/lang/String; = "\u5370\u8c61\u7b14\u8bb0"

.field public static final k:Lcom/evernote/client/android/helper/Cat;

.field public static l:Lcom/evernote/client/android/EvernoteSession;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field public e:Lcom/evernote/client/android/AuthenticationResult;

.field public f:Z

.field public g:Z

.field public h:Ljava/util/Locale;

.field public i:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

.field public j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/client/android/helper/Cat;

    const-string v1, "EvernoteSession"

    invoke-direct {v0, v1}, Lcom/evernote/client/android/helper/Cat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/client/android/EvernoteSession;->k:Lcom/evernote/client/android/helper/Cat;

    const/4 v0, 0x0

    sput-object v0, Lcom/evernote/client/android/EvernoteSession;->l:Lcom/evernote/client/android/EvernoteSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/evernote/client/android/EvernoteSession$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/evernote/client/android/EvernoteSession;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/evernote/client/android/EvernoteSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/evernote/client/android/EvernoteSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/evernote/client/android/EvernoteSession;Lcom/evernote/client/android/AuthenticationResult;)Lcom/evernote/client/android/AuthenticationResult;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->e:Lcom/evernote/client/android/AuthenticationResult;

    return-object p1
.end method

.method public static synthetic d(Lcom/evernote/client/android/EvernoteSession;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->a:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic e(Lcom/evernote/client/android/EvernoteSession;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->h:Ljava/util/Locale;

    return-object p1
.end method

.method public static synthetic f(Lcom/evernote/client/android/EvernoteSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/client/android/EvernoteSession;->f:Z

    return p1
.end method

.method public static synthetic g(Lcom/evernote/client/android/EvernoteSession;Lcom/evernote/client/android/EvernoteSession$EvernoteService;)Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->d:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    return-object p1
.end method

.method public static getInstance()Lcom/evernote/client/android/EvernoteSession;
    .locals 1

    sget-object v0, Lcom/evernote/client/android/EvernoteSession;->l:Lcom/evernote/client/android/EvernoteSession;

    return-object v0
.end method

.method public static synthetic h(Lcom/evernote/client/android/EvernoteSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/client/android/EvernoteSession;->g:Z

    return p1
.end method


# virtual methods
.method public asSingleton()Lcom/evernote/client/android/EvernoteSession;
    .locals 0

    sput-object p0, Lcom/evernote/client/android/EvernoteSession;->l:Lcom/evernote/client/android/EvernoteSession;

    return-object p0
.end method

.method public authenticate(Landroid/app/Activity;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteSession;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/evernote/client/android/EvernoteSession;->f:Z

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteSession;->h:Ljava/util/Locale;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/evernote/client/android/login/EvernoteLoginActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x3836

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public authenticate(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteSession;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/evernote/client/android/EvernoteSession;->f:Z

    iget-object v3, p0, Lcom/evernote/client/android/EvernoteSession;->h:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/client/android/login/EvernoteLoginFragment;->create(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;)Lcom/evernote/client/android/login/EvernoteLoginFragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/client/android/EvernoteSession;->authenticate(Landroidx/fragment/app/FragmentActivity;Lcom/evernote/client/android/login/EvernoteLoginFragment;)V

    return-void
.end method

.method public authenticate(Landroidx/fragment/app/FragmentActivity;Lcom/evernote/client/android/login/EvernoteLoginFragment;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "EvernoteDialogFragment"

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteSession;->a:Landroid/content/Context;

    return-object p0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteSession;->e:Lcom/evernote/client/android/AuthenticationResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/AuthenticationResult;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteSession;->e:Lcom/evernote/client/android/AuthenticationResult;

    return-object p0
.end method

.method public declared-synchronized getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->j:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->j:Ljava/lang/ThreadLocal;

    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->i:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;-><init>(Lcom/evernote/client/android/EvernoteSession;)V

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->i:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    :cond_1
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->i:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->build()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/EvernoteSession;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEvernoteService()Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/EvernoteSession;->d:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/client/android/EvernoteSession;->g:Z

    return p0
.end method

.method public declared-synchronized isLoggedIn()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->e:Lcom/evernote/client/android/AuthenticationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logOut()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->e:Lcom/evernote/client/android/AuthenticationResult;

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/client/android/EvernoteSession;->e:Lcom/evernote/client/android/AuthenticationResult;

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/client/android/EvernoteUtil;->removeAllCookies(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAuthenticationResult(Lcom/evernote/client/android/AuthenticationResult;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->e:Lcom/evernote/client/android/AuthenticationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEvernoteClientFactoryBuilder(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->i:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession;->j:Ljava/lang/ThreadLocal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
