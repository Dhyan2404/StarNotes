.class final Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$penArgsOption$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
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
.field final synthetic $penProperty:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$penArgsOption$2;->$penProperty:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$penArgsOption$2;->$penProperty:Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->TAPE_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;->getPenArgsOption(I)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$penArgsOption$2;->invoke()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method
