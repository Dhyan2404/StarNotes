.class public final Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;->access$getTocEntry$p(Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    move-result-object p0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setPageId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/toc/EnsureTocEntryPageIdAction$a;->a(Ljava/util/List;)V

    return-void
.end method
