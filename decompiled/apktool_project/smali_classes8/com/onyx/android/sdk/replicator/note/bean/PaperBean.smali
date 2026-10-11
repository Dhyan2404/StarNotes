.class public final Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;",
        "",
        "paperJsonBean",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "paperRectF",
        "Landroid/graphics/RectF;",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Landroid/graphics/RectF;)V",
        "getPaperJsonBean",
        "()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "setPaperJsonBean",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V",
        "getPaperRectF",
        "()Landroid/graphics/RectF;",
        "setPaperRectF",
        "(Landroid/graphics/RectF;)V",
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
.field private paperJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private paperRectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paperRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->paperJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->paperRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 5
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public final getPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->paperJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-object p0
.end method

.method public final getPaperRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->paperRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setPaperJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->paperJsonBean:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-void
.end method

.method public final setPaperRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;->paperRectF:Landroid/graphics/RectF;

    return-void
.end method
