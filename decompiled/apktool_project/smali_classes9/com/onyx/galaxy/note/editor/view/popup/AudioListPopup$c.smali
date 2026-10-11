.class public final Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->G(Ljava/util/List;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$c;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$c;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$c;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$c;->f:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$onAudioItemDeleted(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$c;->a(Lcom/onyx/galaxy/note/editor/action/audio/RemoveAudioAction;)V

    return-void
.end method
