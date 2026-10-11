.class public final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->t()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$createImportContext$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n766#2:402\n857#2,2:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$createImportContext$2\n*L\n261#1:402\n261#1:403,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nParseIntentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$createImportContext$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n766#2:402\n857#2,2:403\n*S KotlinDebug\n*F\n+ 1 ParseIntentAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseIntentAction$createImportContext$2\n*L\n261#1:402\n261#1:403,2\n*E\n"
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
            "Landroid/net/Uri;",
            ">;",
            "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$n;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$n;->f:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$n;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$n;->f:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$isSupportParseNoteFile(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$n;->a(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
