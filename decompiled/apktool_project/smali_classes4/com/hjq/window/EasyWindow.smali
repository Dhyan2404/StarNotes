.class public Lcom/hjq/window/EasyWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/hjq/window/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hjq/window/EasyWindow$OnWindowLifecycle;,
        Lcom/hjq/window/EasyWindow$OnTouchListener;,
        Lcom/hjq/window/EasyWindow$OnLongClickListener;,
        Lcom/hjq/window/EasyWindow$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Lcom/hjq/window/EasyWindow<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/hjq/window/a$a;"
    }
.end annotation


# static fields
.field public static final q:Landroid/os/Handler;

.field public static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hjq/window/EasyWindow<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public e:Landroid/content/Context;

.field public f:Landroid/view/ViewGroup;

.field public g:Landroid/view/WindowManager;

.field public h:Landroid/view/WindowManager$LayoutParams;

.field public i:Z

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Lcom/sunia/HTREnginev2/w6;

.field public m:Lcom/hjq/window/draggable/BaseDraggable;

.field public n:Lcom/hjq/window/EasyWindow$OnWindowLifecycle;

.field public o:Lcom/hjq/window/a;

.field public final p:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hjq/window/EasyWindow;->q:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/window/EasyWindow;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0, v3}, Lcom/hjq/window/EasyWindow;->addWindowFlags(I)Lcom/hjq/window/EasyWindow;

    .line 8
    :cond_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, v2}, Lcom/hjq/window/EasyWindow;->setLayoutInDisplayCutoutMode(I)Lcom/hjq/window/EasyWindow;

    .line 9
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lcom/hjq/window/EasyWindow;->setSystemUiVisibility(I)Lcom/hjq/window/EasyWindow;

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 13
    :cond_3
    new-instance v0, Lcom/sunia/HTREnginev2/w6;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/w6;-><init>(Lcom/hjq/window/EasyWindow;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->l:Lcom/sunia/HTREnginev2/w6;

    .line 14
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/w6;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/hjq/window/EasyWindow;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x7f6

    .line 16
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->setWindowType(I)Lcom/hjq/window/EasyWindow;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/sunia/HTREnginev2/ikf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ikf;-><init>(Lcom/hjq/window/EasyWindow;)V

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->p:Ljava/lang/Runnable;

    .line 19
    iput-object p1, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/hjq/window/WindowLayout;

    invoke-direct {v0, p1}, Lcom/hjq/window/WindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    const-string v0, "window"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->g:Landroid/view/WindowManager;

    .line 22
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    .line 23
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 24
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    .line 25
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    sget-object p1, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/hjq/window/EasyWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/hjq/window/EasyWindow;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/hjq/window/EasyWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/hjq/window/EasyWindow;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/hjq/window/EasyWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/hjq/window/EasyWindow;->e()V

    return-void
.end method

.method public static declared-synchronized cancelAll()V
    .locals 3

    const-class v0, Lcom/hjq/window/EasyWindow;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hjq/window/EasyWindow;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/hjq/window/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized cancelByClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/hjq/window/EasyWindow<",
            "*>;>;)V"
        }
    .end annotation

    const-class v0, Lcom/hjq/window/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hjq/window/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/hjq/window/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized cancelByTag(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/hjq/window/EasyWindow;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hjq/window/EasyWindow;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/hjq/window/EasyWindow;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/hjq/window/EasyWindow;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic d()V
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->m:Lcom/hjq/window/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method private synthetic e()V
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->m:Lcom/hjq/window/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method private synthetic f()V
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->m:Lcom/hjq/window/draggable/BaseDraggable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshLocationCoordinate()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized recycleAll()V
    .locals 3

    const-class v0, Lcom/hjq/window/EasyWindow;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hjq/window/EasyWindow;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2}, Lcom/hjq/window/EasyWindow;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static recycleByClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/hjq/window/EasyWindow<",
            "*>;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hjq/window/EasyWindow;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->recycle()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static recycleByTag(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hjq/window/EasyWindow;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->recycle()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/hjq/window/EasyWindow;
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/window/EasyWindow;

    invoke-direct {v0, p0}, Lcom/hjq/window/EasyWindow;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static with(Landroid/app/Application;)Lcom/hjq/window/EasyWindow;
    .locals 1

    .line 2
    new-instance v0, Lcom/hjq/window/EasyWindow;

    invoke-direct {v0, p0}, Lcom/hjq/window/EasyWindow;-><init>(Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public addWindowFlags(I)Lcom/hjq/window/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public cancel()V
    .locals 3

    iget-boolean v0, p0, Lcom/hjq/window/EasyWindow;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->g:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/hjq/window/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->n:Lcom/hjq/window/EasyWindow$OnWindowLifecycle;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/hjq/window/EasyWindow$OnWindowLifecycle;->onWindowCancel(Lcom/hjq/window/EasyWindow;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/hjq/window/EasyWindow;->i:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lcom/hjq/window/EasyWindow;->i:Z

    throw v1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final g(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnClickListener;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/hjq/window/EasyWindow$OnClickListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/hjq/window/b;

    invoke-direct {v0, p0, p2}, Lcom/hjq/window/b;-><init>(Lcom/hjq/window/EasyWindow;Lcom/hjq/window/EasyWindow$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    return-object p0
.end method

.method public getDecorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getDraggable()Lcom/hjq/window/draggable/BaseDraggable;
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->m:Lcom/hjq/window/draggable/BaseDraggable;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    sget-object p0, Lcom/hjq/window/EasyWindow;->q:Landroid/os/Handler;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getViewHeight()I
    .locals 0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getViewWidth()I
    .locals 0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->g:Landroid/view/WindowManager;

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public getWindowVisibility()I
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public final h(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnLongClickListener;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/hjq/window/EasyWindow$OnLongClickListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/hjq/window/c;

    invoke-direct {v0, p0, p2}, Lcom/hjq/window/c;-><init>(Lcom/hjq/window/EasyWindow;Lcom/hjq/window/EasyWindow$OnLongClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public hasWindowFlags(I)Z
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnTouchListener;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/hjq/window/EasyWindow$OnTouchListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, Lcom/hjq/window/d;

    invoke-direct {v0, p0, p2}, Lcom/hjq/window/d;-><init>(Lcom/hjq/window/EasyWindow;Lcom/hjq/window/EasyWindow$OnTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hjq/window/EasyWindow;->i:Z

    return p0
.end method

.method public onScreenOrientationChange(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->m:Lcom/hjq/window/draggable/BaseDraggable;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->onScreenOrientationChange()V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/hjq/window/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    sget-object v0, Lcom/hjq/window/EasyWindow;->q:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/hjq/window/EasyWindow;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public postUpdate()V
    .locals 1

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->p:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recycle()V
    .locals 2

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->o:Lcom/hjq/window/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hjq/window/a;->b(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->n:Lcom/hjq/window/EasyWindow$OnWindowLifecycle;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/hjq/window/EasyWindow$OnWindowLifecycle;->onWindowRecycle(Lcom/hjq/window/EasyWindow;)V

    :cond_2
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->l:Lcom/sunia/HTREnginev2/w6;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/w6;->b()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->n:Lcom/hjq/window/EasyWindow$OnWindowLifecycle;

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->g:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->l:Lcom/sunia/HTREnginev2/w6;

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->m:Lcom/hjq/window/draggable/BaseDraggable;

    iput-object v0, p0, Lcom/hjq/window/EasyWindow;->o:Lcom/hjq/window/a;

    sget-object v0, Lcom/hjq/window/EasyWindow;->r:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lcom/hjq/window/EasyWindow;->q:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 1

    sget-object v0, Lcom/hjq/window/EasyWindow;->q:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeWindowFlags(I)Lcom/hjq/window/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->cancel()V

    return-void
.end method

.method public setAnimStyle(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setBackground(II)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/EasyWindow;->setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TX;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setBackgroundDimAmount(F)Lcom/hjq/window/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->addWindowFlags(I)Lcom/hjq/window/EasyWindow;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    :goto_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "amount must be a value between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBitmapFormat(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setBlurBehindRadius(I)Lcom/hjq/window/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/hkf;->a(Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->addWindowFlags(I)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    :cond_0
    return-object p0
.end method

.method public setButtonBrightness(F)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setColorMode(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setContentView(I)Lcom/hjq/window/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/hjq/window/EasyWindow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TX;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 10
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 11
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v1, :cond_4

    .line 13
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 14
    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_3

    .line 15
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 16
    :cond_2
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    .line 17
    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_3

    .line 18
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 19
    :cond_3
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v1, :cond_4

    const/16 v1, 0x11

    .line 20
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_4
    if-eqz p1, :cond_6

    .line 21
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v3, v2, :cond_5

    .line 22
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 24
    :cond_5
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setDecorView(Landroid/view/ViewGroup;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TX;"
        }
    .end annotation

    iput-object p1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setDraggable()Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hjq/window/draggable/MovingDraggable;

    invoke-direct {v0}, Lcom/hjq/window/draggable/MovingDraggable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->setDraggable(Lcom/hjq/window/draggable/BaseDraggable;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setDraggable(Lcom/hjq/window/draggable/BaseDraggable;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/draggable/BaseDraggable;",
            ")TX;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/hjq/window/EasyWindow;->m:Lcom/hjq/window/draggable/BaseDraggable;

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    .line 3
    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    const/16 v0, 0x200

    .line 4
    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    .line 5
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->update()V

    .line 7
    invoke-virtual {p1, p0}, Lcom/hjq/window/draggable/BaseDraggable;->start(Lcom/hjq/window/EasyWindow;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/hjq/window/EasyWindow;->o:Lcom/hjq/window/a;

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Lcom/hjq/window/a;

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/hjq/window/a;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/hjq/window/EasyWindow;->o:Lcom/hjq/window/a;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/hjq/window/EasyWindow;->o:Lcom/hjq/window/a;

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/hjq/window/a;->a(Landroid/content/Context;Lcom/hjq/window/a$a;)V

    return-object p0
.end method

.method public setDuration(I)Lcom/hjq/window/EasyWindow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iput p1, p0, Lcom/hjq/window/EasyWindow;->j:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/hjq/window/EasyWindow;->j:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p0}, Lcom/hjq/window/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    iget p1, p0, Lcom/hjq/window/EasyWindow;->j:I

    int-to-long v0, p1

    invoke-virtual {p0, p0, v0, v1}, Lcom/hjq/window/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p0
.end method

.method public setGravity(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    new-instance p1, Lcom/sunia/HTREnginev2/kkf;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/kkf;-><init>(Lcom/hjq/window/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public setHeight(I)Lcom/hjq/window/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p1, :cond_0

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setHint(II)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/EasyWindow;->setHint(ILjava/lang/CharSequence;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setHint(ILjava/lang/CharSequence;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setHintColor(II)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    return-object p0
.end method

.method public setHorizontalMargin(F)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setImageDrawable(II)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/EasyWindow;->setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TX;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setLayoutInDisplayCutoutMode(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setOnClickListener(ILcom/hjq/window/EasyWindow$OnClickListener;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hjq/window/EasyWindow$OnClickListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/EasyWindow;->g(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnClickListener;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setOnClickListener(Lcom/hjq/window/EasyWindow$OnClickListener;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow$OnClickListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/hjq/window/EasyWindow;->g(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnClickListener;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setOnLongClickListener(ILcom/hjq/window/EasyWindow$OnLongClickListener;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hjq/window/EasyWindow$OnLongClickListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/EasyWindow;->h(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnLongClickListener;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setOnLongClickListener(Lcom/hjq/window/EasyWindow$OnLongClickListener;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow$OnLongClickListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/hjq/window/EasyWindow;->h(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnLongClickListener;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setOnTouchListener(ILcom/hjq/window/EasyWindow$OnTouchListener;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hjq/window/EasyWindow$OnTouchListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/EasyWindow;->i(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnTouchListener;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setOnTouchListener(Lcom/hjq/window/EasyWindow$OnTouchListener;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow$OnTouchListener<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/hjq/window/EasyWindow;->i(Landroid/view/View;Lcom/hjq/window/EasyWindow$OnTouchListener;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setOnWindowLifecycle(Lcom/hjq/window/EasyWindow$OnWindowLifecycle;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow$OnWindowLifecycle;",
            ")TX;"
        }
    .end annotation

    iput-object p1, p0, Lcom/hjq/window/EasyWindow;->n:Lcom/hjq/window/EasyWindow$OnWindowLifecycle;

    return-object p0
.end method

.method public setOutsideTouchable(Z)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TX;"
        }
    .end annotation

    const/16 v0, 0x28

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->addWindowFlags(I)Lcom/hjq/window/EasyWindow;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    :goto_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setPreferredDisplayModeId(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setPreferredRefreshRate(F)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setScreenBrightness(F)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setScreenOrientation(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setSoftInputMode(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->removeWindowFlags(I)Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setSystemUiVisibility(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    iput-object p1, p0, Lcom/hjq/window/EasyWindow;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setText(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    const v0, 0x102000b

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/hjq/window/EasyWindow;->setText(II)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setText(II)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/EasyWindow;->setText(ILjava/lang/CharSequence;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setText(ILjava/lang/CharSequence;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    const v0, 0x102000b

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/hjq/window/EasyWindow;->setText(ILjava/lang/CharSequence;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    return-object p0
.end method

.method public setTextColor(II)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTextSize(IF)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TX;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p0
.end method

.method public setTextSize(IIF)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)TX;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p0
.end method

.method public setVerticalMargin(F)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setVerticalWeight(F)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setVisibility(II)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setWidth(I)Lcom/hjq/window/EasyWindow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, p1, :cond_0

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowAlpha(F)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowFlags(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowParams(Landroid/view/WindowManager$LayoutParams;)Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            ")TX;"
        }
    .end annotation

    iput-object p1, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowToken(Landroid/os/IBinder;)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowType(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    return-object p0
.end method

.method public setWindowVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getWindowVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->n:Lcom/hjq/window/EasyWindow$OnWindowLifecycle;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/hjq/window/EasyWindow$OnWindowLifecycle;->onWindowVisibilityChanged(Lcom/hjq/window/EasyWindow;I)V

    :cond_1
    return-void
.end method

.method public setXOffset(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    new-instance p1, Lcom/sunia/HTREnginev2/jkf;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/jkf;-><init>(Lcom/hjq/window/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public setYOffset(I)Lcom/hjq/window/EasyWindow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    new-instance p1, Lcom/sunia/HTREnginev2/lkf;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/lkf;-><init>(Lcom/hjq/window/EasyWindow;)V

    invoke-virtual {p0, p1}, Lcom/hjq/window/EasyWindow;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/hjq/window/EasyWindow;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->update()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hjq/window/EasyWindow;->i:Z

    iget v0, p0, Lcom/hjq/window/EasyWindow;->j:I

    if-eqz v0, :cond_4

    invoke-virtual {p0, p0}, Lcom/hjq/window/EasyWindow;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/hjq/window/EasyWindow;->j:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/hjq/window/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->m:Lcom/hjq/window/draggable/BaseDraggable;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/hjq/window/draggable/BaseDraggable;->start(Lcom/hjq/window/EasyWindow;)V

    :cond_5
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->n:Lcom/hjq/window/EasyWindow$OnWindowLifecycle;

    if-eqz v0, :cond_6

    invoke-interface {v0, p0}, Lcom/hjq/window/EasyWindow$OnWindowLifecycle;->onWindowShow(Lcom/hjq/window/EasyWindow;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "WindowParams and view cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x50

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/hjq/window/EasyWindow;->showAsDropDown(Landroid/view/View;I)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/hjq/window/EasyWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 5
    invoke-static {p2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 9
    iget-object v2, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    aget v4, v0, v3

    .line 10
    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v4, p3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 p3, 0x1

    aget p3, v0, p3

    .line 11
    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v0

    add-int/2addr p3, p4

    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    and-int/lit8 p3, p2, 0x3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_2

    .line 12
    iget-object p3, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    if-nez p3, :cond_0

    .line 13
    iget-object p3, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    :cond_0
    if-nez p3, :cond_1

    .line 14
    iget-object p3, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 15
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 16
    invoke-virtual {p3, p4, v0}, Landroid/view/View;->measure(II)V

    .line 17
    iget-object p3, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 18
    :cond_1
    iget-object p4, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v0, p3

    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_2
    and-int/lit8 p3, p2, 0x5

    const/4 p4, 0x5

    if-ne p3, p4, :cond_3

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr v4, p3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    :goto_0
    and-int/lit8 p3, p2, 0x30

    const/16 p4, 0x30

    if-ne p3, p4, :cond_6

    .line 20
    iget-object p1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-nez p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :cond_4
    if-nez p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 23
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 25
    iget-object p1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 26
    :cond_5
    iget-object p2, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_6
    const/16 p3, 0x50

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_7

    .line 27
    iget-object p2, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->show()V

    return-void

    .line 29
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WindowParams and view cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hjq/window/EasyWindow;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public update()V
    .locals 3

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hjq/window/EasyWindow;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/hjq/window/EasyWindow;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->n:Lcom/hjq/window/EasyWindow$OnWindowLifecycle;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p0}, Lcom/hjq/window/EasyWindow$OnWindowLifecycle;->onWindowUpdate(Lcom/hjq/window/EasyWindow;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
