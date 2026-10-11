.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->v(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$e;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$e;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->access$onProgress(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$e;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method
