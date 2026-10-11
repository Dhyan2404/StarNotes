.class public final Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\u0006\u0010\u0011\u001a\u00020\u000b\u00a2\u0006\u0004\u0008,\u0010-J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\n\u001a\u00020\tH\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u000bH\u00c6\u0003JF\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000bH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010\u0015\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0006R\u0017\u0010\u000f\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u0017\u0010\u0010\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0017\u0010\u0011\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;",
        "",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "component1",
        "",
        "component2",
        "()Ljava/lang/Integer;",
        "Landroid/graphics/RectF;",
        "component3",
        "Lcom/onyx/android/sdk/data/InsertPageFrom;",
        "component4",
        "",
        "component5",
        "templateJsonBean",
        "pageIndex",
        "pageRect",
        "insertPageFrom",
        "autoApplyPageMargin",
        "copy",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;",
        "",
        "toString",
        "hashCode",
        "other",
        "equals",
        "a",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "getTemplateJsonBean",
        "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "b",
        "Ljava/lang/Integer;",
        "getPageIndex",
        "c",
        "Landroid/graphics/RectF;",
        "getPageRect",
        "()Landroid/graphics/RectF;",
        "d",
        "Lcom/onyx/android/sdk/data/InsertPageFrom;",
        "getInsertPageFrom",
        "()Lcom/onyx/android/sdk/data/InsertPageFrom;",
        "e",
        "Z",
        "getAutoApplyPageMargin",
        "()Z",
        "<init>",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)V",
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
.field public final a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/data/InsertPageFrom;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/data/InsertPageFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insertPageFrom"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->c:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->d:Lcom/onyx/android/sdk/data/InsertPageFrom;

    iput-boolean p5, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;ZILjava/lang/Object;)Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->b:Ljava/lang/Integer;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->c:Landroid/graphics/RectF;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->d:Lcom/onyx/android/sdk/data/InsertPageFrom;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->e:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->copy(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component3()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final component4()Lcom/onyx/android/sdk/data/InsertPageFrom;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->d:Lcom/onyx/android/sdk/data/InsertPageFrom;

    return-object p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->e:Z

    return p0
.end method

.method public final copy(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/data/InsertPageFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pageRect"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insertPageFrom"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)V

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
    instance-of v1, p1, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->b:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->c:Landroid/graphics/RectF;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->c:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->d:Lcom/onyx/android/sdk/data/InsertPageFrom;

    iget-object v3, p1, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->d:Lcom/onyx/android/sdk/data/InsertPageFrom;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->e:Z

    iget-boolean p1, p1, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAutoApplyPageMargin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->e:Z

    return p0
.end method

.method public final getInsertPageFrom()Lcom/onyx/android/sdk/data/InsertPageFrom;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->d:Lcom/onyx/android/sdk/data/InsertPageFrom;

    return-object p0
.end method

.method public final getPageIndex()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPageRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->b:Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->d:Lcom/onyx/android/sdk/data/InsertPageFrom;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->e:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    :cond_2
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsertPageWithTemplateEvent(templateJsonBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->a:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", insertPageFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->d:Lcom/onyx/android/sdk/data/InsertPageFrom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoApplyPageMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;->e:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
