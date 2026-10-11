.class public final Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u00a2\u0006\u0004\u00083\u00104J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0004H\u00c6\u0003Jc\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\r\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\u0018\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\r\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\u000e\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u0017\u0010\u000f\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010\"\u001a\u0004\u0008&\u0010$R\u0017\u0010\u0010\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\"\u001a\u0004\u0008(\u0010$R\u0017\u0010\u0011\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010\"\u001a\u0004\u0008*\u0010$R\u0017\u0010\u0012\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010\"\u001a\u0004\u0008,\u0010$R\u0017\u0010\u0013\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010\"\u001a\u0004\u0008.\u0010$R\u0017\u0010\u0014\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u0010\"\u001a\u0004\u00080\u0010$R\u0017\u0010\u0015\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u00081\u0010\"\u001a\u0004\u00082\u0010$\u00a8\u00065"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;",
        "",
        "Landroid/view/View;",
        "component1",
        "",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "view",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "b",
        "I",
        "getLeft",
        "()I",
        "c",
        "getTop",
        "d",
        "getRight",
        "e",
        "getBottom",
        "f",
        "getOldLeft",
        "g",
        "getOldTop",
        "h",
        "getOldRight",
        "i",
        "getOldBottom",
        "<init>",
        "(Landroid/view/View;IIIIIIII)V",
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
.field public final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->a:Landroid/view/View;

    iput p2, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->b:I

    iput p3, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->c:I

    iput p4, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->d:I

    iput p5, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->e:I

    iput p6, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->f:I

    iput p7, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->g:I

    iput p8, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->h:I

    iput p9, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->i:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;Landroid/view/View;IIIIIIIIILjava/lang/Object;)Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->a:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->b:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->c:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->d:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->e:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->f:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->g:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->h:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->i:I

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move-object p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->copy(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->a:Landroid/view/View;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->b:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->c:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->d:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->e:I

    return p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->f:I

    return p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->g:I

    return p0
.end method

.method public final component8()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->h:I

    return p0
.end method

.method public final component9()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->i:I

    return p0
.end method

.method public final copy(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;-><init>(Landroid/view/View;IIIIIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->a:Landroid/view/View;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->b:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->c:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->d:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->e:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->f:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->g:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->h:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->h:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->i:I

    iget p1, p1, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->i:I

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

.method public final getBottom()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->e:I

    return p0
.end method

.method public final getLeft()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->b:I

    return p0
.end method

.method public final getOldBottom()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->i:I

    return p0
.end method

.method public final getOldLeft()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->f:I

    return p0
.end method

.method public final getOldRight()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->h:I

    return p0
.end method

.method public final getOldTop()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->g:I

    return p0
.end method

.method public final getRight()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->d:I

    return p0
.end method

.method public final getTop()I
    .locals 0

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->c:I

    return p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->a:Landroid/view/View;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->i:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewLayoutChangeEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/jakewharton/rxbinding4/view/ViewLayoutChangeEvent;->i:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
