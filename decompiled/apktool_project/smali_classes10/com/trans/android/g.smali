.class public final synthetic Lcom/trans/android/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/AndroidGraphics2D$RenderAction;


# instance fields
.field public final synthetic a:Lcom/trans/android/AndroidGraphics2D;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/trans/android/AndroidGraphics2D;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/trans/android/g;->a:Lcom/trans/android/AndroidGraphics2D;

    iput p2, p0, Lcom/trans/android/g;->b:I

    iput p3, p0, Lcom/trans/android/g;->c:I

    iput p4, p0, Lcom/trans/android/g;->d:I

    iput p5, p0, Lcom/trans/android/g;->e:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lcom/trans/android/g;->a:Lcom/trans/android/AndroidGraphics2D;

    iget v1, p0, Lcom/trans/android/g;->b:I

    iget v2, p0, Lcom/trans/android/g;->c:I

    iget v3, p0, Lcom/trans/android/g;->d:I

    iget v4, p0, Lcom/trans/android/g;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/trans/android/AndroidGraphics2D;->w(Lcom/trans/android/AndroidGraphics2D;IIIILandroid/graphics/Bitmap;)V

    return-void
.end method
