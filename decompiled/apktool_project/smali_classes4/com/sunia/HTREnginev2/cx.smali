.class public final synthetic Lcom/sunia/HTREnginev2/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Collection;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:J

.field public final synthetic g:I

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:J

.field public final synthetic k:J

.field public final synthetic l:J

.field public final synthetic m:Z


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;JIJIJJJJJZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/cx;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    move-object v1, p2

    iput-object v1, v0, Lcom/sunia/HTREnginev2/cx;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sunia/HTREnginev2/cx;->c:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->d:J

    move v1, p6

    iput v1, v0, Lcom/sunia/HTREnginev2/cx;->e:I

    move-wide v1, p7

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->f:J

    move v1, p9

    iput v1, v0, Lcom/sunia/HTREnginev2/cx;->g:I

    move-wide v1, p10

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->h:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->i:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->j:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->k:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->l:J

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/sunia/HTREnginev2/cx;->m:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/cx;->a:Lcom/couchbase/lite/internal/core/C4Collection;

    iget-object v2, v0, Lcom/sunia/HTREnginev2/cx;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/sunia/HTREnginev2/cx;->c:Ljava/lang/String;

    iget-wide v4, v0, Lcom/sunia/HTREnginev2/cx;->d:J

    iget v6, v0, Lcom/sunia/HTREnginev2/cx;->e:I

    iget-wide v7, v0, Lcom/sunia/HTREnginev2/cx;->f:J

    iget v9, v0, Lcom/sunia/HTREnginev2/cx;->g:I

    iget-wide v10, v0, Lcom/sunia/HTREnginev2/cx;->h:J

    iget-wide v12, v0, Lcom/sunia/HTREnginev2/cx;->i:J

    iget-wide v14, v0, Lcom/sunia/HTREnginev2/cx;->j:J

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    iget-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->k:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/sunia/HTREnginev2/cx;->l:J

    move-wide/from16 v18, v1

    iget-boolean v0, v0, Lcom/sunia/HTREnginev2/cx;->m:Z

    move/from16 v20, v0

    move-object/from16 v21, p1

    check-cast v21, Ljava/lang/Long;

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static/range {v1 .. v21}, Lcom/couchbase/lite/internal/core/C4Collection;->H(Lcom/couchbase/lite/internal/core/C4Collection;Ljava/lang/String;Ljava/lang/String;JIJIJJJJJZLjava/lang/Long;)V

    return-void
.end method
