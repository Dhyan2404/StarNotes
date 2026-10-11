.class public Lcom/sunia/HTREnginev2/jjf$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/jjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/jjf;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/jjf;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jjf$f;->e:Lcom/sunia/HTREnginev2/jjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jjf$f;->e:Lcom/sunia/HTREnginev2/jjf;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sunia/HTREnginev2/jjf;->q:Lcom/sunia/HTREnginev2/jjf$f;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jjf$f;->e:Lcom/sunia/HTREnginev2/jjf;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jjf$f;->e:Lcom/sunia/HTREnginev2/jjf;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/jjf;->q:Lcom/sunia/HTREnginev2/jjf$f;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jjf;->drawableStateChanged()V

    return-void
.end method
