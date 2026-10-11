.class public final synthetic Lcom/sunia/HTREnginev2/b4l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/apache/poi/picture/PicturesManager;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/picture/PicturesManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b4l;->e:Lorg/apache/poi/picture/PicturesManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/b4l;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b4l;->e:Lorg/apache/poi/picture/PicturesManager;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b4l;->f:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lorg/apache/poi/picture/PicturesManager;->f(Lorg/apache/poi/picture/PicturesManager;Ljava/lang/Runnable;)V

    return-void
.end method
