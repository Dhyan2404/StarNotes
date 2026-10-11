.class public Lcom/tencent/qmsp/oaid2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile g:Lcom/tencent/qmsp/oaid2/x;


# instance fields
.field public a:Lcom/tencent/qmsp/oaid2/w;

.field public b:Lcom/tencent/qmsp/oaid2/w;

.field public c:Lcom/tencent/qmsp/oaid2/w;

.field public d:Lcom/tencent/qmsp/oaid2/w;

.field public e:Ljava/lang/Boolean;

.field public f:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qmsp/oaid2/w;

    const-string v1, "udid"

    invoke-direct {v0, v1}, Lcom/tencent/qmsp/oaid2/w;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/x;->a:Lcom/tencent/qmsp/oaid2/w;

    new-instance v0, Lcom/tencent/qmsp/oaid2/w;

    const-string v1, "oaid"

    invoke-direct {v0, v1}, Lcom/tencent/qmsp/oaid2/w;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/x;->b:Lcom/tencent/qmsp/oaid2/w;

    new-instance v0, Lcom/tencent/qmsp/oaid2/w;

    const-string v1, "vaid"

    invoke-direct {v0, v1}, Lcom/tencent/qmsp/oaid2/w;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/x;->d:Lcom/tencent/qmsp/oaid2/w;

    new-instance v0, Lcom/tencent/qmsp/oaid2/w;

    const-string v1, "aaid"

    invoke-direct {v0, v1}, Lcom/tencent/qmsp/oaid2/w;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qmsp/oaid2/x;->c:Lcom/tencent/qmsp/oaid2/w;

    return-void
.end method

