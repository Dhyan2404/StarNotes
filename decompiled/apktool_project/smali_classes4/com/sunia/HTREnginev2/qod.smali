.class public final synthetic Lcom/sunia/HTREnginev2/qod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/retries/Function;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/sod;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/sod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qod;->a:Lcom/sunia/HTREnginev2/sod;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qod;->a:Lcom/sunia/HTREnginev2/sod;

    check-cast p1, Lcom/sunia/HTREnginev2/sod$a;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/sod;->b(Lcom/sunia/HTREnginev2/sod;Lcom/sunia/HTREnginev2/sod$a;)Lcom/sunia/HTREnginev2/sod$b;

    move-result-object p0

    return-object p0
.end method
