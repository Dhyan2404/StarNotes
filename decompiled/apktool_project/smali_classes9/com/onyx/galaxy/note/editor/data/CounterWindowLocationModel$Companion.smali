.class public final Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;",
        "",
        "()V",
        "defaultValue",
        "Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;",
        "note_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final defaultValue()Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->setX(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;->setExpand(Z)V

    return-object p0
.end method
