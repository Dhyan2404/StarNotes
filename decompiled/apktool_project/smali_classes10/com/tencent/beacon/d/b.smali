.class public Lcom/tencent/beacon/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/beacon/a/a/d;


# static fields
.field private static volatile a:Lcom/tencent/beacon/d/b;

.field private static final b:Ljava/util/Random;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Z

.field protected F:Z

.field protected G:Z

.field protected H:I

.field protected I:Z

.field protected J:Z

.field protected K:Z

.field protected L:Z

.field protected M:I

.field private N:Z

.field protected O:I

.field private P:I

.field private Q:I

.field private R:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Ljava/lang/Boolean;

.field protected j:Z

.field protected k:Lcom/tencent/beacon/d/c;

.field protected l:Z

.field protected m:Z

.field protected n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:F

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:I

.field protected x:J

.field protected y:I

.field protected z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/beacon/d/b;->b:Ljava/util/Random;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/d/b;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    iput v0, p0, Lcom/tencent/beacon/d/b;->d:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/tencent/beacon/d/b;->e:I

    iput v0, p0, Lcom/tencent/beacon/d/b;->f:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/tencent/beacon/d/b;->g:I

    const v0, 0xea60

    iput v0, p0, Lcom/tencent/beacon/d/b;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->j:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->l:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/beacon/d/b;->n:Ljava/util/Set;

    iput-object v1, p0, Lcom/tencent/beacon/d/b;->o:Ljava/util/Map;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/beacon/d/b;->p:Z

    iput-boolean v1, p0, Lcom/tencent/beacon/d/b;->q:Z

    iput-boolean v1, p0, Lcom/tencent/beacon/d/b;->r:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/tencent/beacon/d/b;->s:F

    iput-boolean v1, p0, Lcom/tencent/beacon/d/b;->t:Z

    iput-boolean v1, p0, Lcom/tencent/beacon/d/b;->u:Z

    iput-boolean v1, p0, Lcom/tencent/beacon/d/b;->v:Z

    iput v0, p0, Lcom/tencent/beacon/d/b;->w:I

    const-wide/16 v2, 0x1900

    iput-wide v2, p0, Lcom/tencent/beacon/d/b;->x:J

    const/16 v2, 0x14

    iput v2, p0, Lcom/tencent/beacon/d/b;->y:I

    const/16 v2, 0x12c

    iput v2, p0, Lcom/tencent/beacon/d/b;->z:I

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->A:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->B:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->C:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->D:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->E:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->F:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->G:Z

    const/16 v2, 0x2710

    iput v2, p0, Lcom/tencent/beacon/d/b;->H:I

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->I:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->J:Z

    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->K:Z

    iput-boolean v1, p0, Lcom/tencent/beacon/d/b;->L:Z

    iput v0, p0, Lcom/tencent/beacon/d/b;->M:I

    iput-boolean v1, p0, Lcom/tencent/beacon/d/b;->N:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/beacon/d/b;->O:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/beacon/d/b;->P:I

    iput v1, p0, Lcom/tencent/beacon/d/b;->Q:I

    iput v0, p0, Lcom/tencent/beacon/d/b;->R:I

    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/beacon/a/a/b;->a(ILcom/tencent/beacon/a/a/d;)V

    return-void
.end method

.method public static b()Lcom/tencent/beacon/d/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/beacon/d/b;->a:Lcom/tencent/beacon/d/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/beacon/d/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/beacon/d/b;->a:Lcom/tencent/beacon/d/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/beacon/d/b;

    invoke-direct {v1}, Lcom/tencent/beacon/d/b;-><init>()V

    sput-object v1, Lcom/tencent/beacon/d/b;->a:Lcom/tencent/beacon/d/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/beacon/d/b;->a:Lcom/tencent/beacon/d/b;

    return-object v0
.end method

