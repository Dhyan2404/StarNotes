.class public final Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;
.super Lcom/jakewharton/rxbinding4/widget/SeekBarChangeEvent;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003R\u001a\u0010\u0008\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\n\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;",
        "Lcom/jakewharton/rxbinding4/widget/SeekBarChangeEvent;",
        "Landroid/widget/SeekBar;",
        "component1",
        "",
        "component2",
        "",
        "component3",
        "view",
        "progress",
        "fromUser",
        "copy",
        "",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "a",
        "Landroid/widget/SeekBar;",
        "getView",
        "()Landroid/widget/SeekBar;",
        "b",
        "I",
        "getProgress",
        "()I",
        "c",
        "Z",
        "getFromUser",
        "()Z",
        "<init>",
        "(Landroid/widget/SeekBar;IZ)V",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/SeekBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding4/widget/SeekBarChangeEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->a:Landroid/widget/SeekBar;

    iput p2, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->b:I

    iput-boolean p3, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->c:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;Landroid/widget/SeekBar;IZILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->b:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->c:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->copy(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/widget/SeekBar;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object p0

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->b:I

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->c:Z

    return p0
.end method

.method public final copy(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;

    invoke-direct {p0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;-><init>(Landroid/widget/SeekBar;IZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->b:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->c:Z

    iget-boolean p1, p1, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->c:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getFromUser()Z
    .locals 0

    iget-boolean p0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->c:Z

    return p0
.end method

.method public final getProgress()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->b:I

    return p0
.end method

.method public getView()Landroid/widget/SeekBar;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->a:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->c:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :cond_1
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBarProgressChangeEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/jakewharton/rxbinding4/widget/SeekBarProgressChangeEvent;->c:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
