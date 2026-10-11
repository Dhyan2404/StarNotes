.class public final synthetic Lcom/sunia/HTREnginev2/b5l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BooleanSupplier;


# instance fields
.field public final synthetic e:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b5l;->e:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b5l;->e:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p0}, Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;->m(Lkotlin/jvm/internal/Ref$IntRef;)Z

    move-result p0

    return p0
.end method
