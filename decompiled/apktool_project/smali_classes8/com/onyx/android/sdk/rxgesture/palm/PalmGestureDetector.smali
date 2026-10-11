.class public final Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPalmGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PalmGestureDetector.kt\ncom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1855#2,2:85\n*S KotlinDebug\n*F\n+ 1 PalmGestureDetector.kt\ncom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector\n*L\n65#1:85,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u0008J\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u0008R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R&\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0018j\u0008\u0012\u0004\u0012\u00020\u0004`\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;",
        "",
        "Landroid/view/View;",
        "view",
        "Landroid/view/MotionEvent;",
        "event",
        "Lcom/onyx/android/sdk/rxgesture/palm/PalmType;",
        "onTouchEvent",
        "",
        "collectionTouchList",
        "",
        "isForceDetect",
        "analysisSizeList",
        "releaseTouchList",
        "",
        "palmSize",
        "reset",
        "Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;",
        "a",
        "Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;",
        "touchSizeHistogram",
        "b",
        "Lcom/onyx/android/sdk/rxgesture/palm/PalmType;",
        "touchSizeType",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "c",
        "Ljava/util/ArrayList;",
        "unConfirmedTouchList",
        "<init>",
        "()V",
        "Companion",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPalmGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PalmGestureDetector.kt\ncom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1855#2,2:85\n*S KotlinDebug\n*F\n+ 1 PalmGestureDetector.kt\ncom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector\n*L\n65#1:85,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->Companion:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector$Companion;

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->d:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->a:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->NORMAL_SIZE:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->d:Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;

    return-object v0
.end method

.method public static synthetic analysisSizeList$default(Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->analysisSizeList(Z)V

    return-void
.end method


# virtual methods
.method public final analysisSizeList(Z)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->a:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;

    invoke-virtual {v2, v1, p1}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->collectSize(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final collectionTouchList(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/rxgesture/palm/PalmType;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->NORMAL_SIZE:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    return-object p0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->NORMAL_SIZE:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_3

    iget-object p2, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->isPalmPress()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->isPalmPress()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->a:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->getTouchSizeType(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/rxgesture/palm/PalmType;->isPalmPress()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->a:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->logAfterUpOrCancel()V

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    iget-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->a:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->getTouchSizeType(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->b:Lcom/onyx/android/sdk/rxgesture/palm/PalmType;

    :cond_6
    :goto_0
    return-object p1
.end method

.method public final palmSize()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->a:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->getPalmSize()F

    move-result p0

    return p0
.end method

.method public final releaseTouchList()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->releaseTouchList()V

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/palm/PalmGestureDetector;->a:Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/palm/TouchSizeHistogram;->reset()V

    return-void
.end method
