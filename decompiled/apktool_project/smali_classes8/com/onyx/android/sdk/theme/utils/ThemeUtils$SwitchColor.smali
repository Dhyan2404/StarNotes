.class public interface abstract Lcom/onyx/android/sdk/theme/utils/ThemeUtils$SwitchColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/theme/utils/ThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwitchColor"
.end annotation


# virtual methods
.method public abstract getColorResNameById(I)Ljava/lang/String;
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
.end method

.method public abstract getDrawableNameById(I)Ljava/lang/String;
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract reloadResource(Landroid/content/Context;)V
.end method

.method public abstract replaceColor(Landroid/content/Context;I)I
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public abstract replaceColorById(Landroid/content/Context;II)I
    .param p3    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public abstract replaceDrawableRes(II)I
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end method
