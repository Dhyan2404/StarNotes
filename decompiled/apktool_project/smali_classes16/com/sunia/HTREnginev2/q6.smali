.class public Lcom/sunia/HTREnginev2/q6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/sunia/HTREnginev2/q6;

.field public static final d:I = 0x64


# instance fields
.field public a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/q6;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/q6;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/q6;->c:Lcom/sunia/HTREnginev2/q6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q6;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/q6;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/q6;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q6;->a:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/q6;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/q6;->b:Z

    return p1
.end method

.method public static d()Lcom/sunia/HTREnginev2/q6;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/q6;->c:Lcom/sunia/HTREnginev2/q6;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q6;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q6;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_1
    return-void
.end method

.method public e(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q6;->a:Ljava/util/LinkedList;

    new-instance v0, Lcom/sunia/HTREnginev2/q6$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/q6$a;-><init>(Lcom/sunia/HTREnginev2/q6;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/q6;->b:Z

    return p0
.end method
