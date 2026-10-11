.class public Landroidx/work/impl/utils/LiveDataUtils$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/LiveDataUtils$a;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroidx/work/impl/utils/LiveDataUtils$a;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/LiveDataUtils$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/utils/LiveDataUtils$a$a;->f:Landroidx/work/impl/utils/LiveDataUtils$a;

    iput-object p2, p0, Landroidx/work/impl/utils/LiveDataUtils$a$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/utils/LiveDataUtils$a$a;->f:Landroidx/work/impl/utils/LiveDataUtils$a;

    iget-object v0, v0, Landroidx/work/impl/utils/LiveDataUtils$a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/LiveDataUtils$a$a;->f:Landroidx/work/impl/utils/LiveDataUtils$a;

    iget-object v1, v1, Landroidx/work/impl/utils/LiveDataUtils$a;->d:Landroidx/arch/core/util/Function;

    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$a$a;->e:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/utils/LiveDataUtils$a$a;->f:Landroidx/work/impl/utils/LiveDataUtils$a;

    iget-object v3, v2, Landroidx/work/impl/utils/LiveDataUtils$a;->a:Ljava/lang/Object;

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    iput-object v1, v2, Landroidx/work/impl/utils/LiveDataUtils$a;->a:Ljava/lang/Object;

    iget-object p0, v2, Landroidx/work/impl/utils/LiveDataUtils$a;->e:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/work/impl/utils/LiveDataUtils$a$a;->f:Landroidx/work/impl/utils/LiveDataUtils$a;

    iput-object v1, p0, Landroidx/work/impl/utils/LiveDataUtils$a;->a:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/work/impl/utils/LiveDataUtils$a;->e:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
