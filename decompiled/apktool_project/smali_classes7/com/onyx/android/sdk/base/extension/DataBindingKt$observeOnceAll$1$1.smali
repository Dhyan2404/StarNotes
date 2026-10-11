.class final Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnceAll(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LifecycleOwner;[Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $liveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $this_observeOnceAll:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/lifecycle/LiveData<",
            "*>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;->$this_observeOnceAll:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;->$liveData:Landroidx/lifecycle/LiveData;

    iput p3, p0, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;->$index:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;->$this_observeOnceAll:Landroidx/lifecycle/MediatorLiveData;

    iget-object v0, p0, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;->$liveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;->$this_observeOnceAll:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1$1;->INSTANCE:Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget p0, p0, Lcom/onyx/android/sdk/base/extension/DataBindingKt$observeOnceAll$1$1;->$index:I

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
