.class public final Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;->q(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter$b;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter$b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter$b;->e:Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;->access$getOnSubTabRemoved$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter$b;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
