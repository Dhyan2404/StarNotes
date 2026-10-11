.class final Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$showRequestActivateTrialDialog$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->x(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $convertType:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$showRequestActivateTrialDialog$1$2;->$convertType:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$showRequestActivateTrialDialog$1$2;->this$0:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$showRequestActivateTrialDialog$1$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$showRequestActivateTrialDialog$1$2;->$convertType:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;->isRealtimeConvert()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "noteEditor_items_RealtimeHandwritingAdjustments_try_tryTipsPopup_open"

    goto :goto_0

    :cond_0
    const-string v0, "noteEditor_items_neatenHandwriting_try_tryTipsPopup_open"

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$showRequestActivateTrialDialog$1$2;->this$0:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->access$activateProVip(Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;Ljava/lang/String;)V

    return-void
.end method
