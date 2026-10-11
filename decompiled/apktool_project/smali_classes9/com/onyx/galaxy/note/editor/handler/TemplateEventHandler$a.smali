.class public final Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->onChangeTemplateEvent(Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$a;->f:Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$a;->f:Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/event/ChangeTemplateEvent;->getChangeTemplateKey()I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;->access$showChangeTemplateFragment(Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler;Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$a;->a(Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;)V

    return-void
.end method
