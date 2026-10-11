.class final Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkPageExist$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction;->m(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "invoke",
        "(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkPageExist$1;->$docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/lang/Boolean;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->Companion:Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkPageExist$1;->$docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v4, p1

    new-instance v5, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkPageExist$1$1;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkPageExist$1;->$docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-direct {v5, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkPageExist$1$1;-><init>(Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;->withOnce$default(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder$Companion;Lcom/onyx/android/sdk/bundle/DBProviderBundle;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction$checkPageExist$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
