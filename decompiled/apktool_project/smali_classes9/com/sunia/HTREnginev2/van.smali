.class public final synthetic Lcom/sunia/HTREnginev2/van;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/van;->e:Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/van;->f:Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/van;->e:Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/van;->f:Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->a(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V

    return-void
.end method
