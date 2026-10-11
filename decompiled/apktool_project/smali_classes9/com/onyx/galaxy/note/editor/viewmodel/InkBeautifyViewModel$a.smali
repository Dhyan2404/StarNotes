.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->download(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;->f:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setState(B)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;->f:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadFailEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadFailEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
