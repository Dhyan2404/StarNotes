.class public final Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;->n(Lcom/onyx/galaxy/note/databinding/ItemInkFontBinding;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
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
    value = "SMAP\nListAdapterExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt$notifyItemChangedSafely$indexes$1\n+ 2 InkFontListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter\n*L\n1#1,25:1\n59#2:26\n*E\n"
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
        "SMAP\nListAdapterExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt$notifyItemChangedSafely$indexes$1\n+ 2 InkFontListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter\n*L\n1#1,25:1\n59#2:26\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $lastSelectingId$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1;->$lastSelectingId$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
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

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter;->getSelectingFontId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1;->$lastSelectingId$inlined:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/InkFontListAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1;->invoke(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
