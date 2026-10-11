.class public Lcom/sunia/HTREnginev2/gvg$a;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/gvg;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;

.field public final synthetic b:Lcom/sunia/HTREnginev2/gvg;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/gvg;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gvg$a;->b:Lcom/sunia/HTREnginev2/gvg;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gvg$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gvg$a;->a:Landroid/graphics/Rect;

    return-object p0
.end method
