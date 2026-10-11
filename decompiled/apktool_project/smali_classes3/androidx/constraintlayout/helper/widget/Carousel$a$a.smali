.class public Landroidx/constraintlayout/helper/widget/Carousel$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/helper/widget/Carousel$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:F

.field public final synthetic f:Landroidx/constraintlayout/helper/widget/Carousel$a;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/helper/widget/Carousel$a;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$v"
        }
    .end annotation

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel$a$a;->f:Landroidx/constraintlayout/helper/widget/Carousel$a;

    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel$a$a;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel$a$a;->f:Landroidx/constraintlayout/helper/widget/Carousel$a;

    iget-object v0, v0, Landroidx/constraintlayout/helper/widget/Carousel$a;->e:Landroidx/constraintlayout/helper/widget/Carousel;

    invoke-static {v0}, Landroidx/constraintlayout/helper/widget/Carousel;->h(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel$a$a;->e:F

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    return-void
.end method
