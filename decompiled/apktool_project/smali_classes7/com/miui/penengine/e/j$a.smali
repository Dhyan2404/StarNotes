.class public Lcom/miui/penengine/e/j$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/penengine/e/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/miui/penengine/e/j;


# direct methods
.method public constructor <init>(Lcom/miui/penengine/e/j;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    invoke-static {v0}, Lcom/miui/penengine/e/j;->b(Lcom/miui/penengine/e/j;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .locals 6

    iget-object v0, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    invoke-static {v0}, Lcom/miui/penengine/e/j;->b(Lcom/miui/penengine/e/j;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stylus_pinch_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    iget-object v0, v0, Lcom/miui/penengine/e/j;->a:Landroid/content/ContentResolver;

    const-string v2, "stylus_double_click_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    iget-object v0, v0, Lcom/miui/penengine/e/j;->a:Landroid/content/ContentResolver;

    const-string v4, "stylus_hover_enable"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    iget-object v0, v0, Lcom/miui/penengine/e/j;->a:Landroid/content/ContentResolver;

    const-string v5, "stylus_brush_preview_enable"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/penengine/e/j$a;->onChange(ZLandroid/net/Uri;)V

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/penengine/e/j$a;->onChange(ZLandroid/net/Uri;)V

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/miui/penengine/e/j$a;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "stylus_double_click_status"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    invoke-static {p2}, Lcom/miui/penengine/e/j;->b(Lcom/miui/penengine/e/j;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p2, Lcom/miui/penengine/e/j;->e:I

    sget-object p1, Lcom/miui/penengine/e/j;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Update stylus double click status, status = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    iget p0, p0, Lcom/miui/penengine/e/j;->e:I

    goto :goto_0

    :cond_0
    const-string p1, "stylus_pinch_status"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    invoke-static {p2}, Lcom/miui/penengine/e/j;->b(Lcom/miui/penengine/e/j;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p2, Lcom/miui/penengine/e/j;->d:I

    sget-object p1, Lcom/miui/penengine/e/j;->g:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Update stylus pinch status, status = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    iget p0, p0, Lcom/miui/penengine/e/j;->d:I

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/penengine/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string p1, "stylus_hover_enable"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "stylus_brush_preview_enable"

    if-nez v0, :cond_3

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/miui/penengine/e/j;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Uri does not match any settings key"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    invoke-static {p2}, Lcom/miui/penengine/e/j;->b(Lcom/miui/penengine/e/j;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    iget-object p2, p2, Lcom/miui/penengine/e/j;->a:Landroid/content/ContentResolver;

    invoke-static {p2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    sget-object v0, Lcom/miui/penengine/e/j;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update stylus brush or hover status, hover = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", brush preview = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/penengine/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/penengine/e/j$a;->a:Lcom/miui/penengine/e/j;

    iget-object p0, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, v1}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;->onBrushPreviewChanged(Z)V

    :cond_5
    :goto_3
    return-void
.end method
