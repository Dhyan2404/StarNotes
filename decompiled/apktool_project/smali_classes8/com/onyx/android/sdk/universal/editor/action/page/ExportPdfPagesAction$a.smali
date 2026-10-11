.class public final Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

.field public final synthetic f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$a;->f:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)V
    .locals 3
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;->access$exportPagesToPdf(Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;->access$generateExportResult(Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$a;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/ExportPdfPagesAction$a;->a(Ljava/util/Map$Entry;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
