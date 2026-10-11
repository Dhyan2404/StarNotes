.class public final Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0018B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;",
        "",
        "data",
        "Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;",
        "message",
        "",
        "result_code",
        "",
        "(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;Ljava/lang/String;I)V",
        "getData",
        "()Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;",
        "getMessage",
        "()Ljava/lang/String;",
        "getResult_code",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Data",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final result_code:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->message:Ljava/lang/String;

    iput p3, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->result_code:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->result_code:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->copy(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;Ljava/lang/String;I)Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->result_code:I

    return p0
.end method

.method public final copy(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;Ljava/lang/String;I)Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;-><init>(Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;Ljava/lang/String;I)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    iget-object v3, p1, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->result_code:I

    iget p1, p1, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->result_code:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getData()Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getResult_code()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->result_code:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->result_code:I

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

    const-string v1, "PriorityClusterResultBean(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->data:Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean$Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/data/cluster/bean/PriorityClusterResultBean;->result_code:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
