.class public final Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0015\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getInputText",
        "()Ljava/lang/String;",
        "inputText",
        "",
        "b",
        "Z",
        "getUserProvider",
        "()Z",
        "userProvider",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "c",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getInsertPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "insertPoint",
        "d",
        "getEditForAll",
        "editForAll",
        "<init>",
        "(Ljava/lang/String;ZLcom/onyx/android/sdk/base/data/TouchPoint;Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z

.field public final c:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/onyx/android/sdk/base/data/TouchPoint;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "inputText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;->b:Z

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-boolean p4, p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/onyx/android/sdk/base/data/TouchPoint;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;-><init>(Ljava/lang/String;ZLcom/onyx/android/sdk/base/data/TouchPoint;Z)V

    return-void
.end method


# virtual methods
.method public final getEditForAll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;->d:Z

    return p0
.end method

.method public final getInputText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getInsertPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getUserProvider()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/StartTextInputHandlerEvent;->b:Z

    return p0
.end method
