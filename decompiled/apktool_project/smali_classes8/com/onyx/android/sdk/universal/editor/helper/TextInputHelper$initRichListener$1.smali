.class public final Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->initRichListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;",
        "onTransformFinish",
        "",
        "type",
        "Lcom/onyx/android/sdk/textbox/data/TransformType;",
        "onTransformStart",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1;->a:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1;->b(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    return-void
.end method

.method public static final b(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->access$updateShapeRect(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/textbox/data/TransformType;Z)V

    return-void
.end method


# virtual methods
.method public onTransformFinish(Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TransformType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1;->a:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getTextBoxView()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1;->a:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    new-instance v1, Lcom/sunia/HTREnginev2/edn;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/edn;-><init>(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTransformStart(Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TransformType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1;->a:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getTextBoxView()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1;->a:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HideEditTextShapeSelectionMenuEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
