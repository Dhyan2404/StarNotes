.class final Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager$ensureBoxInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;->g(II)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "it",
        "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;",
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
.field final synthetic $cellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

.field final synthetic this$0:Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager$ensureBoxInfo$1;->this$0:Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager$ensureBoxInfo$1;->$cellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager$ensureBoxInfo$1;->this$0:Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;->getBoxInfoCreator()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager$ensureBoxInfo$1;->$cellInfo:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;->access$onBoxInfoAdd(Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/boxmanager/DraftBoxManager$ensureBoxInfo$1;->invoke(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method
