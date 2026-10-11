.class public final Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/BasePopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;",
        "",
        "()V",
        "dialogHolder",
        "Lcom/onyx/android/sdk/ui/ObjectHolder;",
        "Lcom/onyx/android/sdk/ui/BasePopWindow;",
        "dismissAll",
        "",
        "sdk-uicommon_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/ui/BasePopWindow$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismissAll()V
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/ui/BasePopWindow;->access$getDialogHolder$cp()Lcom/onyx/android/sdk/ui/ObjectHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/ObjectHolder;->getCopyOfObjectList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/ui/BasePopWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/onyx/android/sdk/ui/BasePopWindow;->access$getDialogHolder$cp()Lcom/onyx/android/sdk/ui/ObjectHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/ObjectHolder;->clear()V

    return-void
.end method
