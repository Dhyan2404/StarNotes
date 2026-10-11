.class public final synthetic Lcom/sunia/HTREnginev2/vvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic f:Lcom/onyx/android/sdk/base/rx/RxBaseRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vvl;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vvl;->f:Lcom/onyx/android/sdk/base/rx/RxBaseRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vvl;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vvl;->f:Lcom/onyx/android/sdk/base/rx/RxBaseRequest;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->a(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)V

    return-void
.end method
