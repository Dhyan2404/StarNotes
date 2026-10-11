.class public final Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter$VH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;",
        "H",
        "Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;",
        "binding",
        "Landroid/view/ViewGroup;",
        "parent",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;)V",
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
.field public final H:Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic I:Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "binding"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter$VH;->I:Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;

    .line 2
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter$VH;->H:Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 p4, 0x0

    .line 5
    invoke-static {p3, p2, p4}, Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;

    move-result-object p3

    const-string p4, "inflate(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteAdapter$VH;->H:Lcom/onyx/galaxy/note/databinding/ItemEditTagForNoteBinding;

    return-object p0
.end method
