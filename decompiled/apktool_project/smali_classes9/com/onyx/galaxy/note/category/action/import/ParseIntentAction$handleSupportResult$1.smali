.class final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$handleSupportResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->w(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$handleSupportResult$1;->this$0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$handleSupportResult$1;->invoke(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$handleSupportResult$1;->this$0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getActivityContext$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$handleSupportResult$1;->this$0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getImportSelectedContext$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "importSelectedContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-direct {p1, v0, p0}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
