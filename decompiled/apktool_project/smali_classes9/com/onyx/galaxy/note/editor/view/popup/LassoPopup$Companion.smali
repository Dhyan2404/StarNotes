.class public final Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;",
        "",
        "()V",
        "onLassoTypeSelected",
        "",
        "lassoOption",
        "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;",
        "lassoType",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LassoPopup$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLassoTypeSelected(Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;I)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "lassoOption"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;->Companion:Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption$Companion;->getLassoTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    if-nez p2, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeSubShapeTypeEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
