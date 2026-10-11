.class public final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->E(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n2634#2:402\n1#3:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$1\n*L\n157#1:402\n157#1:403\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n2634#2:402\n1#3:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$1\n*L\n157#1:402\n157#1:403\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$w;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$w;->f:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

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
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$w;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$w;->f:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$getImportSelectedContext$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;)Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "importSelectedContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->addTaskInfo(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$w;->a(Ljava/util/List;)V

    return-void
.end method
