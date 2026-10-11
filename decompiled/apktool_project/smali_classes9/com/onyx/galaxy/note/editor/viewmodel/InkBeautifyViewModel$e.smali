.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->l(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$e;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$e;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$e;->e:Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Convert Beautify Shapes Fail"

    invoke-virtual {v0, v1, v2, p1}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$e;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyArgs;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreSourceTransformBeanEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel$e;->a(Ljava/lang/Throwable;)V

    return-void
.end method
