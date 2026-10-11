.class final Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest$execute$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest$execute$2;->this$0:Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest$execute$2;->this$0:Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;->access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/shape/CreateCrossPageShapesRequest$execute$2;->invoke()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method
