.class public final Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->n()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$b;->e:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$b;->e:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeSelectionStyleMenuEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$b;->e:Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;->access$getShapes$p(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowShapeSelectionStyleMenuEvent;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandler$b;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
