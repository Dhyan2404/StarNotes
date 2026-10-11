.class public final synthetic Lcom/sunia/HTREnginev2/cae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroidx/work/impl/constraints/trackers/ConstraintTracker;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cae;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cae;->f:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cae;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cae;->f:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    invoke-static {v0, p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->a(Ljava/util/List;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void
.end method
