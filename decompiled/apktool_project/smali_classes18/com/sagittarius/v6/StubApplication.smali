.class public Lcom/sagittarius/v6/StubApplication;
.super LAbdullah/hook;


# static fields
.field private static final llIIIl:[Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mInstallProviderCounter:I

.field public static mRealApplication:Landroid/app/Application;

.field public static mRealApplicationPatched:Z

.field public static skipLoad:Z


# instance fields
.field private mActivityCallbacks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/sagittarius/v6/StubApplication;->IllIIl()V

    sput-object v1, Lcom/sagittarius/v6/StubApplication;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    sput-boolean v0, Lcom/sagittarius/v6/StubApplication;->mRealApplicationPatched:Z

    sput v0, Lcom/sagittarius/v6/StubApplication;->mInstallProviderCounter:I

    sput-boolean v0, Lcom/sagittarius/v6/StubApplication;->skipLoad:Z

    invoke-static {}, Lcom/sagittarius/v6/b/f;->a()Lcom/sagittarius/v6/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sagittarius/v6/b/f;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sagittarius/v6/StubApplication;->mActivityCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private static IllIIl()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sagittarius/v6/StubApplication;->llIIIl:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MScESSs9KgALI3wpGRcvNjtHDjU9JAgTIzY="

    const-string v3, "RHigF"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/StubApplication;->lIlIIl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->llIIIl:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "OzcCBjwzPUgVIyp3JxcnMy8PACoOMRQRMj4="

    const-string v3, "ZYftS"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/StubApplication;->lIlIIl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->llIIIl:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "CwsxLgAOCRIoDhQMJj8T"

    const-string v3, "beBZa"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/StubApplication;->lIlIIl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->llIIIl:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, ""

    const-string v3, "vTPhw"

    invoke-static {v2, v3}, Lcom/sagittarius/v6/StubApplication;->lIlIIl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method private static lIlIIl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sagittarius/v6/a/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v2

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-byte v6, v2, v0

    array-length v7, v4

    rem-int v7, v1, v7

    aget-char v7, v4, v7

    xor-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 4

    sget v0, Lcom/sagittarius/v6/AppInfo;->FLAGS:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sagittarius/v6/b/t;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sagittarius/v6/StubApplication;->llIIIl:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sagittarius/v6/StubApplication;->skipLoad:Z

    :cond_0
    sget-boolean v0, Lcom/sagittarius/v6/StubApplication;->skipLoad:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    :goto_0
    invoke-static {}, Lcom/sagittarius/v6/b/f;->a()Lcom/sagittarius/v6/b/f;

    move-result-object v0

    sget-object v1, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v0, p1, p0, v1}, Lcom/sagittarius/v6/b/f;->attachBaseContext(Landroid/content/Context;Landroid/app/Application;Landroid/app/Application;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/sagittarius/v6/b/t;->a(Landroid/app/Application;Landroid/content/Context;)V

    sput-object p1, Lcom/sagittarius/v6/StubApplication;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v0, Lcom/sagittarius/v6/AppInfo;->APKPATH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/sagittarius/v6/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sagittarius/v6/AppInfo;->DATAPATH:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :goto_1
    sget-object v0, Lcom/sagittarius/v6/AppInfo;->APPNAME:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sagittarius/v6/AppInfo;->APPNAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/sagittarius/v6/AppInfo;->APPNAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sagittarius/v6/b/g;->a(Ljava/lang/String;)Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lcom/sagittarius/v6/b/g;->a(Landroid/content/Context;Landroid/app/Application;)V

    iget-object v0, p0, Lcom/sagittarius/v6/StubApplication;->mActivityCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sagittarius/v6/StubApplication;->mActivityCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    sget-object v2, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_2

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_4

    invoke-static {}, Lcom/sagittarius/v6/b/r;->a()V

    :cond_4
    invoke-static {}, Lcom/sagittarius/v6/b/t;->b()V

    sget-object v0, Lcom/sagittarius/v6/AppInfo;->PKGNAME:Ljava/lang/String;

    sget-object v1, Lcom/sagittarius/v6/AppInfo;->APKPATH:Ljava/lang/String;

    sget-object v2, Lcom/sagittarius/v6/AppInfo;->DATAPATH:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sagittarius/v6/A;->n1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/sagittarius/v6/b/t;->c()V

    goto/16 :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-boolean v0, Lcom/sagittarius/v6/StubApplication;->skipLoad:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/sagittarius/v6/StubApplication;->mInstallProviderCounter:I

    if-ge v0, v4, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v4, :cond_2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sagittarius/v6/StubApplication;->llIIIl:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sagittarius/v6/StubApplication;->llIIIl:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/sagittarius/v6/StubApplication;->mInstallProviderCounter:I

    if-nez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sagittarius/v6/StubApplication;->mInstallProviderCounter:I

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->llIIIl:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sagittarius/v6/StubApplication;->mInstallProviderCounter:I

    invoke-static {p0}, Lcom/sagittarius/v6/b/t;->a(Landroid/app/Application;)V

    :cond_2
    sget-object v0, Lcom/sagittarius/v6/AppInfo;->PKGNAME:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    sget-boolean v0, Lcom/sagittarius/v6/StubApplication;->skipLoad:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :goto_0
    invoke-static {}, Lcom/sagittarius/v6/b/f;->a()Lcom/sagittarius/v6/b/f;

    move-result-object v0

    sget-object v1, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v0, p0, v1}, Lcom/sagittarius/v6/b/f;->onCreate(Landroid/app/Application;Landroid/app/Application;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sagittarius/v6/b/t;->a(Landroid/app/Application;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/sagittarius/v6/b/t;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sagittarius/v6/b/t;->b(Landroid/app/Application;)V

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    :cond_1
    invoke-static {p0}, Lcom/sagittarius/v6/A;->n2(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    invoke-static {}, Lcom/sagittarius/v6/b/f;->a()Lcom/sagittarius/v6/b/f;

    move-result-object v0

    sget-object v1, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v0, p1, p0, v1}, Lcom/sagittarius/v6/b/f;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;Landroid/app/Application;Landroid/app/Application;)V

    sget-boolean v0, Lcom/sagittarius/v6/StubApplication;->skipLoad:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->mRealApplication:Landroid/app/Application;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sagittarius/v6/StubApplication;->mActivityCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sagittarius/v6/StubApplication;->mActivityCallbacks:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sagittarius/v6/StubApplication;->mActivityCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method
