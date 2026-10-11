.class final Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager$windowInputMode$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager$windowInputMode$2;->this$0:Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager$windowInputMode$2;->this$0:Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->access$getActivityContext$p(Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->toActivitySafety(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager$windowInputMode$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
