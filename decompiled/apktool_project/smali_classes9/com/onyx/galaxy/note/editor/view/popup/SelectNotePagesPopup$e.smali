.class public final Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->a0(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/data/NoteSelectType;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$e;->f:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$e;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->access$getNoteListMap$p(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$e;->f:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup$e;->a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    return-void
.end method
