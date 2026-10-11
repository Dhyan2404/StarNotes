.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->access$getHwrBlockOutputs$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;->access$getMinFontSize$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)F

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Ljava/util/List;F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/hwr/HWRConvertOutputToBlockRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertTexShapeAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
