.class public final Lcom/onyx/galaxy/note/editor/view/popup/InkFontListPopup$handleEvent$$inlined$notifyItemChangedSafely$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/InkFontListPopup;->k(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListAdapterExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt$notifyItemChangedSafely$indexes$1\n+ 2 InkFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkFontListPopup\n*L\n1#1,25:1\n76#2:26\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "it",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Boolean;",
        "com/onyx/galaxy/note/utils/ListAdapterExtKt$notifyItemChangedSafely$indexes$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nListAdapterExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt$notifyItemChangedSafely$indexes$1\n+ 2 InkFontListPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkFontListPopup\n*L\n1#1,25:1\n76#2:26\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $event$inlined:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/InkFontListPopup$handleEvent$$inlined$notifyItemChangedSafely$2;->$event$inlined:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/InkFontListPopup$handleEvent$$inlined$notifyItemChangedSafely$2;->$event$inlined:Ljava/lang/Object;

    check-cast p0, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadFinishEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/event/InkFontDownloadFinishEvent;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkFontListPopup$handleEvent$$inlined$notifyItemChangedSafely$2;->invoke(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
