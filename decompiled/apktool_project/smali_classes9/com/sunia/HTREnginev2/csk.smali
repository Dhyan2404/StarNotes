.class public final synthetic Lcom/sunia/HTREnginev2/csk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;


# direct methods
.method public synthetic constructor <init>(ZLcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/csk;->e:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/csk;->f:Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/csk;->e:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/csk;->f:Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->b(ZLcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V

    return-void
.end method
