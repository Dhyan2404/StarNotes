.class public Lcom/evernote/client/android/AuthenticationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "evernote.mAuthToken"

.field public static final h:Ljava/lang/String; = "evernote.notestoreUrl"

.field public static final i:Ljava/lang/String; = "evernote.webApiUrlPrefix"

.field public static final j:Ljava/lang/String; = "evernote.userId"

.field public static final k:Ljava/lang/String; = "evernote.mEvernoteHost"

.field public static final l:Ljava/lang/String; = "evernote.isAppLinkedNotebook"

.field public static final m:Ljava/lang/String; = "evernote.preferences"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/evernote/client/android/AuthenticationResult;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/evernote/client/android/AuthenticationResult;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/evernote/client/android/AuthenticationResult;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/evernote/client/android/AuthenticationResult;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/evernote/client/android/AuthenticationResult;->e:I

    .line 8
    iput-boolean p6, p0, Lcom/evernote/client/android/AuthenticationResult;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/evernote/client/android/AuthenticationResult;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/evernote/client/android/AuthenticationResult;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/evernote/client/android/AuthenticationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/evernote/client/android/AuthenticationResult;
    .locals 9

    invoke-static {p0}, Lcom/evernote/client/android/AuthenticationResult;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "evernote.mAuthToken"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "evernote.notestoreUrl"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/evernote/client/android/AuthenticationResult;

    const-string v2, "evernote.webApiUrlPrefix"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "evernote.mEvernoteHost"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "evernote.userId"

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "evernote.isAppLinkedNotebook"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/evernote/client/android/AuthenticationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "notestore"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "evernote.preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getInstance()Lcom/evernote/client/android/EvernoteSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/evernote/client/android/AuthenticationResult;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "evernote.mAuthToken"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "evernote.notestoreUrl"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "evernote.webApiUrlPrefix"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "evernote.mEvernoteHost"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "evernote.userId"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "evernote.isAppLinkedNotebook"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e()V
    .locals 3

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getInstance()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/client/android/AuthenticationResult;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "evernote.mAuthToken"

    iget-object v2, p0, Lcom/evernote/client/android/AuthenticationResult;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "evernote.notestoreUrl"

    iget-object v2, p0, Lcom/evernote/client/android/AuthenticationResult;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "evernote.webApiUrlPrefix"

    iget-object v2, p0, Lcom/evernote/client/android/AuthenticationResult;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "evernote.mEvernoteHost"

    iget-object v2, p0, Lcom/evernote/client/android/AuthenticationResult;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "evernote.userId"

    iget v2, p0, Lcom/evernote/client/android/AuthenticationResult;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "evernote.isAppLinkedNotebook"

    iget-boolean p0, p0, Lcom/evernote/client/android/AuthenticationResult;->f:Z

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/AuthenticationResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getEvernoteHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/AuthenticationResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getNoteStoreUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/AuthenticationResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/evernote/client/android/AuthenticationResult;->e:I

    return p0
.end method

.method public getWebApiUrlPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/AuthenticationResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public isAppLinkedNotebook()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/client/android/AuthenticationResult;->f:Z

    return p0
.end method
