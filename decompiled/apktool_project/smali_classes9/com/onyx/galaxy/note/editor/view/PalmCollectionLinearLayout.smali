.class public final Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;
.super Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0013\u0008\u0016\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rB\u001d\u0008\u0016\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u000c\u0010\u0010B%\u0008\u0016\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u000c\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;",
        "Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "dispatchTouchEvent",
        "Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;",
        "f",
        "Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;",
        "palmGestureCollection",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.field public f:Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;

    sget-object v0, Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;->SINGLE_CLICK:Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;-><init>(Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;->f:Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;

    sget-object p2, Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;->SINGLE_CLICK:Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;-><init>(Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;->f:Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;

    sget-object p2, Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;->SINGLE_CLICK:Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;-><init>(Lcom/onyx/galaxy/note/settings/ui/PalmCollectionType;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;->f:Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;->f:Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;->handleEvent$default(Lcom/onyx/galaxy/note/settings/ui/PalmGestureCollection;Landroid/view/MotionEvent;ZILjava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
