.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->endEraseImpl(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$h;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$h;->f:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->access$addCommand(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction$h;->a(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;)V

    return-void
.end method
