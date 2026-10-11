.class public final Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$a;->e:Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/ui/sticker/ShowConfirmDialogAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$a;->e:Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->sticker_delete_sticker_title:I

    sget v1, Lcom/onyx/galaxy/note/R$string;->sticker_delete_sticker_confirm:I

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/galaxy/note/ui/sticker/ShowConfirmDialogAction;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction$a;->a(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
