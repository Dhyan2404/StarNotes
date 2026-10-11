.class public final synthetic Lcom/sunia/HTREnginev2/yzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/yzm;->e:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/yzm;->e:Z

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;->l(ZLcom/onyx/galaxy/note/editor/action/counter/StopCounterAction;)V

    return-void
.end method
