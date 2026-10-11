.class public final Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->w(Z)V
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
.field public final synthetic e:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

.field public final synthetic g:Z

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->f:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    iput-boolean p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->g:Z

    iput p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->f:Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->g:Z

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->h:I

    invoke-static {v1, p1, v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;->access$getNextSelectionTab(Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup;Ljava/util/List;ZI)I

    move-result p0

    iput p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/StickerManagePopup$d;->a(Ljava/util/List;)V

    return-void
.end method
