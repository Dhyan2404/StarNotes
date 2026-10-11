.class public final synthetic Lcom/onyx/android/sdk/universal/editor/api/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/api/a;->e:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/api/a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/api/a;->e:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/api/a;->f:Ljava/lang/String;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;->a(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    return-void
.end method
