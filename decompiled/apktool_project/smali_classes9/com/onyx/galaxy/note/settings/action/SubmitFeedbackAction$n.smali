.class public final Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$n;->e:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$n;->e:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->access$setZipFile$p(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction$n;->a(Ljava/io/File;)V

    return-void
.end method
