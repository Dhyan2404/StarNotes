.class public Lcom/sunia/HTREnginev2/ahe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final c:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .locals 0
    .param p2    # Lcom/google/android/datatransport/runtime/time/Clock;
        .annotation build Lcom/google/android/datatransport/runtime/time/WallTime;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/datatransport/runtime/time/Clock;
        .annotation build Lcom/google/android/datatransport/runtime/time/Monotonic;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ahe;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ahe;->b:Lcom/google/android/datatransport/runtime/time/Clock;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ahe;->c:Lcom/google/android/datatransport/runtime/time/Clock;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/CreationContext;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ahe;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ahe;->b:Lcom/google/android/datatransport/runtime/time/Clock;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ahe;->c:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->create(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/CreationContext;

    move-result-object p0

    return-object p0
.end method
