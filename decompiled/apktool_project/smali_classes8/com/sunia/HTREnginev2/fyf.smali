.class public final synthetic Lcom/sunia/HTREnginev2/fyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fyf;->e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fyf;->f:Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fyf;->e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fyf;->f:Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->b(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V

    return-void
.end method