.method private b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "d_m"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/tencent/beacon/a/a/b;->a()Lcom/tencent/beacon/a/a/b;

    move-result-object p1

    new-instance v0, Lcom/tencent/beacon/a/a/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/tencent/beacon/a/a/c;-><init>(ILjava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/tencent/beacon/a/a/b;->b(Lcom/tencent/beacon/a/a/c;)V

    return-void
.end method

.method private f(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/beacon/d/b;->Q:I

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/beacon/d/h;->d()Lcom/tencent/beacon/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/d/h;->g()V

    .line 3
    :cond_0
    iput p1, p0, Lcom/tencent/beacon/d/b;->Q:I

    return-void
.end method

.method private y()V
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/d/b;->k:Lcom/tencent/beacon/d/c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tencent/beacon/d/c;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/tencent/beacon/d/b;->P:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/tencent/beacon/d/b;->P:I

    return-void
.end method

.method public a(Lcom/tencent/beacon/a/a/c;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/tencent/beacon/a/a/c;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "u_c_a_e"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/beacon/d/b;->B:Z

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->B:Z

    .line 4
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "u_c_b_e"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/beacon/d/b;->A:Z

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->A:Z

    .line 6
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "u_c_d_s"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/tencent/beacon/d/b;->H:I

    :goto_2
    iput v0, p0, Lcom/tencent/beacon/d/b;->H:I

    .line 8
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "u_c_p_s"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/beacon/d/b;->l:Z

    :goto_3
    iput-boolean v0, p0, Lcom/tencent/beacon/d/b;->l:Z

    .line 10
    iget-object v0, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    const-string v1, "u_s_o_h"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object p1, p1, Lcom/tencent/beacon/a/a/c;->b:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_4

    :cond_5
    iget-boolean p1, p0, Lcom/tencent/beacon/d/b;->C:Z

    :goto_4
    iput-boolean p1, p0, Lcom/tencent/beacon/d/b;->C:Z

    :goto_5
    return-void
.end method

.method public a(Lcom/tencent/beacon/d/c;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tencent/beacon/d/b;->k:Lcom/tencent/beacon/d/c;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    sget-object v0, Lcom/tencent/beacon/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    if-eqz v2, :cond_5

    .line 12
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/tencent/beacon/d/b;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget v0, v1, Lcom/tencent/beacon/d/b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x18

    const/16 v4, 0x30

    const/16 v5, 0x64

    if-ne v0, v4, :cond_0

    :try_start_2
    const-string v0, "realtimeUploadNum"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :try_start_3
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v6, v1, Lcom/tencent/beacon/d/b;->d:I

    invoke-static {v0, v6, v3, v5}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->d:I

    .line 15
    :cond_0
    iget v0, v1, Lcom/tencent/beacon/d/b;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v4, :cond_1

    :try_start_4
    const-string v0, "normalUploadNum"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    :try_start_5
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v4, v1, Lcom/tencent/beacon/d/b;->f:I

    invoke-static {v0, v4, v3, v5}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->f:I

    .line 17
    :cond_1
    iget v0, v1, Lcom/tencent/beacon/d/b;->g:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v3, 0x1388

    const v4, 0x36ee80

    const/16 v6, 0x7d0

    if-ne v0, v3, :cond_2

    :try_start_6
    const-string v0, "normalPollingTime"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 18
    :try_start_7
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, v1, Lcom/tencent/beacon/d/b;->g:I

    invoke-static {v0, v3, v6, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->g:I

    .line 19
    :cond_2
    iget v0, v1, Lcom/tencent/beacon/d/b;->e:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v3, 0x2710

    if-ne v0, v6, :cond_3

    :try_start_8
    const-string v0, "realtimePollingTime"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 20
    :try_start_9
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v7, v1, Lcom/tencent/beacon/d/b;->e:I

    const/16 v8, 0x3e8

    invoke-static {v0, v7, v8, v3}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->e:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_3
    :try_start_a
    const-string v0, "heartOnOff"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 21
    :try_start_b
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v7, v1, Lcom/tencent/beacon/d/b;->m:Z

    invoke-static {v0, v7}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->m:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string v0, "tidyEF"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 22
    :try_start_d
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v7, v1, Lcom/tencent/beacon/d/b;->p:Z

    invoke-static {v0, v7}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->p:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    const-string v0, "lauEveSim"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 23
    :try_start_f
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v7, v1, Lcom/tencent/beacon/d/b;->q:Z

    invoke-static {v0, v7}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->q:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    const-string v0, "zeroPeakOnOff"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 24
    :try_start_11
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v7, v1, Lcom/tencent/beacon/d/b;->r:Z

    invoke-static {v0, v7}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->r:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    const-string v0, "zeroPeakRate"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 25
    :try_start_13
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_4

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-lez v9, :cond_4

    :try_start_14
    const-string v9, ","
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 28
    :try_start_15
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 29
    array-length v9, v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 30
    :try_start_16
    aget-object v9, v0, v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v9, v0

    iput v9, v1, Lcom/tencent/beacon/d/b;->s:F
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    :try_start_17
    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_4
    :goto_0
    :try_start_18
    const-string v0, "straOnOff"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 32
    :try_start_19
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v9, v1, Lcom/tencent/beacon/d/b;->L:Z

    invoke-static {v0, v9}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->L:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :try_start_1a
    const-string v0, "straDayMaxCount"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 33
    :try_start_1b
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v9, v1, Lcom/tencent/beacon/d/b;->M:I

    const v10, 0x7fffffff

    invoke-static {v0, v9, v8, v10}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->M:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :try_start_1c
    const-string v0, "acceleEnable"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 34
    :try_start_1d
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v9, v1, Lcom/tencent/beacon/d/b;->t:Z

    invoke-static {v0, v9}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->t:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :try_start_1e
    const-string v0, "gyroEnable"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 35
    :try_start_1f
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v9, v1, Lcom/tencent/beacon/d/b;->u:Z

    invoke-static {v0, v9}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->u:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :try_start_20
    const-string v0, "magneticEnable"
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 36
    :try_start_21
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v9, v1, Lcom/tencent/beacon/d/b;->v:Z

    invoke-static {v0, v9}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->v:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    const-string v0, "gatherCount"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 37
    :try_start_23
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v9, v1, Lcom/tencent/beacon/d/b;->w:I

    const/16 v10, 0x32

    invoke-static {v0, v9, v8, v10}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->w:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :try_start_24
    const-string v0, "gatherDur"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 38
    :try_start_25
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-wide v12, v1, Lcom/tencent/beacon/d/b;->x:J

    const-wide/16 v14, 0x3e8

    const-wide/16 v16, 0x4e20

    invoke-static/range {v11 .. v17}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;JJJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/tencent/beacon/d/b;->x:J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :try_start_26
    const-string v0, "hertzCount"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 39
    :try_start_27
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v9, v1, Lcom/tencent/beacon/d/b;->y:I

    const/16 v11, 0x14

    invoke-static {v0, v9, v11, v5}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->y:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :try_start_28
    const-string v0, "consuming"
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 40
    :try_start_29
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v5, v1, Lcom/tencent/beacon/d/b;->z:I

    const/16 v9, 0x3c

    const v11, 0x15180

    invoke-static {v0, v5, v9, v11}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->z:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :try_start_2a
    const-string v0, "bidEnable"
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 41
    :try_start_2b
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v5, v1, Lcom/tencent/beacon/d/b;->A:Z

    invoke-static {v0, v5}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->A:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_1
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :try_start_2c
    const-string v0, "auditEnable"
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 42
    :try_start_2d
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v5, v1, Lcom/tencent/beacon/d/b;->B:Z

    invoke-static {v0, v5}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->B:Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    :try_start_2e
    const-string v0, "maxDBCount"
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 43
    :try_start_2f
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v5, v1, Lcom/tencent/beacon/d/b;->H:I

    const v9, 0x186a0

    invoke-static {v0, v5, v3, v9}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->H:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    :try_start_30
    const-string v0, "netFailureNumMax"
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 44
    :try_start_31
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, v1, Lcom/tencent/beacon/d/b;->O:I

    invoke-static {v0, v3, v8, v10}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->O:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    :try_start_32
    const-string v0, "weekNetPollingTime"
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 45
    :try_start_33
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, v1, Lcom/tencent/beacon/d/b;->h:I

    invoke-static {v0, v3, v6, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->h:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    :try_start_34
    const-string v0, "zipType"
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 46
    :try_start_35
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, v1, Lcom/tencent/beacon/d/b;->P:I

    const/4 v4, 0x3

    invoke-static {v0, v3, v8, v4}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    iput v0, v1, Lcom/tencent/beacon/d/b;->P:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    :try_start_36
    const-string v0, "rsaPubKeyType"
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    .line 47
    :try_start_37
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v3, v1, Lcom/tencent/beacon/d/b;->Q:I

    invoke-static {v0, v3, v7, v8}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;III)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/tencent/beacon/d/b;->f(I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    :try_start_38
    const-string v0, "needLifeCycleListener"
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    .line 48
    :try_start_39
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v3, v1, Lcom/tencent/beacon/d/b;->F:Z

    invoke-static {v0, v3}, Lcom/tencent/beacon/base/util/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/beacon/d/b;->F:Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    :try_start_3a
    const-string v0, "eventUrl"
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    .line 49
    :try_start_3b
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/b;->c(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_1
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    :try_start_3c
    const-string v0, "strategyUrl"
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    .line 50
    :try_start_3d
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/beacon/base/net/b/b;->e(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_1
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 51
    :try_start_3e
    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iput-object p1, p0, Lcom/tencent/beacon/d/b;->n:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/tencent/beacon/d/b;->N:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event report state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/beacon/d/b;->n()Z

    move-result v0

    if-eqz p2, :cond_0

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/beacon/d/b;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/beacon/d/b;->j:Z

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/beacon/d/b;->n()Z

    move-result p1

    if-eq v0, p1, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/tencent/beacon/d/b;->y()V

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/d/b;->n:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/tencent/beacon/d/b;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    sget-object v0, Lcom/tencent/beacon/d/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 57
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 59
    sget-object p2, Lcom/tencent/beacon/d/b;->b:Ljava/util/Random;

    const/16 v1, 0x2710

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    add-int/2addr p2, v1

    if-lt p2, p1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/tencent/beacon/d/b;->R:I

    return-void
.end method

.method public declared-synchronized b(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/d/b;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/d/b;->o:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    .line 12
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 14
    array-length v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    .line 15
    :try_start_2
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    .line 16
    iget-object v2, p0, Lcom/tencent/beacon/d/b;->o:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    :try_start_3
    invoke-static {v0}, Lcom/tencent/beacon/base/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/tencent/beacon/d/b;->E:Z

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/d/b;->o:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/d/b;->o:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 20
    sget-object v0, Lcom/tencent/beacon/d/b;->b:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    if-le v0, p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/tencent/beacon/d/b;->R:I

    return p0
.end method

.method public c(I)V
    .locals 1

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/tencent/beacon/d/b;->f:I

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/tencent/beacon/d/b;->F:Z

    return-void
.end method

.method public d()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/beacon/d/b;->H:I

    return p0
.end method

.method public d(I)V
    .locals 1

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/tencent/beacon/d/b;->d:I

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/tencent/beacon/d/b;->D:Z

    return-void
.end method

.method public e()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/tencent/beacon/d/b;->O:I

    return p0
.end method

.method public e(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/tencent/beacon/d/b;->Q:I

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/beacon/d/b;->G:Z

    return-void
.end method

.method public declared-synchronized f()I
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/d/b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/tencent/beacon/d/b;->K:Z

    return-void
.end method

.method public declared-synchronized g()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/d/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/d/b;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/d/b;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/d/b;->Q:I

    return p0
.end method

.method public declared-synchronized k()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/d/b;->M:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/beacon/d/b;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->A:Z

    return p0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/beacon/d/b;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->j:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public o()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->N:Z

    return p0
.end method

.method public declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/d/b;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->E:Z

    return p0
.end method

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->F:Z

    return p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->D:Z

    return p0
.end method

.method public t()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->l:Z

    return p0
.end method

.method public u()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->G:Z

    return p0
.end method

.method public v()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->K:Z

    return p0
.end method

.method public w()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/beacon/d/b;->C:Z

    return p0
.end method

.method public declared-synchronized x()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/beacon/d/b;->L:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
