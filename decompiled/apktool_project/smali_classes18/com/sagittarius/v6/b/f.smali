.class public final Lcom/sagittarius/v6/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sagittarius/v6/b/a;


# static fields
.field private static a:Lcom/sagittarius/v6/b/f;

.field private static b:Ljava/util/List;

.field private static c:Ljava/util/List;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sagittarius/v6/b/f;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sagittarius/v6/b/f;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sagittarius/v6/b/f;->c:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/sagittarius/v6/b/f;->a:Lcom/sagittarius/v6/b/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sagittarius/v6/b/f;->b:Ljava/util/List;

    sget-object v1, Lcom/sagittarius/v6/b/f;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()Lcom/sagittarius/v6/b/f;
    .locals 1

    sget-object v0, Lcom/sagittarius/v6/b/f;->a:Lcom/sagittarius/v6/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sagittarius/v6/b/f;

    invoke-direct {v0}, Lcom/sagittarius/v6/b/f;-><init>()V

    sput-object v0, Lcom/sagittarius/v6/b/f;->a:Lcom/sagittarius/v6/b/f;

    :cond_0
    sget-object v0, Lcom/sagittarius/v6/b/f;->a:Lcom/sagittarius/v6/b/f;

    return-object v0
.end method

.method private static b()V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    sput-object v3, Lcom/sagittarius/v6/b/f;->d:[Ljava/lang/String;

    const-string v0, "ATo/TxkDMjsVHgMnOxQZTDYgUVtMFA=="

    const-string v2, "bURaj"

    invoke-static {v0}, Lcom/sagittarius/v6/a/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v4

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v7, :cond_0

    aget-byte v8, v4, v0

    array-length v9, v6

    rem-int v9, v2, v9

    aget-char v9, v6, v9

    xor-int/2addr v8, v9

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;Landroid/app/Application;Landroid/app/Application;)V
    .locals 2

    sget-object v0, Lcom/sagittarius/v6/b/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sagittarius/v6/b/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/sagittarius/v6/b/a;->attachBaseContext(Landroid/content/Context;Landroid/app/Application;Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 3

    sget-object v0, Lcom/sagittarius/v6/b/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sagittarius/v6/b/a;

    sget-object v2, Lcom/sagittarius/v6/b/f;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sagittarius/v6/b/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sagittarius/v6/b/a;

    invoke-interface {v0}, Lcom/sagittarius/v6/b/a;->init()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/app/Application;Landroid/app/Application;)V
    .locals 2

    sget-object v0, Lcom/sagittarius/v6/b/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sagittarius/v6/b/a;

    invoke-interface {v0, p1, p2}, Lcom/sagittarius/v6/b/a;->onCreate(Landroid/app/Application;Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;Landroid/app/Application;Landroid/app/Application;)V
    .locals 2

    sget-object v0, Lcom/sagittarius/v6/b/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sagittarius/v6/b/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/sagittarius/v6/b/a;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;Landroid/app/Application;Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    return-void
.end method
