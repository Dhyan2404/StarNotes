.class public final synthetic Lcom/sunia/HTREnginev2/mal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BooleanSupplier;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mal;->e:Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mal;->e:Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->l(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)Z

    move-result p0

    return p0
.end method
