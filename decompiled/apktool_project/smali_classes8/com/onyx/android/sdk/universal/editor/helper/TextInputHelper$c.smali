.class public final Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->q()V
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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$c;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$c;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$c;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/NoteBundle;->postStashEditTextShapeEvent(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$c;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method
