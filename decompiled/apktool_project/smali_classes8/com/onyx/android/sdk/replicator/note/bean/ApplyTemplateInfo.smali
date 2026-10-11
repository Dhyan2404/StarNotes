.class public final Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001a\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0006H\u00c6\u0003J?\u0010\u001d\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u00062\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010 \u001a\u00020!H\u00d6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0008\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;",
        "",
        "coverTemplateJsonBean",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "paperTemplateJsonBean",
        "applyAllPaper",
        "",
        "applyCurrentPaper",
        "applyDefaultPaper",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZ)V",
        "getApplyAllPaper",
        "()Z",
        "setApplyAllPaper",
        "(Z)V",
        "getApplyCurrentPaper",
        "setApplyCurrentPaper",
        "getApplyDefaultPaper",
        "setApplyDefaultPaper",
        "getCoverTemplateJsonBean",
        "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "setCoverTemplateJsonBean",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V",
        "getPaperTemplateJsonBean",
        "setPaperTemplateJsonBean",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "sdk-replicator_overseasRelease"
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
.field private applyAllPaper:Z

.field private applyCurrentPaper:Z

.field private applyDefaultPaper:Z

.field private coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZ)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    .line 5
    iput-boolean p3, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    .line 6
    iput-boolean p4, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    .line 7
    iput-boolean p5, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    const/4 p4, 0x1

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p5, v0

    .line 8
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->copy(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZ)Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public final component2()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    return p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    return p0
.end method

.method public final copy(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZ)Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZ)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    iget-boolean p1, p1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getApplyAllPaper()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    return p0
.end method

.method public final getApplyCurrentPaper()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    return p0
.end method

.method public final getApplyDefaultPaper()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    return p0
.end method

.method public final getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public final getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, p0

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final setApplyAllPaper(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    return-void
.end method

.method public final setApplyCurrentPaper(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    return-void
.end method

.method public final setApplyDefaultPaper(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    return-void
.end method

.method public final setCoverTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-void
.end method

.method public final setPaperTemplateJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplyTemplateInfo(coverTemplateJsonBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->coverTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paperTemplateJsonBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->paperTemplateJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", applyAllPaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyAllPaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", applyCurrentPaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyCurrentPaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", applyDefaultPaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->applyDefaultPaper:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
