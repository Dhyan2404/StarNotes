.class public Lcom/miui/penengine/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "h"


# instance fields
.field public a:I

.field public b:Lcom/miui/penengine/e/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/penengine/e/h;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/penengine/e/h;->b:Lcom/miui/penengine/e/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/miui/penengine/e/h;->a:I

    return p0
.end method

.method public a(Lcom/miui/penengine/e/d;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/miui/penengine/e/h;->b:Lcom/miui/penengine/e/d;

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/penengine/e/h;->a:I

    iget-object p0, p0, Lcom/miui/penengine/e/h;->b:Lcom/miui/penengine/e/d;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/penengine/e/d;->a(F)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
