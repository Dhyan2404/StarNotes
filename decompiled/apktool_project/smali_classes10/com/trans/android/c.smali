.class public final synthetic Lcom/trans/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trans/android/AndroidGraphics2D$RenderAction;


# instance fields
.field public final synthetic a:Lcom/trans/android/AndroidGraphics2D;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/trans/android/AndroidGraphics2D;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/trans/android/c;->a:Lcom/trans/android/AndroidGraphics2D;

    iput p2, p0, Lcom/trans/android/c;->b:I

    iput p3, p0, Lcom/trans/android/c;->c:I

    return-void
.end method


# virtual methods
.method public final execute(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/c;->a:Lcom/trans/android/AndroidGraphics2D;

    iget v1, p0, Lcom/trans/android/c;->b:I

    iget p0, p0, Lcom/trans/android/c;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/trans/android/AndroidGraphics2D;->j(Lcom/trans/android/AndroidGraphics2D;IILandroid/graphics/Bitmap;)V

    return-void
.end method
