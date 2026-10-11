.class public final Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$1;
.super Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$1",
        "Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;",
        "onDispose",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic k:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$1;->k:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method


# virtual methods
.method public onDispose()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction$parseNoteFileUriList$2$1;->k:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->access$setDisposed$p(Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;Z)V

    return-void
.end method
