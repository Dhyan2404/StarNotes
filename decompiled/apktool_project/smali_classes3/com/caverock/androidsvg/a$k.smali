.class public Lcom/caverock/androidsvg/a$k;
.super Lcom/caverock/androidsvg/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public b:F

.field public final synthetic c:Lcom/caverock/androidsvg/a;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/a$k;->c:Lcom/caverock/androidsvg/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/a$j;-><init>(Lcom/caverock/androidsvg/a;Lcom/caverock/androidsvg/a$a;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/caverock/androidsvg/a$k;->b:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/caverock/androidsvg/a;Lcom/caverock/androidsvg/a$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/a$k;-><init>(Lcom/caverock/androidsvg/a;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/caverock/androidsvg/a$k;->b:F

    iget-object v1, p0, Lcom/caverock/androidsvg/a$k;->c:Lcom/caverock/androidsvg/a;

    invoke-static {v1}, Lcom/caverock/androidsvg/a;->c(Lcom/caverock/androidsvg/a;)Lcom/caverock/androidsvg/a$h;

    move-result-object v1

    iget-object v1, v1, Lcom/caverock/androidsvg/a$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/caverock/androidsvg/a$k;->b:F

    return-void
.end method
