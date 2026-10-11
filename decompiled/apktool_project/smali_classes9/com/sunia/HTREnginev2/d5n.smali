.class public final synthetic Lcom/sunia/HTREnginev2/d5n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d5n;->e:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d5n;->e:Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;->l(Lcom/onyx/galaxy/note/settings/action/SubmitFeedbackAction;I)V

    return-void
.end method
