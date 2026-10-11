.class public Lcom/blankj/utilcode/util/SpanUtils$h;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public e:F

.field public f:F

.field public g:F

.field public h:I


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 3
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$h;->e:F

    .line 4
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$h;->f:F

    .line 5
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils$h;->g:F

    .line 6
    iput p4, p0, Lcom/blankj/utilcode/util/SpanUtils$h;->h:I

    return-void
.end method

.method public synthetic constructor <init>(FFFILcom/blankj/utilcode/util/SpanUtils$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/SpanUtils$h;-><init>(FFFI)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$h;->e:F

    iget v1, p0, Lcom/blankj/utilcode/util/SpanUtils$h;->f:F

    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils$h;->g:F

    iget p0, p0, Lcom/blankj/utilcode/util/SpanUtils$h;->h:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method
