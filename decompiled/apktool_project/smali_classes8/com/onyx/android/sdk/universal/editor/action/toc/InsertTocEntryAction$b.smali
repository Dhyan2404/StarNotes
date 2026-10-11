.class public final Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->access$getTocEntry$p(Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;->access$getInsertIndex$p(Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryInsertedEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;I)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/toc/InsertTocEntryAction$b;->a(Z)V

    return-void
.end method
