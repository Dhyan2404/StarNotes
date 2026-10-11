.class public final synthetic Lcom/trans/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/AndroidGraphics2D$RenderAction;


# instance fields
.field public final synthetic a:Lcom/trans/android/AndroidGraphics2D;

.field public final synthetic b:Ljava/awt/Color;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/Color;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/trans/android/b;->a:Lcom/trans/android/AndroidGraphics2D;

    iput-object p2, p0, Lcom/trans/android/b;->b:Ljava/awt/Color;

    iput p3, p0, Lcom/trans/android/b;->c:I

    iput p4, p0, Lcom/trans/android/b;->d:I

    iput p5, p0, Lcom/trans/android/b;->e:I

    iput p6, p0, Lcom/trans/android/b;->f:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/graphics/Bitmap;)V
    .locals 7

    iget-object v0, p0, Lcom/trans/android/b;->a:Lcom/trans/android/AndroidGraphics2D;

    iget-object v1, p0, Lcom/trans/android/b;->b:Ljava/awt/Color;

    iget v2, p0, Lcom/trans/android/b;->c:I

    iget v3, p0, Lcom/trans/android/b;->d:I

    iget v4, p0, Lcom/trans/android/b;->e:I

    iget v5, p0, Lcom/trans/android/b;->f:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/trans/android/AndroidGraphics2D;->M(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/Color;IIIILandroid/graphics/Bitmap;)V

    return-void
.end method
