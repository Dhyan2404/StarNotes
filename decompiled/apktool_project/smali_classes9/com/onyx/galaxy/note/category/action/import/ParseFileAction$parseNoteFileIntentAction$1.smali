.class public final Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$parseNoteFileIntentAction$1;
.super Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;->D(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
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
        "com/onyx/galaxy/note/category/action/import/ParseFileAction$parseNoteFileIntentAction$1",
        "Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;",
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
.field public final synthetic j:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;)V
    .locals 6

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$parseNoteFileIntentAction$1;->j:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public onDispose()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction$parseNoteFileIntentAction$1;->j:Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;->access$setDisposed$p(Lcom/onyx/galaxy/note/category/action/import/ParseFileAction;Z)V

    return-void
.end method
