.class public final Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static isAtLeast(Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;Landroidx/lifecycle/Lifecycle$Event;)Z
    .locals 1
    .param p0    # Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/galaxy/note/common/extension/LifecycleEventListener;->getStateEvent()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/LifecycleEventListenerKt;->isAtLeast(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/Lifecycle$Event;)Z

    move-result p0

    return p0
.end method
