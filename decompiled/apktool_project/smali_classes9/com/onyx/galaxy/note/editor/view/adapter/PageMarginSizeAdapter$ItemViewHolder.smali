.class public final Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;
.super Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
        "I",
        "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
        "binding",
        "Landroid/view/ViewGroup;",
        "parent",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;)V",
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
.field public final I:Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic J:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;
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
            "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "binding"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;->J:Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;

    .line 2
    invoke-direct {p0, p3}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 p4, 0x0

    .line 5
    invoke-static {p3, p2, p4}, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    move-result-object p3

    const-string p4, "inflate(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    return-object p0
.end method
