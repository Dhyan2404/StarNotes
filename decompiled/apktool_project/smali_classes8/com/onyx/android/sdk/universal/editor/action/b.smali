.class public final synthetic Lcom/onyx/android/sdk/universal/editor/action/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/b;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/b;->f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/b;->e:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/b;->f:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;->a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    return-void
.end method
