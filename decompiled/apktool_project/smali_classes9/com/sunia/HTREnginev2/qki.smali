.class public final synthetic Lcom/sunia/HTREnginev2/qki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qki;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qki;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qki;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qki;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->g(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;Ljava/lang/Object;)V

    return-void
.end method
