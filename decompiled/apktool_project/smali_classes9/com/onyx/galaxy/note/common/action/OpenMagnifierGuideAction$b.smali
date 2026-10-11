.class public final Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$b;->e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->Companion:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$Companion;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$b;->e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->access$getOption(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->access$setShown$cp(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$b;->a(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)V

    return-void
.end method
