.class public final synthetic Lcom/sunia/HTREnginev2/hmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/functions/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hmf;->e:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hmf;->e:Lio/reactivex/rxjava3/functions/Consumer;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->a(Lio/reactivex/rxjava3/functions/Consumer;Ljava/lang/Object;)V

    return-void
.end method
