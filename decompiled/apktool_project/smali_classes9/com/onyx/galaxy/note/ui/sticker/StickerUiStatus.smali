.class public final Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0004\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R(\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;",
        "",
        "",
        "a",
        "Z",
        "isTabSelected",
        "()Z",
        "setTabSelected",
        "(Z)V",
        "",
        "b",
        "Ljava/lang/String;",
        "getSelectedSubCategoryId",
        "()Ljava/lang/String;",
        "setSelectedSubCategoryId",
        "(Ljava/lang/String;)V",
        "selectedSubCategoryId",
        "c",
        "getInSelectionMode",
        "setInSelectionMode",
        "inSelectionMode",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "d",
        "Ljava/util/List;",
        "getSelectedItems",
        "()Ljava/util/List;",
        "setSelectedItems",
        "(Ljava/util/List;)V",
        "selectedItems",
        "<init>",
        "()V",
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
.field public a:Z

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getInSelectionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->c:Z

    return p0
.end method

.method public final getSelectedItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedSubCategoryId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final isTabSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->a:Z

    return p0
.end method

.method public final setInSelectionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->c:Z

    return-void
.end method

.method public final setSelectedItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->d:Ljava/util/List;

    return-void
.end method

.method public final setSelectedSubCategoryId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->b:Ljava/lang/String;

    return-void
.end method

.method public final setTabSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/ui/sticker/StickerUiStatus;->a:Z

    return-void
.end method
