.class final Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2;->this$0:Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2;->this$0:Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;->access$getEditTagForNoteContext$p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;)Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2$1;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2;->this$0:Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;-><init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagForNoteDialog$searchAdapter$2;->invoke()Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;

    move-result-object p0

    return-object p0
.end method
