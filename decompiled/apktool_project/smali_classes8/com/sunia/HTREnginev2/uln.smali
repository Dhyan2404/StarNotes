.class public final synthetic Lcom/sunia/HTREnginev2/uln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uln;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uln;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/uln;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uln;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uln;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uln;->g:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->d(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
