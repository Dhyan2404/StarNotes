.class public final Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicPopupData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0004\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003J1\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u0015R\u0017\u0010\n\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u0015\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;",
        "",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "leftDx",
        "leftDy",
        "rightDx",
        "rightDy",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "I",
        "getLeftDx",
        "()I",
        "b",
        "getLeftDy",
        "c",
        "getRightDx",
        "d",
        "getRightDy",
        "<init>",
        "(IIII)V",
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
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->a:I

    .line 4
    iput p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->b:I

    .line 5
    iput p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->c:I

    .line 6
    iput p4, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->d:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;-><init>(IIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;IIIIILjava/lang/Object;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->a:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->b:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->c:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->d:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->copy(IIII)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->a:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->b:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->c:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->d:I

    return p0
.end method

.method public final copy(IIII)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;-><init>(IIII)V

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
    instance-of v1, p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->a:I

    iget v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->b:I

    iget v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->c:I

    iget v3, p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->d:I

    iget p1, p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->d:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLeftDx()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->a:I

    return p0
.end method

.method public final getLeftDy()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->b:I

    return p0
.end method

.method public final getRightDx()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->c:I

    return p0
.end method

.method public final getRightDy()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->d:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->d:I

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

    const-string v1, "DynamicPopupData(leftDx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leftDy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightDx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightDy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$DynamicPopupData;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
