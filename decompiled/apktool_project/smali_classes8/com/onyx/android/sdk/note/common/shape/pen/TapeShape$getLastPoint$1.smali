.class final Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getLastPoint$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "it",
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
.field final synthetic $first:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field final synthetic this$0:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getLastPoint$1;->$first:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getLastPoint$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getLastPoint$1;->$first:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getLastPoint$1;->this$0:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$getLastPoint$1;->invoke(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method
