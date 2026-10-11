.class public final Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nParseNoteFileFromUriAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseNoteFileFromUriAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n2634#2:93\n1#3:94\n*S KotlinDebug\n*F\n+ 1 ParseNoteFileFromUriAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$create$1\n*L\n31#1:93\n31#1:94\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nParseNoteFileFromUriAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParseNoteFileFromUriAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$create$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n2634#2:93\n1#3:94\n*S KotlinDebug\n*F\n+ 1 ParseNoteFileFromUriAction.kt\ncom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$create$1\n*L\n31#1:93\n31#1:94\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$a;->e:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$a;->e:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->getUriList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$a;->e:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->access$getParsedResultMap$p(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction$a;->a(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;)V

    return-void
.end method
