.class public final Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$Companion;,
        Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$Factory;,
        Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 \u00102\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003\u0010\u0011\u0012B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ.\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;",
        "Lcom/bumptech/glide/load/model/ModelLoader;",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "Landroid/graphics/Bitmap;",
        "model",
        "",
        "width",
        "height",
        "Lcom/bumptech/glide/load/Options;",
        "options",
        "Lcom/bumptech/glide/load/model/ModelLoader$LoadData;",
        "buildLoadData",
        "",
        "handles",
        "<init>",
        "()V",
        "Companion",
        "Factory",
        "a",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;->Companion:Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$Companion;

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_highlight_01:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr$Companion;->createFillPaint(ZI)Landroid/graphics/Paint;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;->a:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHighlightFillPaint$cp()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;->a:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public buildLoadData(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "model"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "options"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p2, Lcom/bumptech/glide/signature/ObjectKey;

    sget-object p3, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-static {p3, p1, p4, v0, p4}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->toObjectCacheKey$default(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;

    invoke-direct {p3, p1}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;-><init>(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p0
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;->buildLoadData(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p0

    return-object p0
.end method

.method public handles(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "model"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;->handles(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Z

    move-result p0

    return p0
.end method
