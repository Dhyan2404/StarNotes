.class public Lcom/onegravity/rteditor/media/crop/CropImageActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/media/crop/CropImageActivity;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/graphics/Bitmap;

.field public final synthetic f:Lcom/onegravity/rteditor/media/crop/CropImageActivity;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/media/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$b;->f:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    iput-object p2, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$b;->e:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$b;->f:Lcom/onegravity/rteditor/media/crop/CropImageActivity;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/CropImageActivity$b;->e:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/onegravity/rteditor/media/crop/CropImageActivity;->F(Lcom/onegravity/rteditor/media/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method
