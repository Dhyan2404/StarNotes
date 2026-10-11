.class final Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;->this$0:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;->this$0:Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu$secondaryMenuAdapter$2;->invoke()Lcom/onyx/galaxy/note/editor/menu/SecondarySelectionMenuAdapter;

    move-result-object p0

    return-object p0
.end method
