.class public final Lcom/sunia/HTREnginev2/huj$h;
.super Lio/opencensus/tags/TagsComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/huj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field public volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/tags/TagsComponent;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/huj$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/huj$h;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()Lio/opencensus/tags/TaggingState;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/huj$h;->a:Z

    sget-object p0, Lio/opencensus/tags/TaggingState;->DISABLED:Lio/opencensus/tags/TaggingState;

    return-object p0
.end method

.method public getTagPropagationComponent()Lio/opencensus/tags/propagation/TagPropagationComponent;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->e()Lio/opencensus/tags/propagation/TagPropagationComponent;

    move-result-object p0

    return-object p0
.end method

.method public getTagger()Lio/opencensus/tags/Tagger;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->f()Lio/opencensus/tags/Tagger;

    move-result-object p0

    return-object p0
.end method

.method public setState(Lio/opencensus/tags/TaggingState;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/huj$h;->a:Z

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "State was already read, cannot set state."

    invoke-static {p0, p1}, Lio/opencensus/internal/Utils;->checkState(ZLjava/lang/Object;)V

    return-void
.end method
