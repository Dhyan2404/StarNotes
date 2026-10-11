.class final Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/databinding/LayoutStickerParamsContainerBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/databinding/LayoutStickerParamsContainerBinding;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$binding$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/databinding/LayoutStickerParamsContainerBinding;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$binding$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$binding$2;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutStickerParamsContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutStickerParamsContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/StickersParamsContainer$binding$2;->invoke()Lcom/onyx/galaxy/note/databinding/LayoutStickerParamsContainerBinding;

    move-result-object p0

    return-object p0
.end method
