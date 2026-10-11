.class public final Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0007\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;",
        "",
        "",
        "backToPreviousSoftInput",
        "enterAdjustPanSoftInput",
        "enterAdjustResizeSoftInput",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "activityContext",
        "",
        "b",
        "Lkotlin/Lazy;",
        "()I",
        "windowInputMode",
        "<init>",
        "(Landroid/content/Context;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a:Landroid/content/Context;

    new-instance p1, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager$windowInputMode$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager$windowInputMode$2;-><init>(Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final backToPreviousSoftInput()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->toActivitySafety(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public final enterAdjustPanSoftInput()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->toActivitySafety(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public final enterAdjustResizeSoftInput()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->toActivitySafety(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
