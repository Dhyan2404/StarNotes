.class public final Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0007R\u001b\u0010\u000e\u001a\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;",
        "",
        "",
        "selectionType",
        "",
        "updateSelectionTrackPaintColor",
        "SELECTION_TYPE_LASSO",
        "I",
        "SELECTION_TYPE_ERASE",
        "Landroid/graphics/Paint;",
        "a",
        "Lkotlin/Lazy;",
        "getSelectionTrackPaint",
        "()Landroid/graphics/Paint;",
        "selectionTrackPaint",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SELECTION_TYPE_ERASE:I = 0x1

.field public static final SELECTION_TYPE_LASSO:I

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender$selectionTrackPaint$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender$selectionTrackPaint$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;->a:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSelectionTrackPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public final updateSelectionTrackPaintColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionTrackRender;->getSelectionTrackPaint()Landroid/graphics/Paint;

    move-result-object p0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemePrimaryColor()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemeBackgroundColor()I

    move-result p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->getThemePrimaryColor()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
