.class public final Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/extension/ViewKt;->handleTouchEventByPressTime(Landroid/view/View;[Lcom/onyx/android/sdk/base/data/TimedTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\ncom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,712:1\n13309#2,2:713\n13309#2,2:715\n*S KotlinDebug\n*F\n+ 1 View.kt\ncom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1\n*L\n665#1:713,2\n668#1:715,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "com/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouch",
        "",
        "e",
        "J",
        "getStart",
        "()J",
        "setStart",
        "(J)V",
        "start",
        "",
        "f",
        "I",
        "getTimeout",
        "()I",
        "timeout",
        "sdk-base_release"
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
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\ncom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,712:1\n13309#2,2:713\n13309#2,2:715\n*S KotlinDebug\n*F\n+ 1 View.kt\ncom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1\n*L\n665#1:713,2\n668#1:715,2\n*E\n"
    }
.end annotation


# instance fields
.field public e:J

.field public final f:I

.field public final synthetic g:[Lcom/onyx/android/sdk/base/data/TimedTask;

.field public final synthetic h:Landroid/view/View;


# direct methods
.method public constructor <init>([Lcom/onyx/android/sdk/base/data/TimedTask;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->g:[Lcom/onyx/android/sdk/base/data/TimedTask;

    iput-object p2, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->h:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->f:I

    return-void
.end method


# virtual methods
.method public final getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->e:J

    return-wide v0
.end method

.method public final getTimeout()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->f:I

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->e:J

    sub-long v2, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->g:[Lcom/onyx/android/sdk/base/data/TimedTask;

    array-length p1, p0

    :goto_0
    if-ge p2, p1, :cond_3

    aget-object v0, p0, p2

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/base/data/TimedTask;->handle(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->f:I

    int-to-long p1, p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_2

    :cond_2
    iput-wide v0, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->e:J

    iget-object p0, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->g:[Lcom/onyx/android/sdk/base/data/TimedTask;

    array-length p1, p0

    :goto_1
    if-ge p2, p1, :cond_3

    aget-object v0, p0, p2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TimedTask;->activate()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v4
.end method

.method public final setStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/base/extension/ViewKt$handleTouchEventByPressTime$listener$1;->e:J

    return-void
.end method
