.class public final Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u0000 !2\u00020\u0001:\u0001!B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010\u001e\u001a\u00020\u001aH\u0007J\u0008\u0010\u001f\u001a\u00020\u001aH\u0007J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;",
        "Ljava/io/Serializable;",
        "type",
        "",
        "value",
        "",
        "orientation",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;)V",
        "getOrientation",
        "()Lcom/onyx/android/sdk/base/data/Orientation;",
        "setOrientation",
        "(Lcom/onyx/android/sdk/base/data/Orientation;)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getValue",
        "()Ljava/lang/String;",
        "setValue",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "isCoverThumbnail",
        "isPageThumbnail",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_COVER:I = 0x1

.field public static final TYPE_PAGE:I


# instance fields
.field private orientation:Lcom/onyx/android/sdk/base/data/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I

.field private value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->Companion:Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes$Companion;

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

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;-><init>(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orientation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 6
    sget-object p3, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;-><init>(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->copy(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;)Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;)Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "orientation"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;-><init>(ILjava/lang/String;Lcom/onyx/android/sdk/base/data/Orientation;)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isCoverThumbnail()Z
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isPageThumbnail()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailRes(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->orientation:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
