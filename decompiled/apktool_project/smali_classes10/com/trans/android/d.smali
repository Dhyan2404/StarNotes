.class public final synthetic Lcom/trans/android/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/AndroidGraphics2D$RenderAction;


# instance fields
.field public final synthetic a:Lcom/trans/android/AndroidGraphics2D;

.field public final synthetic b:Ljava/awt/geom/AffineTransform;


# direct methods
.method public synthetic constructor <init>(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/geom/AffineTransform;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/trans/android/d;->a:Lcom/trans/android/AndroidGraphics2D;

    iput-object p2, p0, Lcom/trans/android/d;->b:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/d;->a:Lcom/trans/android/AndroidGraphics2D;

    iget-object p0, p0, Lcom/trans/android/d;->b:Ljava/awt/geom/AffineTransform;

    invoke-static {v0, p0, p1}, Lcom/trans/android/AndroidGraphics2D;->e0(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/geom/AffineTransform;Landroid/graphics/Bitmap;)V

    return-void
.end method
