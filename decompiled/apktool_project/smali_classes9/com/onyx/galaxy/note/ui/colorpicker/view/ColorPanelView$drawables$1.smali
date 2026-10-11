.class public final Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "com/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1",
        "",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;",
        "a",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;",
        "getPanelDrawable",
        "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;",
        "panelDrawable",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;",
        "b",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;",
        "getHueDrawable",
        "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;",
        "hueDrawable",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;",
        "c",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;",
        "getAlphaDrawable",
        "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;",
        "alphaDrawable",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;",
        "d",
        "Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;",
        "getAlphaMarkDrawable",
        "()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;",
        "alphaMarkDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "screenPickerDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getScreenPickerDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setScreenPickerDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
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
.field public final a:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public screenPickerDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;

    invoke-static {p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;->access$getHsv$p(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)[F

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;-><init>([F)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->a:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;

    new-instance v0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->b:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;

    new-instance v0, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;

    invoke-static {p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;->access$getHsv$p(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)[F

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;-><init>([F)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->c:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;

    new-instance p1, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->d:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;

    return-void
.end method


# virtual methods
.method public final getAlphaDrawable()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->c:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaDrawable;

    return-object p0
.end method

.method public final getAlphaMarkDrawable()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->d:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvAlphaMarkDrawable;

    return-object p0
.end method

.method public final getHueDrawable()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->b:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvHueDrawable;

    return-object p0
.end method

.method public final getPanelDrawable()Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->a:Lcom/onyx/galaxy/note/ui/colorpicker/drawable/HsvPanelDrawable;

    return-object p0
.end method

.method public final getScreenPickerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->screenPickerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "screenPickerDrawable"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setScreenPickerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView$drawables$1;->screenPickerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
