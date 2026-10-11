.class public final Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003J#\u0010\t\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u000b\u001a\u00020\nH\u00d6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u001d\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0008\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;",
        "",
        "",
        "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;",
        "component1",
        "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
        "component2",
        "lines",
        "blockBox",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Ljava/util/List;",
        "getLines",
        "()Ljava/util/List;",
        "b",
        "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
        "getBlockBox",
        "()Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
        "<init>",
        "(Ljava/util/List;Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;",
            ">;",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
            ")V"
        }
    .end annotation

    const-string v0, "lines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockBox"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;Ljava/util/List;Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;ILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->a:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->copy(Ljava/util/List;Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;)Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->a:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;)Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;",
            ">;",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
            ")",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "lines"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "blockBox"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    iget-object p1, p1, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBlockBox()Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    return-object p0
.end method

.method public final getLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/HWRTextLineBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->a:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

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

    const-string v1, "HWRTextBlockBean(lines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blockBox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/HWRTextBlockBean;->b:Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
