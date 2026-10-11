.class public final Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter$VH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;",
        "H",
        "Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;",
        "getViewBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;",
        "viewBinding",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final H:Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic I:Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter$VH;->I:Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter$VH;->H:Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter$VH;->H:Lcom/onyx/galaxy/note/databinding/ItemNoteListFooterBinding;

    return-object p0
.end method
