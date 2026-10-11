.class public final Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->L(Landroid/view/View;I)V
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

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

.field public final synthetic h:Lcom/onyx/android/sdk/base/data/TouchPoint;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->g:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

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
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->g:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->h:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v0, p1, v1, v2, p0}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->access$showActionPopup(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;Ljava/util/List;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$e;->a(Ljava/util/List;)V

    return-void
.end method
