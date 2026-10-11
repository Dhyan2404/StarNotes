.class public final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->F(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$b0;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$b0;->e:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getImportSelectedContext$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "importSelectedContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$b0;->a(Ljava/util/List;)V

    return-void
.end method
