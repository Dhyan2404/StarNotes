.class public final Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/data/BoxCellInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;",
        "",
        "rowIndex",
        "",
        "columnIndex",
        "(II)V",
        "getColumnIndex",
        "()I",
        "getRowIndex",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY_KEY:Ljava/lang/String; = "0-0"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final columnIndex:I

.field private final rowIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->Companion:Lcom/onyx/android/sdk/geometry/data/BoxCellInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->rowIndex:I

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->columnIndex:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;-><init>(II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;IIILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->rowIndex:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->columnIndex:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->copy(II)Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->rowIndex:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->columnIndex:I

    return p0
.end method

.method public final copy(II)Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;-><init>(II)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->rowIndex:I

    iget v3, p1, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->rowIndex:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->columnIndex:I

    iget p1, p1, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->columnIndex:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getColumnIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->columnIndex:I

    return p0
.end method

.method public final getRowIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->rowIndex:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->rowIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->columnIndex:I

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

    const-string v1, "BoxCellInfo(rowIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->rowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", columnIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;->columnIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
