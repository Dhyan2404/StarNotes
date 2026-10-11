.class public final synthetic Lcom/sunia/HTREnginev2/sao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/work/impl/WorkDatabase;

.field public final synthetic f:Landroidx/work/impl/model/WorkSpec;

.field public final synthetic g:Landroidx/work/impl/model/WorkSpec;

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/util/Set;

.field public final synthetic k:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sao;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sao;->f:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/sao;->g:Landroidx/work/impl/model/WorkSpec;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/sao;->h:Ljava/util/List;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/sao;->i:Ljava/lang/String;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/sao;->j:Ljava/util/Set;

    iput-boolean p7, p0, Lcom/sunia/HTREnginev2/sao;->k:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sao;->e:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/sao;->f:Landroidx/work/impl/model/WorkSpec;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/sao;->g:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/sao;->h:Ljava/util/List;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/sao;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/sao;->j:Ljava/util/Set;

    iget-boolean v6, p0, Lcom/sunia/HTREnginev2/sao;->k:Z

    invoke-static/range {v0 .. v6}, Landroidx/work/impl/WorkerUpdater;->c(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method
