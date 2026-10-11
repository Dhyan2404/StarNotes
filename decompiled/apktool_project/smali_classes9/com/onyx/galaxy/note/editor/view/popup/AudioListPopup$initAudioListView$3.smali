.class public final Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$initAudioListView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter$ItemSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/AudioListPopup$initAudioListView$3",
        "Lcom/onyx/galaxy/note/editor/view/adapter/AudioListItemAdapter$ItemSelectionListener;",
        "onItemSelected",
        "",
        "list",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
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


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$initAudioListView$3;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$initAudioListView$3;->a:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$getListener$p(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;)Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;->onItemClick(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    :cond_0
    return-void
.end method
