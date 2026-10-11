.class public final Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;
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
        "Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;",
        "H",
        "Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;",
        "binding",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;)V",
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
.field public final H:Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic I:Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;->I:Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;->H:Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/PathPopupAdapter$VH;->H:Lcom/onyx/galaxy/note/databinding/ItemPopupPathTitleBinding;

    return-object p0
.end method
