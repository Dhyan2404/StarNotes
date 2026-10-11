.class final Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1$thumbnailRes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;",
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
.field final synthetic $isNeedUpdateNoteModel:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1$thumbnailRes$1;->$isNeedUpdateNoteModel:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1$thumbnailRes$1;->$isNeedUpdateNoteModel:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->Companion:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes$Companion;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes$Companion;->create(ILjava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1$thumbnailRes$1;->invoke()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    move-result-object p0

    return-object p0
.end method
