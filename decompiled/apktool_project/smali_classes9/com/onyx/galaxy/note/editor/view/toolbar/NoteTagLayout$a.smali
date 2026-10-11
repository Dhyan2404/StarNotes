.class public final synthetic Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout$a;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout$a;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;->access$onTagTreeLoaded(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout$a;->a(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method
