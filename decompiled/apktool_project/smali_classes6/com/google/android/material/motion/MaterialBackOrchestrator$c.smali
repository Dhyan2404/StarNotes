.class public Lcom/google/android/material/motion/MaterialBackOrchestrator$c;
.super Lcom/google/android/material/motion/MaterialBackOrchestrator$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x22
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/motion/MaterialBackOrchestrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/motion/MaterialBackOrchestrator$b;-><init>(Lcom/google/android/material/motion/MaterialBackOrchestrator$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/motion/MaterialBackOrchestrator$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/motion/MaterialBackOrchestrator$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/material/motion/MaterialBackHandler;)Landroid/window/OnBackInvokedCallback;
    .locals 1
    .param p1    # Lcom/google/android/material/motion/MaterialBackHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/material/motion/MaterialBackOrchestrator$c$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$c$a;-><init>(Lcom/google/android/material/motion/MaterialBackOrchestrator$c;Lcom/google/android/material/motion/MaterialBackHandler;)V

    return-object v0
.end method
