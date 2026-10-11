.class public final synthetic Lcom/sunia/HTREnginev2/x0l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x0l;->e:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/x0l;->f:Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x0l;->e:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x0l;->f:Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->c(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/universal/common/events/StylusClickPenBoxEvent;)V

    return-void
.end method
