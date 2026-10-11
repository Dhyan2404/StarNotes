.class public final synthetic Lcom/sunia/HTREnginev2/lfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lfh;->e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lfh;->e:Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->a(Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;)V

    return-void
.end method
