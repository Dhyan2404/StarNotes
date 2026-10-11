.class public final Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/onegravity/rteditor/RTEditText;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0012\u0010\u0005\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\tJ\u0008\u0010\u000b\u001a\u00020\u0003H\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0003H\u0002R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;",
        "Landroid/util/LruCache;",
        "",
        "Lcom/onegravity/rteditor/RTEditText;",
        "key",
        "create",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "getRenderView",
        "",
        "clear",
        "c",
        "Lcom/onegravity/rteditor/RTManager;",
        "b",
        "renderView",
        "a",
        "Lcom/onegravity/rteditor/RTManager;",
        "rtManager",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Lcom/onegravity/rteditor/RTManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$integer;->text_render_cache_size:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onegravity/rteditor/RTEditText;)V
    .locals 3

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeFaceByCustomFontPath(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getAlignTypeCompat(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->toTextAlignment(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq v1, p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/onegravity/rteditor/RTEditText;->setRichTextEditing(ZLjava/lang/String;)V

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lcom/onegravity/rteditor/RTManager;
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->a:Lcom/onegravity/rteditor/RTManager;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/onegravity/rteditor/api/RTApi;

    new-instance v1, Lcom/onegravity/rteditor/api/DefaultProxyImpl;

    invoke-direct {v1}, Lcom/onegravity/rteditor/api/DefaultProxyImpl;-><init>()V

    new-instance v2, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;

    invoke-direct {v2, p0}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/onegravity/rteditor/api/RTApi;-><init>(Landroid/content/Context;Lcom/onegravity/rteditor/api/RTProxy;Lcom/onegravity/rteditor/api/RTMediaFactory;)V

    new-instance p0, Lcom/onegravity/rteditor/RTManager;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/onegravity/rteditor/RTManager;-><init>(Lcom/onegravity/rteditor/api/RTApi;Landroid/os/Bundle;)V

    sput-object p0, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->a:Lcom/onegravity/rteditor/RTManager;

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->a:Lcom/onegravity/rteditor/RTManager;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c()Lcom/onegravity/rteditor/RTEditText;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->initNativeEditor(Landroid/content/Context;)Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->b()Lcom/onegravity/rteditor/RTManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onegravity/rteditor/RTManager;->registerEditor(Lcom/onegravity/rteditor/RTEditText;Z)V

    return-object v0
.end method

.method public final clear()V
    .locals 3

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->a:Lcom/onegravity/rteditor/RTManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/RTManager;->onDestroy(Z)V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->a:Lcom/onegravity/rteditor/RTManager;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;

    const-string v2, "clear text render cache!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public create(Ljava/lang/String;)Lcom/onegravity/rteditor/RTEditText;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->c()Lcom/onegravity/rteditor/RTEditText;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->create(Ljava/lang/String;)Lcom/onegravity/rteditor/RTEditText;

    move-result-object p0

    return-object p0
.end method

.method public final getRenderView(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onegravity/rteditor/RTEditText;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/RTEditText;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onegravity/rteditor/RTEditText;)V

    return-object v0
.end method
