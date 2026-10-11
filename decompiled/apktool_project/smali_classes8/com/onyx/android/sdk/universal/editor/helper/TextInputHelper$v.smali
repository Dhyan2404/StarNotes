.class public final Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->M(Lcom/onyx/android/sdk/textbox/data/TransformType;Z)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$v;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$v;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/EditTextShapeUpdateResultEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$v;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getTextBoxView()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/EditTextShapeUpdateResultEvent;-><init>(Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$v;->a(Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    return-void
.end method
