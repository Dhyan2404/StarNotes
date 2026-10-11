.class final Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest$execute$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest;->execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "invoke",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;"
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
.field final synthetic $shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest$execute$2$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest$execute$2$1$1;->$shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest$execute$2$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest$execute$2$1$1;->$shape:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest;->access$isReferenceShapeEqual(Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/shape/RemoveDuplicatedCrossPageShapesRequest$execute$2$1$1;->invoke(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
