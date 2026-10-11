.class public Lcom/evernote/client/android/EvernoteSession$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field public c:Z

.field public d:Ljava/util/Locale;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->a:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->c:Z

    sget-object p1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->SANDBOX:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->b:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->d:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final a(Lcom/evernote/client/android/EvernoteSession;)Lcom/evernote/client/android/EvernoteSession;
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/evernote/client/android/EvernoteSession;->d(Lcom/evernote/client/android/EvernoteSession;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->d:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/evernote/client/android/EvernoteSession;->e(Lcom/evernote/client/android/EvernoteSession;Ljava/util/Locale;)Ljava/util/Locale;

    iget-boolean v0, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->c:Z

    invoke-static {p1, v0}, Lcom/evernote/client/android/EvernoteSession;->f(Lcom/evernote/client/android/EvernoteSession;Z)Z

    iget-object v0, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->b:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-static {p1, v0}, Lcom/evernote/client/android/EvernoteSession;->g(Lcom/evernote/client/android/EvernoteSession;Lcom/evernote/client/android/EvernoteSession$EvernoteService;)Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    iget-boolean p0, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->e:Z

    invoke-static {p1, p0}, Lcom/evernote/client/android/EvernoteSession;->h(Lcom/evernote/client/android/EvernoteSession;Z)Z

    return-object p1
.end method

.method public build(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/EvernoteSession;
    .locals 2

    new-instance v0, Lcom/evernote/client/android/EvernoteSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evernote/client/android/EvernoteSession;-><init>(Lcom/evernote/client/android/EvernoteSession$a;)V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/evernote/client/android/EvernoteSession;->a(Lcom/evernote/client/android/EvernoteSession;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/evernote/client/android/EvernoteSession;->b(Lcom/evernote/client/android/EvernoteSession;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/evernote/client/android/AuthenticationResult;->b(Landroid/content/Context;)Lcom/evernote/client/android/AuthenticationResult;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/evernote/client/android/EvernoteSession;->c(Lcom/evernote/client/android/EvernoteSession;Lcom/evernote/client/android/AuthenticationResult;)Lcom/evernote/client/android/AuthenticationResult;

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/EvernoteSession$Builder;->a(Lcom/evernote/client/android/EvernoteSession;)Lcom/evernote/client/android/EvernoteSession;

    move-result-object p0

    return-object p0
.end method

.method public buildForSingleUser(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/EvernoteSession;
    .locals 3

    new-instance v0, Lcom/evernote/client/android/EvernoteSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evernote/client/android/EvernoteSession;-><init>(Lcom/evernote/client/android/EvernoteSession$a;)V

    new-instance v1, Lcom/evernote/client/android/AuthenticationResult;

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->c:Z

    invoke-direct {v1, p1, p2, v2}, Lcom/evernote/client/android/AuthenticationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/evernote/client/android/EvernoteSession;->c(Lcom/evernote/client/android/EvernoteSession;Lcom/evernote/client/android/AuthenticationResult;)Lcom/evernote/client/android/AuthenticationResult;

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/EvernoteSession$Builder;->a(Lcom/evernote/client/android/EvernoteSession;)Lcom/evernote/client/android/EvernoteSession;

    move-result-object p0

    return-object p0
.end method

.method public setEvernoteService(Lcom/evernote/client/android/EvernoteSession$EvernoteService;)Lcom/evernote/client/android/EvernoteSession$Builder;
    .locals 0

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->b:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    return-object p0
.end method

.method public setForceAuthenticationInThirdPartyApp(Z)Lcom/evernote/client/android/EvernoteSession$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->e:Z

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/evernote/client/android/EvernoteSession$Builder;
    .locals 0

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->d:Ljava/util/Locale;

    return-object p0
.end method

.method public setSupportAppLinkedNotebooks(Z)Lcom/evernote/client/android/EvernoteSession$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/client/android/EvernoteSession$Builder;->c:Z

    return-object p0
.end method
