.class public final Lcom/google/android/datatransport/runtime/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/f$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/d$b;->b(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/d$b;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/d$b;
    .locals 0

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/d$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public build()Lcom/google/android/datatransport/runtime/f;
    .locals 2

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/d$b;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/datatransport/runtime/d;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/d$b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/datatransport/runtime/d;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/d$a;)V

    return-object v0
.end method
