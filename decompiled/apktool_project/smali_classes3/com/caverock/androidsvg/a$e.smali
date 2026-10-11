.class public Lcom/caverock/androidsvg/a$e;
.super Lcom/caverock/androidsvg/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public e:Landroid/graphics/Path;

.field public final synthetic f:Lcom/caverock/androidsvg/a;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/a;Landroid/graphics/Path;FF)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/a$f;-><init>(Lcom/caverock/androidsvg/a;FF)V

    iput-object p2, p0, Lcom/caverock/androidsvg/a$e;->e:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-static {v0}, Lcom/caverock/androidsvg/a;->b(Lcom/caverock/androidsvg/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-static {v0}, Lcom/caverock/androidsvg/a;->c(Lcom/caverock/androidsvg/a;)Lcom/caverock/androidsvg/a$h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/a$h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-static {v0}, Lcom/caverock/androidsvg/a;->d(Lcom/caverock/androidsvg/a;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v3, p0, Lcom/caverock/androidsvg/a$e;->e:Landroid/graphics/Path;

    iget v4, p0, Lcom/caverock/androidsvg/a$f;->b:F

    iget v5, p0, Lcom/caverock/androidsvg/a$f;->c:F

    iget-object v0, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-static {v0}, Lcom/caverock/androidsvg/a;->c(Lcom/caverock/androidsvg/a;)Lcom/caverock/androidsvg/a$h;

    move-result-object v0

    iget-object v6, v0, Lcom/caverock/androidsvg/a$h;->d:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-static {v0}, Lcom/caverock/androidsvg/a;->c(Lcom/caverock/androidsvg/a;)Lcom/caverock/androidsvg/a$h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/a$h;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-static {v0}, Lcom/caverock/androidsvg/a;->d(Lcom/caverock/androidsvg/a;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v3, p0, Lcom/caverock/androidsvg/a$e;->e:Landroid/graphics/Path;

    iget v4, p0, Lcom/caverock/androidsvg/a$f;->b:F

    iget v5, p0, Lcom/caverock/androidsvg/a$f;->c:F

    iget-object v0, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-static {v0}, Lcom/caverock/androidsvg/a;->c(Lcom/caverock/androidsvg/a;)Lcom/caverock/androidsvg/a$h;

    move-result-object v0

    iget-object v6, v0, Lcom/caverock/androidsvg/a$h;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Lcom/caverock/androidsvg/a$f;->b:F

    iget-object v1, p0, Lcom/caverock/androidsvg/a$e;->f:Lcom/caverock/androidsvg/a;

    invoke-static {v1}, Lcom/caverock/androidsvg/a;->c(Lcom/caverock/androidsvg/a;)Lcom/caverock/androidsvg/a$h;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/a$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/caverock/androidsvg/a$f;->b:F

    return-void
.end method
