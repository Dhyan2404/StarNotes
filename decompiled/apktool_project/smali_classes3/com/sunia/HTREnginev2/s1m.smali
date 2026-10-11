.class public final synthetic Lcom/sunia/HTREnginev2/s1m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroidx/work/impl/model/WorkGenerationalId;

.field public final synthetic g:Landroidx/work/Configuration;

.field public final synthetic h:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/s1m;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/s1m;->f:Landroidx/work/impl/model/WorkGenerationalId;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/s1m;->g:Landroidx/work/Configuration;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/s1m;->h:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/s1m;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/s1m;->f:Landroidx/work/impl/model/WorkGenerationalId;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/s1m;->g:Landroidx/work/Configuration;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/s1m;->h:Landroidx/work/impl/WorkDatabase;

    invoke-static {v0, v1, v2, p0}, Landroidx/work/impl/Schedulers;->b(Ljava/util/List;Landroidx/work/impl/model/WorkGenerationalId;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method