.method public static final a()Lcom/tencent/qmsp/oaid2/x;
    .locals 2

    .line 61
    sget-object v0, Lcom/tencent/qmsp/oaid2/x;->g:Lcom/tencent/qmsp/oaid2/x;

    if-nez v0, :cond_0

    .line 62
    const-class v0, Lcom/tencent/qmsp/oaid2/x;

    .line 63
    monitor-enter v0

    .line 64
    :try_start_0
    new-instance v1, Lcom/tencent/qmsp/oaid2/x;

    invoke-direct {v1}, Lcom/tencent/qmsp/oaid2/x;-><init>()V

    sput-object v1, Lcom/tencent/qmsp/oaid2/x;->g:Lcom/tencent/qmsp/oaid2/x;

    .line 65
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/qmsp/oaid2/x;->g:Lcom/tencent/qmsp/oaid2/x;

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/tencent/qmsp/oaid2/z;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/qmsp/oaid2/z;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qmsp/oaid2/z;-><init>(Ljava/lang/String;I)V

    if-nez p0, :cond_0

    const-string p0, "parseValue fail, cursor is null."

    .line 2
    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "value"

    .line 5
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 6
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qmsp/oaid2/z;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "parseValue fail, index < 0."

    .line 7
    invoke-static {v1}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    :goto_0
    const-string v1, "code"

    .line 8
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 9
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/qmsp/oaid2/z;->a:I

    goto :goto_1

    :cond_2
    const-string v1, "parseCode fail, index < 0."

    .line 10
    invoke-static {v1}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    :goto_1
    const-string v1, "expired"

    .line 11
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 12
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/qmsp/oaid2/z;->b:J

    goto :goto_2

    :cond_3
    const-string p0, "parseExpired fail, index < 0."

    .line 13
    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p0, "parseValue fail, cursor is closed."

    .line 14
    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MzOpenIdManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/tencent/qmsp/oaid2/w;
    .locals 1

    const-string v0, "oaid"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/x;->b:Lcom/tencent/qmsp/oaid2/w;

    goto :goto_0

    :cond_0
    const-string v0, "vaid"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/x;->d:Lcom/tencent/qmsp/oaid2/w;

    goto :goto_0

    :cond_1
    const-string v0, "aaid"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/x;->c:Lcom/tencent/qmsp/oaid2/w;

    goto :goto_0

    :cond_2
    const-string v0, "udid"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .line 74
    :cond_3
    iget-object p0, p0, Lcom/tencent/qmsp/oaid2/x;->a:Lcom/tencent/qmsp/oaid2/w;

    :goto_0
    return-object p0
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/qmsp/oaid2/w;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/qmsp/oaid2/w;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/tencent/qmsp/oaid2/w;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    const-string v1, "content://com.meizu.flyme.openidsdk/"

    .line 17
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget-object v7, p2, Lcom/tencent/qmsp/oaid2/w;->c:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    .line 19
    :try_start_1
    invoke-virtual {p0, p1, v8}, Lcom/tencent/qmsp/oaid2/x;->a(Landroid/content/Context;Z)Z

    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/tencent/qmsp/oaid2/x;->a(Landroid/content/Context;Z)Z

    move-result p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "forceQuery isSupported : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    .line 24
    :cond_2
    :try_start_2
    invoke-static {v2}, Lcom/tencent/qmsp/oaid2/x;->a(Landroid/database/Cursor;)Lcom/tencent/qmsp/oaid2/z;

    move-result-object v3

    .line 25
    iget-object v4, v3, Lcom/tencent/qmsp/oaid2/z;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :try_start_3
    invoke-virtual {p2, v4}, Lcom/tencent/qmsp/oaid2/w;->a(Ljava/lang/String;)V

    .line 27
    iget-wide v5, v3, Lcom/tencent/qmsp/oaid2/z;->b:J

    invoke-virtual {p2, v5, v6}, Lcom/tencent/qmsp/oaid2/w;->a(J)V

    .line 28
    iget v5, v3, Lcom/tencent/qmsp/oaid2/z;->a:I

    invoke-virtual {p2, v5}, Lcom/tencent/qmsp/oaid2/w;->a(I)V

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/tencent/qmsp/oaid2/w;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " errorCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/tencent/qmsp/oaid2/w;->a:I

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    .line 30
    iget p2, v3, Lcom/tencent/qmsp/oaid2/z;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_3

    .line 31
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    .line 32
    :cond_3
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/tencent/qmsp/oaid2/x;->a(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0, p1, v8}, Lcom/tencent/qmsp/oaid2/x;->a(Landroid/content/Context;Z)Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_4

    .line 34
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    .line 35
    :cond_4
    :try_start_5
    invoke-virtual {p0, p1, v1}, Lcom/tencent/qmsp/oaid2/x;->a(Landroid/content/Context;Z)Z

    move-result p0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not support, forceQuery isSupported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catch_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0

    :catch_1
    move-object v2, v0

    :catch_2
    if-eqz v2, :cond_7

    :catch_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 39
    :cond_6
    iget-object v0, p2, Lcom/tencent/qmsp/oaid2/w;->d:Ljava/lang/String;

    :cond_7
    :goto_1
    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/x;->f:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/tencent/qmsp/oaid2/v;

    invoke-direct {v1}, Lcom/tencent/qmsp/oaid2/v;-><init>()V

    iput-object v1, p0, Lcom/tencent/qmsp/oaid2/x;->f:Landroid/content/BroadcastReceiver;

    const-string v2, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Z)Z
    .locals 8

    .line 40
    iget-object v0, p0, Lcom/tencent/qmsp/oaid2/x;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto/16 :goto_5

    :cond_0
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    move v2, v0

    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    const-string v3, "com.meizu.flyme.openidsdk"

    .line 43
    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v2, :cond_5

    const-string p1, "is not Supported, for isLegalProvider : false"

    .line 44
    invoke-static {p1}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    .line 45
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/x;->e:Ljava/lang/Boolean;

    :cond_4
    :goto_3
    move p0, v0

    goto :goto_5

    :cond_5
    const-string v1, "content://com.meizu.flyme.openidsdk/"

    .line 46
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, p2, [Ljava/lang/String;

    const-string p1, "supported"

    aput-object p1, v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_6

    .line 48
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/x;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_6
    :try_start_1
    invoke-static {v1}, Lcom/tencent/qmsp/oaid2/x;->a(Landroid/database/Cursor;)Lcom/tencent/qmsp/oaid2/z;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/qmsp/oaid2/z;->c:Ljava/lang/String;

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySupport, result : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qmsp/oaid2/x;->b(Ljava/lang/String;)V

    const-string p2, "0"

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qmsp/oaid2/x;->e:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return p0

    :catch_0
    if-eqz v1, :cond_4

    goto :goto_4

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0

    :catch_1
    if-eqz v1, :cond_4

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_5
    return p0
.end method
