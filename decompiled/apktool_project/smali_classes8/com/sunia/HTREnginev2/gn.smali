.class public final synthetic Lcom/sunia/HTREnginev2/gn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gn;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gn;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gn;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gn;->f:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->m(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    return-void
.end method
