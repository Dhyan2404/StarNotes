.class public final Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction;
.super Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction;",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;",
        "",
        "bundle",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction$a;-><init>(Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction$b;-><init>(Lcom/onyx/galaxy/note/ui/sticker/ImportStickerFileAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
