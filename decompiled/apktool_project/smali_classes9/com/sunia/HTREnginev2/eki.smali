.class public final synthetic Lcom/sunia/HTREnginev2/eki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartEngineActivateEvent;

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartEngineActivateEvent;Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eki;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/eki;->f:Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartEngineActivateEvent;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/eki;->g:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/eki;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/eki;->f:Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartEngineActivateEvent;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eki;->g:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->a(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartEngineActivateEvent;Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;)V

    return-void
.end method
