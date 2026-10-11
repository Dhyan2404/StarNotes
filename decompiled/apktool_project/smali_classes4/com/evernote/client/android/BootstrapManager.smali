.class public Lcom/evernote/client/android/BootstrapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;,
        Lcom/evernote/client/android/BootstrapManager$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "EvernoteSession"

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Locale;

.field public c:Ljava/lang/String;

.field public final d:Lcom/evernote/client/android/EvernoteSession;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/BootstrapManager;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/EvernoteSession;)V
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/evernote/client/android/BootstrapManager;-><init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/EvernoteSession;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/EvernoteSession;Ljava/util/Locale;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/client/android/BootstrapManager;->a:Ljava/util/ArrayList;

    .line 5
    iput-object p2, p0, Lcom/evernote/client/android/BootstrapManager;->d:Lcom/evernote/client/android/EvernoteSession;

    .line 6
    iput-object p3, p0, Lcom/evernote/client/android/BootstrapManager;->b:Ljava/util/Locale;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    sget-object p2, Lcom/evernote/client/android/BootstrapManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/evernote/client/android/BootstrapManager;->a:Ljava/util/ArrayList;

    const-string p1, "https://sandbox.evernote.com"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lcom/evernote/client/android/BootstrapManager;->f:Ljava/util/List;

    iget-object p2, p0, Lcom/evernote/client/android/BootstrapManager;->b:Ljava/util/Locale;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/evernote/client/android/BootstrapManager;->a:Ljava/util/ArrayList;

    const-string p2, "https://app.yinxiang.com"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/evernote/client/android/BootstrapManager;->a:Ljava/util/ArrayList;

    const-string p1, "https://www.evernote.com"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteService()Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/evernote/client/android/BootstrapManager;-><init>(Lcom/evernote/client/android/EvernoteSession$EvernoteService;Lcom/evernote/client/android/EvernoteSession;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/client/android/BootstrapManager$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "getBootstrapInfo()"

    const-string v1, "EvernoteSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/evernote/client/android/BootstrapManager;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/BootstrapManager;->c()V

    :cond_0
    iget-object v2, p0, Lcom/evernote/client/android/BootstrapManager;->d:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/evernote/client/android/BootstrapManager;->c:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/evernote/client/android/BootstrapManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getUserStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    move-result-object v2

    iget-object v3, p0, Lcom/evernote/client/android/BootstrapManager;->b:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->getBootstrapInfo(Ljava/lang/String;)Lcom/evernote/edam/userstore/BootstrapInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/BootstrapManager;->d(Lcom/evernote/edam/userstore/BootstrapInfo;)V
    :try_end_0
    .catch Lcom/evernote/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "error getting bootstrap info"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v1, Lcom/evernote/client/android/BootstrapManager$b;

    iget-object p0, p0, Lcom/evernote/client/android/BootstrapManager;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lcom/evernote/client/android/BootstrapManager$b;-><init>(Ljava/lang/String;Lcom/evernote/edam/userstore/BootstrapInfo;)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/edam/user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "EvernoteSession"

    const-string v1, "1.25"

    iget-object v2, p0, Lcom/evernote/client/android/BootstrapManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    :try_start_0
    iget-object v6, p0, Lcom/evernote/client/android/BootstrapManager;->d:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v6}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/evernote/client/android/BootstrapManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getUserStoreClient(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    move-result-object v6

    iget-object v7, p0, Lcom/evernote/client/android/BootstrapManager;->d:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v7}, Lcom/evernote/client/android/EvernoteSession;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/evernote/client/android/EvernoteUtil;->generateUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x19

    invoke-virtual {v6, v7, v5, v8}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->checkVersion(Ljava/lang/String;SS)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v4, p0, Lcom/evernote/client/android/BootstrapManager;->c:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v5, Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;

    invoke-direct {v5, v1}, Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/evernote/client/android/BootstrapManager$ClientUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    iget-object v6, p0, Lcom/evernote/client/android/BootstrapManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error contacting bootstrap server="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    throw v5

    :catch_1
    move-exception p0

    const-string v1, "Invalid Version"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :cond_2
    return-void
.end method

.method public d(Lcom/evernote/edam/userstore/BootstrapInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "printBootstrapInfo"

    const-string v0, "EvernoteSession"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapInfo;->getProfiles()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/edam/userstore/BootstrapProfile;

    invoke-virtual {p1}, Lcom/evernote/edam/userstore/BootstrapProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "Profiles are null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
