.class public final Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$b;->e:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$b;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$b;->e:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$b;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->setRemark(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$b;->a(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    return-void
.end method
