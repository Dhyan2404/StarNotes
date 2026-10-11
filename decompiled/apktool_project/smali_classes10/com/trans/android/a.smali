.class public final synthetic Lcom/trans/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/AndroidGraphics2D$RenderAction;


# instance fields
.field public final synthetic a:Lcom/trans/android/AndroidGraphics2D;

.field public final synthetic b:Ljava/awt/Color;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/Color;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/trans/android/a;->a:Lcom/trans/android/AndroidGraphics2D;

    iput-object p2, p0, Lcom/trans/android/a;->b:Ljava/awt/Color;

    iput p3, p0, Lcom/trans/android/a;->c:I

    iput p4, p0, Lcom/trans/android/a;->d:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/trans/android/a;->a:Lcom/trans/android/AndroidGraphics2D;

    iget-object v1, p0, Lcom/trans/android/a;->b:Ljava/awt/Color;

    iget v2, p0, Lcom/trans/android/a;->c:I

    iget p0, p0, Lcom/trans/android/a;->d:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/trans/android/AndroidGraphics2D;->f0(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/Color;IILandroid/graphics/Bitmap;)V

    return-void
.end method
