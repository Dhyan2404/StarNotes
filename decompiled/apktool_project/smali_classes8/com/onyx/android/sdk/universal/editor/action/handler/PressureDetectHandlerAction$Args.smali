.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\u0008\u0086\u0008\u0018\u0000 #2\u00020\u0001:\u0001#B%\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0001\u00a2\u0006\u0004\u0008!\u0010\"J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0001H\u00c6\u0003J\'\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u0001H\u00c6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\rH\u00d6\u0001J\u0013\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0008\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\t\u001a\u00020\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;",
        "",
        "",
        "component1",
        "",
        "component2",
        "component3",
        "textSelectionPressureMax",
        "detectEraser",
        "quitEvent",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "a",
        "F",
        "getTextSelectionPressureMax",
        "()F",
        "b",
        "Z",
        "getDetectEraser",
        "()Z",
        "setDetectEraser",
        "(Z)V",
        "c",
        "Ljava/lang/Object;",
        "getQuitEvent",
        "()Ljava/lang/Object;",
        "setQuitEvent",
        "(Ljava/lang/Object;)V",
        "<init>",
        "(FZLjava/lang/Object;)V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:F

.field public b:Z

.field public c:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;-><init>(FZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FZLjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "quitEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->a:F

    .line 4
    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(FZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 6
    new-instance p3, Lcom/onyx/android/sdk/universal/editor/events/note/StartDrawingShapeEvent;

    invoke-direct {p3}, Lcom/onyx/android/sdk/universal/editor/events/note/StartDrawingShapeEvent;-><init>()V

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;-><init>(FZLjava/lang/Object;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;FZLjava/lang/Object;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->a:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->copy(FZLjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->a:F

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    return p0
.end method

.method public final component3()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(FZLjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "quitEvent"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;-><init>(FZLjava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->a:F

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDetectEraser()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    return p0
.end method

.method public final getQuitEvent()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTextSelectionPressureMax()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->a:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDetectEraser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    return-void
.end method

.method public final setQuitEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Args(textSelectionPressureMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", detectEraser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", quitEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
