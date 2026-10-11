.class public final Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$d;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$d;->e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$d;->f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

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

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$d;->e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;->access$getShape$p(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$d;->f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$d;->a(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioNameAction;)V

    return-void
.end method
