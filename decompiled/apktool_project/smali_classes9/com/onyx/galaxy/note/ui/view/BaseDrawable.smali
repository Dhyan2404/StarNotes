.class public abstract Lcom/onyx/galaxy/note/ui/view/BaseDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDrawable.kt\ncom/onyx/galaxy/note/ui/view/BaseDrawable\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,25:1\n344#2,3:26\n*S KotlinDebug\n*F\n+ 1 BaseDrawable.kt\ncom/onyx/galaxy/note/ui/view/BaseDrawable\n*L\n23#1:26,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nR\u001a\u0010\u0012\u001a\u00020\r8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/BaseDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "",
        "getOpacity",
        "alpha",
        "",
        "setAlpha",
        "Landroid/graphics/ColorFilter;",
        "colorFilter",
        "setColorFilter",
        "Landroid/graphics/RectF;",
        "rectF",
        "setBound",
        "Landroid/graphics/Paint;",
        "a",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDrawable.kt\ncom/onyx/galaxy/note/ui/view/BaseDrawable\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,25:1\n344#2,3:26\n*S KotlinDebug\n*F\n+ 1 BaseDrawable.kt\ncom/onyx/galaxy/note/ui/view/BaseDrawable\n*L\n23#1:26,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/view/BaseDrawable;->a:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/BaseDrawable;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setBound(Landroid/graphics/RectF;)Lcom/onyx/galaxy/note/ui/view/BaseDrawable;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
