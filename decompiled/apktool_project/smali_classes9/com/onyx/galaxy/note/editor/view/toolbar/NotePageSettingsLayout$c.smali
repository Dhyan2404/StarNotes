.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->p()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$c;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$c;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->access$getListener$p(Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;)Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$NotePageSettingChangedListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$NotePageSettingChangedListener;->onCurrentPageLinkCreated(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$c;->a(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    return-void
.end method
