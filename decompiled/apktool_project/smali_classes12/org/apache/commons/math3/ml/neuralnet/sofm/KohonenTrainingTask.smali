.class public Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lorg/apache/commons/math3/ml/neuralnet/Network;

.field public final f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "[D>;"
        }
    .end annotation
.end field

.field public final g:Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ml/neuralnet/Network;Ljava/util/Iterator;Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ml/neuralnet/Network;",
            "Ljava/util/Iterator<",
            "[D>;",
            "Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->e:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->f:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->g:Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->g:Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->e:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenTrainingTask;->f:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/sofm/KohonenUpdateAction;->update(Lorg/apache/commons/math3/ml/neuralnet/Network;[D)V

    goto :goto_0

    :cond_0
    return-void
.end method
