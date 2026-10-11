.class public final synthetic Lcom/sunia/HTREnginev2/rod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/retries/RetryStrategy;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldRetry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sunia/HTREnginev2/sod$a;

    check-cast p2, Lcom/sunia/HTREnginev2/sod$b;

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/sod;->a(Lcom/sunia/HTREnginev2/sod$a;Lcom/sunia/HTREnginev2/sod$b;)Lcom/sunia/HTREnginev2/sod$a;

    move-result-object p0

    return-object p0
.end method
