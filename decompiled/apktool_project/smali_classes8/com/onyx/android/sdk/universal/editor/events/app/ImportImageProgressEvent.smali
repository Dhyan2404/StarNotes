.class public final Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008;\u0010<J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003JW\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0001J\t\u0010\u0017\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010%\"\u0004\u0008*\u0010\'R\"\u0010\u0011\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010#\u001a\u0004\u0008,\u0010%\"\u0004\u0008-\u0010\'R\"\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010#\u001a\u0004\u0008/\u0010%\"\u0004\u00080\u0010\'R$\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001d\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\u00a8\u0006="
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;",
        "component1",
        "",
        "component2",
        "component3",
        "component4",
        "component5",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "component6",
        "",
        "Landroid/net/Uri;",
        "component7",
        "importImageState",
        "progress",
        "currentIndex",
        "totalImportCount",
        "importSuccessSize",
        "importSelectedContext",
        "uriList",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;",
        "getImportImageState",
        "()Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;",
        "setImportImageState",
        "(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V",
        "b",
        "I",
        "getProgress",
        "()I",
        "setProgress",
        "(I)V",
        "c",
        "getCurrentIndex",
        "setCurrentIndex",
        "d",
        "getTotalImportCount",
        "setTotalImportCount",
        "e",
        "getImportSuccessSize",
        "setImportSuccessSize",
        "f",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "getImportSelectedContext",
        "()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "setImportSelectedContext",
        "(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V",
        "g",
        "Ljava/util/List;",
        "getUriList",
        "()Ljava/util/List;",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;",
            "IIII",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "importImageState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriList"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    .line 4
    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    .line 5
    iput p4, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    .line 6
    iput p5, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    .line 7
    iput-object p6, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    .line 8
    iput-object p7, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->g:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v8, p7

    .line 9
    invoke-direct/range {v1 .. v8}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->g:Ljava/util/List;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->copy(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    return p0
.end method

.method public final component6()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    return-object p0
.end method

.method public final component7()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->g:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;",
            "IIII",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "importImageState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uriList"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;IIIILcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    iget v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->g:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCurrentIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    return p0
.end method

.method public final getImportImageState()Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    return-object p0
.end method

.method public final getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    return-object p0
.end method

.method public final getImportSuccessSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    return p0
.end method

.method public final getProgress()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    return p0
.end method

.method public final getTotalImportCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    return p0
.end method

.method public final getUriList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->g:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setCurrentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    return-void
.end method

.method public final setImportImageState(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    return-void
.end method

.method public final setImportSelectedContext(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    return-void
.end method

.method public final setImportSuccessSize(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    return-void
.end method

.method public final setTotalImportCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImportImageProgressEvent(importImageState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->a:Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalImportCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importSuccessSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importSelectedContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->f:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uriList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageProgressEvent;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
