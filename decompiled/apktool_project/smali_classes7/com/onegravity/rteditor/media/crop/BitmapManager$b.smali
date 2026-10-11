.class public Lcom/onegravity/rteditor/media/crop/BitmapManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/media/crop/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

.field public b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/onegravity/rteditor/media/crop/BitmapManager$State;->ALLOW:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    iput-object v0, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->a:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onegravity/rteditor/media/crop/BitmapManager$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->a:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    sget-object v1, Lcom/onegravity/rteditor/media/crop/BitmapManager$State;->CANCEL:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    if-ne v0, v1, :cond_0

    const-string v0, "Cancel"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onegravity/rteditor/media/crop/BitmapManager$State;->ALLOW:Lcom/onegravity/rteditor/media/crop/BitmapManager$State;

    if-ne v0, v1, :cond_1

    const-string v0, "Allow"

    goto :goto_0

    :cond_1
    const-string v0, "?"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", options = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onegravity/rteditor/media/crop/BitmapManager$b;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
