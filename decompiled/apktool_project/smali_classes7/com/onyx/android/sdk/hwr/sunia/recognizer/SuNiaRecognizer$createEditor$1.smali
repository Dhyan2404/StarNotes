.class public final Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/RecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->createEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1",
        "Lcom/sunia/HTREnginev2/sdk/RecognizeListener;",
        "onAssociationalChanged",
        "",
        "editor",
        "Lcom/sunia/HTREnginev2/sdk/editor/Editor;",
        "result",
        "",
        "onCandidateChanged",
        "onContentChanged",
        "onError",
        "i",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onLoaded",
        "onSyntheseChanged",
        "syntheseWord",
        "sdk-sunia_overseasRelease"
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
.field public final synthetic a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationalChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/sunia/HTREnginev2/sdk/editor/Editor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->access$getTAG$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onAssociationalChanged"

    invoke-virtual {p1, p0, v0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCandidateChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/sunia/HTREnginev2/sdk/editor/Editor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->access$getTAG$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onCandidateChanged"

    invoke-virtual {p1, p0, v0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onContentChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/sunia/HTREnginev2/sdk/editor/Editor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "result"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->access$getTAG$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V
    .locals 2
    .param p1    # Lcom/sunia/HTREnginev2/sdk/editor/Editor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->access$getTAG$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, p3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLoaded(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 2
    .param p1    # Lcom/sunia/HTREnginev2/sdk/editor/Editor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->access$getTAG$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onLoaded"

    invoke-virtual {p1, p0, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSyntheseChanged(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/sunia/HTREnginev2/sdk/editor/Editor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;->a:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->access$getTAG$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "onSyntheseChanged"

    invoke-virtual {p1, p0, v0, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
