.class public final Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;->access$getTocEntries$p(Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;->access$getPageIndexChanged$p(Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;)Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/TocEntryUpdatedEvent;-><init>(Ljava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction$b;->a(Z)V

    return-void
.end method
