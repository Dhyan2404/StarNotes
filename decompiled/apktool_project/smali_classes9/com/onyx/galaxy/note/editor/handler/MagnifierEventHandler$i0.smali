.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->e0()V
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
.field public final synthetic e:Landroid/graphics/RectF;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->e:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToShapeRect(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save boxInfoxx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;-><init>(Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->e:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->getFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->g:Ljava/lang/String;

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;-><init>(Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {v1, p0, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteScribbleViewModel;->updateMagnifierViewport(Ljava/lang/String;Lcom/onyx/android/sdk/geometry/data/IdentifyRectF;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$i0;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
