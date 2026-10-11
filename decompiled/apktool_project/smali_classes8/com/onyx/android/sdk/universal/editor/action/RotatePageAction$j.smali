.class public final Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;->p(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;",
            "Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$j;->f:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$j;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$j;->f:Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/RotatePageAction$j;->g:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageProgressEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
