.class public Lcom/sunia/HTREnginev2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lcom/sunia/calculatorv2/ink/editor/IEditor;


# instance fields
.field public A0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

.field public B0:I

.field public final C0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final D0:Lcom/sunia/calculatorv2/ink/editor/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            ">;"
        }
    .end annotation
.end field

.field public E0:Lcom/sunia/calculatorv2/ink/editor/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            ">;"
        }
    .end annotation
.end field

.field public F0:I

.field public G0:Ljava/lang/Object;

.field public H0:I

.field public I0:I

.field public J:Lcom/sunia/HTREnginev2/s1;

.field public O:Z

.field public Q:Z

.field public Z:J

.field public e:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/concurrent/ExecutorService;

.field public g:Ljava/util/concurrent/ScheduledExecutorService;

.field public h:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile j:I

.field public k:Lcom/sunia/HTREnginev2/g;

.field public final k0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sunia/calculatorv2/ink/editor/PointerTool;",
            ">;"
        }
    .end annotation
.end field

.field public volatile l:Lcom/sunia/HTREnginev2/p1;

.field public m:Landroid/graphics/Matrix;

.field public n:Landroid/graphics/Matrix;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sunia/calculatorv2/ink/editor/EditorListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public p:[F

.field public q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sunia/HTREnginev2/c1;",
            ">;"
        }
    .end annotation
.end field

.field public q0:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

.field public final r:Lcom/sunia/calculatorv2/ink/editor/Engine;

.field public s:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public t:Lcom/sunia/HTREnginev2/y0;

.field public t0:Z

.field public u:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

.field public u0:Z

.field public v:Lcom/sunia/calculatorv2/ink/model/e;

.field public v0:Z

.field public w:Z

.field public w0:I

.field public x:Lcom/sunia/HTREnginev2/k1;

.field public x0:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

.field public y:F

.field public y0:Z

.field public z:Z

.field public z0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;


# direct methods
.method public constructor <init>(Lcom/sunia/calculatorv2/ink/editor/Engine;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->f:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/q;->j:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/q;->n:Landroid/graphics/Matrix;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sunia/HTREnginev2/q;->p:[F

    sget-object v1, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->DOCUMENT:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/q;->s:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v1, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/q;->v:Lcom/sunia/calculatorv2/ink/model/e;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/q;->w:Z

    new-instance v3, Lcom/sunia/HTREnginev2/k1;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/k1;-><init>()V

    iput-object v3, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    const/high16 v3, 0x43200000    # 160.0f

    iput v3, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/q;->z:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->O:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->Q:Z

    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/sunia/HTREnginev2/q;->Z:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sunia/HTREnginev2/q;->k0:Ljava/util/Map;

    sget-object v4, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->PEN_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    iput-object v4, p0, Lcom/sunia/HTREnginev2/q;->q0:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->t0:Z

    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/q;->u0:Z

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->v0:Z

    iput v2, p0, Lcom/sunia/HTREnginev2/q;->w0:I

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->y0:Z

    new-instance v2, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v2, v5, v6, v5, v6}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/q;->z0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iput-object v2, p0, Lcom/sunia/HTREnginev2/q;->A0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    const/16 v2, 0x100

    iput v2, p0, Lcom/sunia/HTREnginev2/q;->B0:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    new-instance v5, Lcom/sunia/calculatorv2/ink/editor/Selection;

    new-instance v6, Lcom/sunia/calculatorv2/ink/model/z;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/sunia/calculatorv2/ink/model/z;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    iput-object v5, p0, Lcom/sunia/HTREnginev2/q;->D0:Lcom/sunia/calculatorv2/ink/editor/Selection;

    iput-object v5, p0, Lcom/sunia/HTREnginev2/q;->E0:Lcom/sunia/calculatorv2/ink/editor/Selection;

    iput v0, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/sunia/HTREnginev2/q;->G0:Ljava/lang/Object;

    const/4 v5, -0x1

    iput v5, p0, Lcom/sunia/HTREnginev2/q;->H0:I

    const/16 v5, -0x100

    iput v5, p0, Lcom/sunia/HTREnginev2/q;->I0:I

    const-string v5, "Editor"

    const-string v6, "Editor created"

    invoke-static {v5, v6}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->r:Lcom/sunia/calculatorv2/ink/editor/Engine;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/editor/Engine;->createGenericRecognizer()Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->u:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v5, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->ERASER_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getSolverContext()Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    return-void
.end method

.method private synthetic A0(I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->t:Lcom/sunia/HTREnginev2/y0;

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/y0;->a(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->J:Lcom/sunia/HTREnginev2/s1;

    return-void
.end method

.method public static synthetic B0(Lcom/sunia/HTREnginev2/q;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/q;->Z:J

    return-wide v0
.end method

.method private synthetic C0(Lcom/sunia/calculatorv2/ink/model/e;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/sunia/HTREnginev2/o0;->a(Lcom/sunia/calculatorv2/ink/model/e;Lcom/sunia/calculatorv2/ink/model/e;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p1

    const-string v0, "Editor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/c0;->a(Lcom/sunia/calculatorv2/ink/model/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/editor/Selection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->t0(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic D0(Lcom/sunia/HTREnginev2/q;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private synthetic E0(FFJFFFII)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/q;->t:Lcom/sunia/HTREnginev2/y0;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/sunia/HTREnginev2/y0;->c(FFJFFFII)V

    return-void
.end method

.method public static synthetic F0(Lcom/sunia/HTREnginev2/q;)Lcom/sunia/HTREnginev2/p1;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    return-object p0
.end method

.method private synthetic G0(FFJFFFII)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/q;->t:Lcom/sunia/HTREnginev2/y0;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/sunia/HTREnginev2/y0;->a(FFJFFFII)V

    return-void
.end method

.method public static synthetic H(Lcom/sunia/HTREnginev2/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q;->N0()V

    return-void
.end method

.method private synthetic H0(FFJFFFII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/q;->t:Lcom/sunia/HTREnginev2/y0;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/sunia/HTREnginev2/y0;->b(FFJFFFII)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sunia/HTREnginev2/q;->J:Lcom/sunia/HTREnginev2/s1;

    return-void
.end method

.method public static synthetic I(Lcom/sunia/HTREnginev2/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q;->P0()V

    return-void
.end method

.method private synthetic J0()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->u:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->t0(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic K0()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->t:Lcom/sunia/HTREnginev2/y0;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->t0(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic L0()V
    .locals 4

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->t0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->v:Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/e;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v3, v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/MathElement;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/MathElement;->getCandidates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/util/Alternative;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/util/Alternative;->getConfidence()D

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->v:Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->b(Lcom/sunia/calculatorv2/ink/model/e;)V

    return-void
.end method

.method public static synthetic M(Lcom/sunia/calculatorv2/ink/editor/EditorListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/q;->x0(Lcom/sunia/calculatorv2/ink/editor/EditorListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method private synthetic M0()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->r:Lcom/sunia/calculatorv2/ink/editor/Engine;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/editor/Engine;->createPredictor()Lcom/sunia/HTREnginev2/y0;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->t:Lcom/sunia/HTREnginev2/y0;

    return-void
.end method

.method private synthetic N0()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->t:Lcom/sunia/HTREnginev2/y0;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/y0;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->J:Lcom/sunia/HTREnginev2/s1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->Q0()V

    :cond_0
    return-void
.end method

.method private synthetic O0()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->t:Lcom/sunia/HTREnginev2/y0;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sunia/HTREnginev2/q;->y:F

    invoke-interface {v0, p0}, Lcom/sunia/HTREnginev2/y0;->a(F)V

    :cond_0
    return-void
.end method

.method private synthetic P0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->moveUndoStackIndex(I)V

    return-void
.end method

.method public static synthetic e0(Lcom/sunia/HTREnginev2/q;FFJFFFII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sunia/HTREnginev2/q;->H0(FFJFFFII)V

    return-void
.end method

.method public static synthetic f(Lcom/sunia/HTREnginev2/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q;->O0()V

    return-void
.end method

.method public static synthetic f0(Lcom/sunia/HTREnginev2/q;Lcom/sunia/calculatorv2/ink/model/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/q;->C0(Lcom/sunia/calculatorv2/ink/model/e;)V

    return-void
.end method

.method public static synthetic g0(Lcom/sunia/HTREnginev2/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q;->J0()V

    return-void
.end method

.method public static synthetic h0(Lcom/sunia/HTREnginev2/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q;->M0()V

    return-void
.end method

.method public static synthetic i0(Lcom/sunia/HTREnginev2/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q;->K0()V

    return-void
.end method

.method public static synthetic j(Lcom/sunia/HTREnginev2/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/q;->L0()V

    return-void
.end method

.method public static synthetic j0(Lcom/sunia/HTREnginev2/q;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/q;->A0(I)V

    return-void
.end method

.method public static synthetic k0(Lcom/sunia/HTREnginev2/q;FFJFFFII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sunia/HTREnginev2/q;->G0(FFJFFFII)V

    return-void
.end method

.method public static synthetic m0(Lcom/sunia/HTREnginev2/q;Lcom/sunia/calculatorv2/ink/model/e;)Lcom/sunia/calculatorv2/ink/model/e;
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->v:Lcom/sunia/calculatorv2/ink/model/e;

    return-object p1
.end method

.method public static n0(Lcom/sunia/calculatorv2/ink/model/f;FF)Lcom/sunia/calculatorv2/ink/model/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;FF)",
            "Lcom/sunia/calculatorv2/ink/model/z;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Editor"

    invoke-static {v4, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, Lcom/sunia/HTREnginev2/q;->n0(Lcom/sunia/calculatorv2/ink/model/f;FF)Lcom/sunia/calculatorv2/ink/model/z;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/sunia/calculatorv2/ink/model/z;

    invoke-direct {p1, p0, v0}, Lcom/sunia/calculatorv2/ink/model/z;-><init>(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;)V

    return-object p1
.end method

.method public static synthetic o0(Lcom/sunia/HTREnginev2/q;Lcom/sunia/calculatorv2/ink/model/e;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/q;->r0(Lcom/sunia/calculatorv2/ink/model/e;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/sunia/HTREnginev2/q;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->t0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic w(Lcom/sunia/HTREnginev2/q;FFJFFFII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sunia/HTREnginev2/q;->E0(FFJFFFII)V

    return-void
.end method

.method public static synthetic w0(Lcom/sunia/HTREnginev2/q;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/q;->Q:Z

    return p0
.end method

.method public static synthetic x0(Lcom/sunia/calculatorv2/ink/editor/EditorListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic y0(Lcom/sunia/HTREnginev2/q;)I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/q;->j:I

    return p0
.end method


# virtual methods
.method public A()V
    .locals 9

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->b()V

    new-instance v0, Lcom/sunia/HTREnginev2/g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/g;-><init>()V

    iget v1, p0, Lcom/sunia/HTREnginev2/q;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sunia/HTREnginev2/q;->j:I

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;)Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v4

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v5

    const/high16 v6, 0x43000000    # 128.0f

    cmpg-float v4, v4, v6

    const-string v7, "Editor"

    if-gez v4, :cond_0

    const/high16 v4, 0x42000000    # 32.0f

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    new-instance v5, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    const/4 v8, 0x0

    invoke-direct {v5, v8, v6, v8, v4}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    invoke-static {v2, v5}, Lcom/sunia/HTREnginev2/p1;->a(Ljava/util/List;Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)Ljava/util/List;

    move-result-object v4

    const-string v5, "Traces rescaled"

    invoke-static {v7, v5}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trace box:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    new-instance v3, Lcom/sunia/HTREnginev2/q$a;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/sunia/HTREnginev2/q$a;-><init>(Lcom/sunia/HTREnginev2/q;Lcom/sunia/HTREnginev2/g;Ljava/util/List;I)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->f:Ljava/util/concurrent/ExecutorService;

    invoke-static {v4, v0, v3, v1}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->startRecognize(Ljava/util/List;Lcom/sunia/HTREnginev2/g;Lcom/sunia/commonv2/callback/HWRCallback;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->k:Lcom/sunia/HTREnginev2/g;

    return-void
.end method

.method public final I0()V
    .locals 2

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/p4p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p4p;-><init>(Lcom/sunia/HTREnginev2/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->isCopyAndPasteModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sunia/HTREnginev2/c1;->c:Ljava/util/EnumSet;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sunia/HTREnginev2/c1;->a:Ljava/util/EnumSet;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    return-void
.end method

.method public final R0()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Editor"

    const-string v1, "Matrix reset"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/c1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->u:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    iget v1, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v2, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->a(F)V

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->A0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->z0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    :cond_1
    return-void
.end method

.method public a(FF)V
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sunia/HTREnginev2/q;->n0(Lcom/sunia/calculatorv2/ink/model/f;FF)Lcom/sunia/calculatorv2/ink/model/z;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/sunia/HTREnginev2/p1;

    new-instance v2, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v2, p1, p2}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/model/z;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v0, v3}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/q;->b(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    .line 76
    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/z;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sunia/HTREnginev2/q;->s0(Lcom/sunia/calculatorv2/ink/model/z;Ljava/util/List;FF)V

    return-void
.end method

.method public a(FFFFF)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 55
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, p3, p4, p5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 56
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/q;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 57
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->q:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/HTREnginev2/c1;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->u:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    iget p2, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object p3, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p3, p4}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p3

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->a(F)V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->A0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Z)V

    .line 61
    sget-object p1, Lcom/sunia/HTREnginev2/c1;->d:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    return-void
.end method

.method public a(FFJFFFIIZ)V
    .locals 15

    move-object v11, p0

    .line 40
    iget-object v0, v11, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    if-eqz v0, :cond_2

    .line 41
    iget-boolean v0, v11, Lcom/sunia/HTREnginev2/q;->z:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    .line 42
    iget-object v13, v11, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v14, Lcom/sunia/HTREnginev2/n4p;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sunia/HTREnginev2/n4p;-><init>(Lcom/sunia/HTREnginev2/q;FFJFFFII)V

    invoke-interface {v13, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-nez p10, :cond_1

    .line 43
    iget-object v0, v11, Lcom/sunia/HTREnginev2/q;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, v12}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 45
    :cond_0
    iget-object v0, v11, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/o4p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o4p;-><init>(Lcom/sunia/HTREnginev2/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v11, Lcom/sunia/HTREnginev2/q;->h:Ljava/util/concurrent/Future;

    .line 46
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/sunia/HTREnginev2/q;->z0(FF)V

    .line 47
    iget-object v0, v11, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    new-instance v9, Lcom/sunia/HTREnginev2/w0;

    iget-object v1, v11, Lcom/sunia/HTREnginev2/q;->p:[F

    aget v2, v1, v12

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object v1, v9

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sunia/HTREnginev2/w0;-><init>(FFJFFF)V

    invoke-virtual {v0, v9}, Lcom/sunia/HTREnginev2/p1;->a(Lcom/sunia/HTREnginev2/s1;)V

    .line 48
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->Q0()V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    if-eqz v0, :cond_1

    .line 36
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->z:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/v4p;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/v4p;-><init>(Lcom/sunia/HTREnginev2/q;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    .line 39
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->Q0()V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 62
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 63
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->isCopyAndPasteModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 66
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/p1;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v2

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sunia/HTREnginev2/q;->n0(Lcom/sunia/calculatorv2/ink/model/f;FF)Lcom/sunia/calculatorv2/ink/model/z;

    move-result-object v0

    .line 69
    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/l;->a(Lcom/sunia/calculatorv2/ink/model/z;Lcom/sunia/HTREnginev2/q;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v3, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sunia/HTREnginev2/d1;->a(Ljava/util/List;Landroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->j()Lcom/sunia/calculatorv2/ink/editor/Selection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/z;

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/l;->a(Lcom/sunia/calculatorv2/ink/model/z;Lcom/sunia/HTREnginev2/q;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sunia/HTREnginev2/d1;->a(Ljava/util/List;Landroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public a(Lcom/sunia/HTREnginev2/p1;)V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance p1, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    return-void
.end method

.method public a(Lcom/sunia/calculatorv2/ink/editor/Selection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->d()Lcom/sunia/calculatorv2/ink/editor/Selection;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/e;

    .line 3
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getTraces()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getTraces()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-boolean v3, p0, Lcom/sunia/HTREnginev2/q;->t0:Z

    if-eqz v3, :cond_1

    if-eq v2, v1, :cond_1

    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->R0()V

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/sunia/HTREnginev2/o0;->j(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/sunia/HTREnginev2/o0;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/sunia/HTREnginev2/o0;->a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 8
    invoke-static {v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Editor"

    invoke-static {v5, v4}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/q;->t0(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eq v0, p1, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-nez v5, :cond_4

    if-eqz v0, :cond_b

    .line 10
    :cond_4
    iget-object v6, p0, Lcom/sunia/HTREnginev2/q;->D0:Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0, v6}, Lcom/sunia/HTREnginev2/q;->b(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    .line 11
    iget-object v6, p0, Lcom/sunia/HTREnginev2/q;->G0:Ljava/lang/Object;

    monitor-enter v6

    .line 12
    :try_start_1
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 13
    iget-boolean v7, p0, Lcom/sunia/HTREnginev2/q;->Q:Z

    if-eqz v7, :cond_6

    .line 14
    :goto_3
    iget v7, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    if-ltz v7, :cond_5

    .line 15
    iget-object v8, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/editor/Selection;

    .line 16
    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v8

    if-ne v8, v2, :cond_5

    invoke-virtual {v7}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getTraces()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 17
    iget-object v7, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    iget v8, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    iget v7, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    goto :goto_3

    .line 19
    :cond_5
    iget v7, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 20
    iget-object v7, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    new-instance v8, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget v2, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    .line 22
    :cond_6
    iget v2, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    .line 23
    iget-object v7, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 24
    iget-object v2, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    new-instance v7, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-direct {v7, v1, p1}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget v2, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    iget v7, p0, Lcom/sunia/HTREnginev2/q;->B0:I

    if-lt v2, v7, :cond_7

    sub-int/2addr v2, v4

    .line 26
    iput v2, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    .line 27
    iget-object v2, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 29
    sget-object v2, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    iput-object v2, p0, Lcom/sunia/HTREnginev2/q;->v:Lcom/sunia/calculatorv2/ink/model/e;

    .line 30
    :cond_8
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_9

    .line 31
    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/q;->q0(Lcom/sunia/calculatorv2/ink/model/e;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->v0(Ljava/util/List;)V

    .line 33
    :cond_a
    sget-object p1, Lcom/sunia/HTREnginev2/c1;->b:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    :cond_b
    return-void

    :catchall_1
    move-exception p0

    .line 34
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Z)V

    return-void
.end method

.method public a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Z)V
    .locals 7

    if-eqz p1, :cond_2

    .line 78
    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->A0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 79
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p1

    .line 80
    invoke-static {v0}, Lcom/sunia/HTREnginev2/x;->a(F)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/sunia/HTREnginev2/x;->a(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/q;->z0(FF)V

    .line 82
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->p:[F

    aget v1, v0, v5

    .line 83
    aget v0, v0, v4

    move v6, v1

    move v1, v0

    move v0, v6

    .line 84
    :cond_0
    invoke-static {v2}, Lcom/sunia/HTREnginev2/x;->a(F)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/x;->a(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {p0, v2, p1}, Lcom/sunia/HTREnginev2/q;->z0(FF)V

    .line 86
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->p:[F

    aget v2, p1, v5

    .line 87
    aget p1, p1, v4

    .line 88
    :cond_1
    new-instance v3, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-direct {v3, v0, v2, v1, p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    iput-object v3, p0, Lcom/sunia/HTREnginev2/q;->z0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 89
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->isNonempty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 92
    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/o0;->a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->d(Lcom/sunia/calculatorv2/ink/model/e;)V

    :cond_2
    return-void
.end method

.method public addEditorListener(Lcom/sunia/calculatorv2/ink/editor/EditorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/editor/EditorListener;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->i:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->k:Lcom/sunia/HTREnginev2/g;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/g;->a()V

    :cond_1
    return-void
.end method

.method public b(FFJFFFII)V
    .locals 14

    move-object v11, p0

    .line 6
    iget-object v0, v11, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v0, v11, Lcom/sunia/HTREnginev2/q;->z:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v12, v11, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v13, Lcom/sunia/HTREnginev2/q4p;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sunia/HTREnginev2/q4p;-><init>(Lcom/sunia/HTREnginev2/q;FFJFFFII)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/sunia/HTREnginev2/q;->z0(FF)V

    .line 10
    iget-object v0, v11, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    new-instance v9, Lcom/sunia/HTREnginev2/w0;

    iget-object v1, v11, Lcom/sunia/HTREnginev2/q;->p:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object v1, v9

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sunia/HTREnginev2/w0;-><init>(FFJFFF)V

    invoke-virtual {v0, v9}, Lcom/sunia/HTREnginev2/p1;->a(Lcom/sunia/HTREnginev2/s1;)V

    .line 11
    iget-object v0, v11, Lcom/sunia/HTREnginev2/q;->q0:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    iget-object v1, v11, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    invoke-interface {v0, v1, p0}, Lcom/sunia/calculatorv2/ink/editor/PointerTool;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/q;)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, v11, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    .line 13
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->Q0()V

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 10

    .line 14
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 17
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->J:Lcom/sunia/HTREnginev2/s1;

    if-eqz v0, :cond_1

    .line 18
    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/p1;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sunia/HTREnginev2/q;->z0(FF)V

    .line 21
    new-instance v0, Lcom/sunia/HTREnginev2/s1;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->p:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    move-object v2, v0

    .line 22
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->isCopyAndPasteModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object v0

    .line 24
    iget-object v3, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v5

    iget-object v6, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v8, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    move-object v4, v0

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lcom/sunia/HTREnginev2/d1;->a(Lcom/sunia/HTREnginev2/p1;Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/e;Landroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V

    .line 25
    sget-object v3, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    iget-object v6, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v8, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Lcom/sunia/HTREnginev2/d1;->a(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;ZLandroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->isCopyAndPasteModeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 27
    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->q0:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    invoke-interface {v0}, Lcom/sunia/calculatorv2/ink/editor/PointerTool;->getStyleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v6, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/sunia/HTREnginev2/d1;->a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/s1;Ljava/lang/String;Landroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V

    .line 28
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public b(Lcom/sunia/calculatorv2/ink/editor/Selection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->E0:Lcom/sunia/calculatorv2/ink/editor/Selection;

    if-eq v0, p1, :cond_0

    .line 30
    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->E0:Lcom/sunia/calculatorv2/ink/editor/Selection;

    .line 31
    sget-object p1, Lcom/sunia/HTREnginev2/c1;->c:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/sunia/calculatorv2/ink/model/e;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/r4p;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/r4p;-><init>(Lcom/sunia/HTREnginev2/q;Lcom/sunia/calculatorv2/ink/model/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public c()Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->s:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    return-object p0
.end method

.method public c(FF)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 10
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->n:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 11
    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->A0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;Z)V

    .line 12
    sget-object p1, Lcom/sunia/HTREnginev2/c1;->d:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    return-void
.end method

.method public c(FFJFFFII)V
    .locals 14

    move-object v11, p0

    .line 2
    iget-boolean v0, v11, Lcom/sunia/HTREnginev2/q;->z:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v12, v11, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v13, Lcom/sunia/HTREnginev2/x4p;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sunia/HTREnginev2/x4p;-><init>(Lcom/sunia/HTREnginev2/q;FFJFFFII)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/sunia/HTREnginev2/q;->z0(FF)V

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/p1;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;Landroid/graphics/Path;)V

    iput-object v0, v11, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    .line 6
    iget-object v0, v11, Lcom/sunia/HTREnginev2/q;->l:Lcom/sunia/HTREnginev2/p1;

    new-instance v9, Lcom/sunia/HTREnginev2/w0;

    iget-object v1, v11, Lcom/sunia/HTREnginev2/q;->p:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object v1, v9

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sunia/HTREnginev2/w0;-><init>(FFJFFF)V

    invoke-virtual {v0, v9}, Lcom/sunia/HTREnginev2/p1;->a(Lcom/sunia/HTREnginev2/s1;)V

    move/from16 v0, p8

    .line 7
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->getToolForType(I)Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    move-result-object v0

    iput-object v0, v11, Lcom/sunia/HTREnginev2/q;->q0:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    .line 8
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->Q0()V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 14

    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 15
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v6, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/sunia/HTREnginev2/d1;->a(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;ZLandroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V

    .line 16
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object v8

    .line 17
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->isCopyAndPasteModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v6, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/sunia/HTREnginev2/d1;->a(Lcom/sunia/HTREnginev2/p1;Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/e;Landroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V

    .line 19
    :cond_0
    iget-object v7, p0, Lcom/sunia/HTREnginev2/q;->v:Lcom/sunia/calculatorv2/ink/model/e;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    iget v11, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v12, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    move-object v13, p1

    invoke-static/range {v7 .. v13}, Lcom/sunia/HTREnginev2/d1;->a(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;ZLandroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    invoke-static {p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Editor"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public canRedo()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->h()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canUndo()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->i()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear()V
    .locals 3

    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/Selection;

    sget-object v1, Lcom/sunia/calculatorv2/ink/model/e;->g:Lcom/sunia/calculatorv2/ink/model/e;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->D0:Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->b(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->y0:Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/s4p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s4p;-><init>(Lcom/sunia/HTREnginev2/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/t4p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t4p;-><init>(Lcom/sunia/HTREnginev2/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public convert()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/l4p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l4p;-><init>(Lcom/sunia/HTREnginev2/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public copy(Landroid/content/ClipboardManager;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/l;->a(Landroid/content/ClipboardManager;Lcom/sunia/HTREnginev2/q;)Z

    move-result p0

    return p0
.end method

.method public d()Lcom/sunia/calculatorv2/ink/editor/Selection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->G0:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    iget p0, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/editor/Selection;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d(Lcom/sunia/calculatorv2/ink/model/e;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/editor/Selection;)V

    return-void
.end method

.method public e()Lcom/sunia/calculatorv2/ink/model/e;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->d()Lcom/sunia/calculatorv2/ink/editor/Selection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/model/e;

    return-object p0
.end method

.method public f()F
    .locals 0

    .line 2
    iget p0, p0, Lcom/sunia/HTREnginev2/q;->y:F

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/q;->H0:I

    return p0
.end method

.method public bridge synthetic getConvertedElement()Lcom/sunia/calculatorv2/ink/model/IElement;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p0

    return-object p0
.end method

.method public getCopyAndPasteMode()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/q;->w0:I

    return p0
.end method

.method public getElementsToCopy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->j()Lcom/sunia/calculatorv2/ink/editor/Selection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/z;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/l;->a(Lcom/sunia/calculatorv2/ink/model/z;Lcom/sunia/calculatorv2/ink/model/e;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHistory()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/IElement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->G0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getSolverContext()Lcom/sunia/calculatorv2/ink/solver/SolverContext;
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->x0:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    sget-object v1, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->DECIMAL:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/sunia/calculatorv2/ink/solver/SolverContext;-><init>(ZILcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->x0:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->setSolverContext(Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->u0:Z

    invoke-static {v0}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->enableMathDotConvertMultiplication(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->x0:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    return-object p0
.end method

.method public bridge synthetic getStyleSheet()Lcom/sunia/calculatorv2/ink/graphics/IStyleSheet;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->k()Lcom/sunia/HTREnginev2/k1;

    move-result-object p0

    return-object p0
.end method

.method public getToolForType(I)Lcom/sunia/calculatorv2/ink/editor/PointerTool;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->k0:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->k0:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    :cond_0
    return-object p1
.end method

.method public getTraces()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->d()Lcom/sunia/calculatorv2/ink/editor/Selection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getTraces()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUndoStackIndex()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    return p0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->G0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getUndoStackIndex()I

    move-result p0

    sub-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public i()I
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->G0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getUndoStackIndex()I

    move-result v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getTraces()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAutoConversionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/q;->Q:Z

    return p0
.end method

.method public isCopyAndPasteModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/q;->v0:Z

    return p0
.end method

.method public isMultiplivativeDotEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/q;->u0:Z

    return p0
.end method

.method public j()Lcom/sunia/calculatorv2/ink/editor/Selection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/calculatorv2/ink/editor/Selection<",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->E0:Lcom/sunia/calculatorv2/ink/editor/Selection;

    return-object p0
.end method

.method public k()Lcom/sunia/HTREnginev2/k1;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    return-object p0
.end method

.method public l()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->z0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->z0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->z0:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0
.end method

.method public final l0()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/q;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->A()V

    :cond_0
    return-void
.end method

.method public moveUndoStackIndex(I)V
    .locals 9

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->G0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_9

    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v1, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string p1, "Editor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HistoryIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->d()Lcom/sunia/calculatorv2/ink/editor/Selection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-static {v3, p0}, Lcom/sunia/HTREnginev2/o0;->b(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/sunia/HTREnginev2/o0;->a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/q;)Lcom/sunia/calculatorv2/ink/model/f;

    move-result-object v3

    check-cast v3, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getConverted()Lcom/sunia/calculatorv2/ink/model/IElement;

    move-result-object v4

    check-cast v4, Lcom/sunia/calculatorv2/ink/model/e;

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getTraces()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/editor/Selection;->getTraces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sunia/calculatorv2/ink/model/e;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-virtual {v6}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/calculatorv2/ink/model/f;

    instance-of v8, v7, Lcom/sunia/HTREnginev2/i;

    if-eqz v8, :cond_2

    check-cast v7, Lcom/sunia/HTREnginev2/i;

    invoke-interface {v7}, Lcom/sunia/HTREnginev2/i;->b()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    new-instance v6, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-direct {v6, v3, p1}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput v1, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v4, v3, :cond_4

    move v4, v0

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    if-eq v2, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-nez v4, :cond_6

    if-eqz v0, :cond_8

    :cond_6
    sget-object v1, Lcom/sunia/HTREnginev2/c1;->b:Ljava/util/EnumSet;

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    if-eqz v4, :cond_7

    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/q;->q0(Lcom/sunia/calculatorv2/ink/model/e;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->v0(Ljava/util/List;)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    :try_start_1
    const-string p0, "Editor"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid History Index: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public n()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->u:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->c()Z

    move-result p0

    return p0
.end method

.method public o()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/q;->O:Z

    return p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/q;->t0:Z

    return p0
.end method

.method public paste(FFLandroid/content/ClipboardManager;)Z
    .locals 0

    invoke-static {p1, p2, p3, p0}, Lcom/sunia/HTREnginev2/l;->a(FFLandroid/content/ClipboardManager;Lcom/sunia/HTREnginev2/q;)Z

    move-result p0

    return p0
.end method

.method public final q0(Lcom/sunia/calculatorv2/ink/model/e;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/editor/EditorListener;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/sunia/calculatorv2/ink/editor/EditorListener;->onConvertedContentChanged(Lcom/sunia/calculatorv2/ink/editor/IEditor;Lcom/sunia/calculatorv2/ink/model/IElement;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/sunia/HTREnginev2/c1;->b:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    return-void
.end method

.method public final r0(Lcom/sunia/calculatorv2/ink/model/e;I)V
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/q;->j:I

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/editor/EditorListener;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1, p0, p1, p2}, Lcom/sunia/calculatorv2/ink/editor/EditorListener;->onUnconvertedContentChanged(Lcom/sunia/calculatorv2/ink/editor/IEditor;Lcom/sunia/calculatorv2/ink/model/IElement;Z)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/sunia/HTREnginev2/c1;->b:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    return-void
.end method

.method public redo()V
    .locals 2

    const-string v0, "Editor"

    const-string v1, "Trying to redo"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->moveUndoStackIndex(I)V

    return-void
.end method

.method public removeEditorListener(Lcom/sunia/calculatorv2/ink/editor/EditorListener;)V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/m4p;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/m4p;-><init>(Lcom/sunia/calculatorv2/ink/editor/EditorListener;)V

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/j;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final s0(Lcom/sunia/calculatorv2/ink/model/z;Ljava/util/List;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/z;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;FF)V"
        }
    .end annotation

    const-string v0, "Editor"

    const-string v1, "Firing selectionChanged"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sunia/calculatorv2/ink/editor/EditorListener;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/sunia/calculatorv2/ink/editor/EditorListener;->onSelectionChanged(Lcom/sunia/calculatorv2/ink/editor/IEditor;Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;FF)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAnalyzerMode(Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->s:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->l0()V

    return-void
.end method

.method public setAutoConversionDelayMilliseconds(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/q;->Z:J

    return-void
.end method

.method public setAutoConversionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/q;->Q:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->g:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method

.method public setCopyAndPasteMode(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/q;->w0:I

    return-void
.end method

.method public setCopyAndPasteModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/q;->v0:Z

    sget-object p1, Lcom/sunia/HTREnginev2/c1;->b:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setCopyBgColor(I)V
    .locals 1

    iput p1, p0, Lcom/sunia/HTREnginev2/q;->I0:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    invoke-static {p1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createForegroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object p1

    const-string v0, "highlighter"

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    return-void
.end method

.method public setEditorViewBgColor(I)V
    .locals 1

    iput p1, p0, Lcom/sunia/HTREnginev2/q;->H0:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->x:Lcom/sunia/HTREnginev2/k1;

    invoke-static {p1}, Lcom/sunia/calculatorv2/ink/graphics/Style;->createBackgroundColorProperty(I)Lcom/sunia/HTREnginev2/j1;

    move-result-object p1

    const-string v0, "canvas"

    invoke-virtual {p0, v0, p1}, Lcom/sunia/HTREnginev2/k1;->addRuleForClass(Ljava/lang/String;Lcom/sunia/HTREnginev2/j1;)V

    return-void
.end method

.method public setGestureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/q;->O:Z

    return-void
.end method

.method public setMathConfig(Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->u:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    invoke-virtual {v0, p1}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->a(Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$Config;)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->l0()V

    return-void
.end method

.method public setMultiplivativeDotEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/q;->u0:Z

    invoke-static {p1}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->enableMathDotConvertMultiplication(Z)V

    return-void
.end method

.method public setPredictTrajectory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/q;->z:Z

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->I0()V

    return-void
.end method

.method public setRenderTarget(Lcom/sunia/HTREnginev2/c1;)V
    .locals 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/q;->q:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/c1;->getDpiX()F

    move-result v0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/c1;->getDpiY()F

    move-result p1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/sunia/HTREnginev2/q;->y:F

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->u:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/q;->m:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v1

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;->a(F)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->I0()V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/q;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/u4p;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/u4p;-><init>(Lcom/sunia/HTREnginev2/q;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    sget-object p1, Lcom/sunia/HTREnginev2/c1;->d:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/q;->u0(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setSolverContext(Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q;->x0:Lcom/sunia/calculatorv2/ink/solver/SolverContext;

    invoke-static {p1}, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;->setSolverContext(Lcom/sunia/calculatorv2/ink/solver/SolverContext;)V

    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/q;->t0:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->z()V

    :cond_0
    return-void
.end method

.method public setSolverEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/q;->t0:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->z()V

    :cond_0
    return-void
.end method

.method public setToolForType(ILcom/sunia/calculatorv2/ink/editor/PointerTool;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->k0:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/q;->k0:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->k0:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->PEN_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->k0:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final t0(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/editor/EditorListener;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/sunia/calculatorv2/ink/editor/EditorListener;->onError(Lcom/sunia/calculatorv2/ink/editor/IEditor;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final u0(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sunia/HTREnginev2/c1$a;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->q:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/c1;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/c1;->invalidate(Ljava/util/EnumSet;)V

    return-void
.end method

.method public undo()V
    .locals 8

    const-string v0, "Editor"

    const-string v1, "Undo"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->G0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->getTraces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/q;->C0:Ljava/util/List;

    new-instance v3, Lcom/sunia/calculatorv2/ink/editor/Selection;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->e()Lcom/sunia/calculatorv2/ink/model/e;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    invoke-interface {v1, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/sunia/calculatorv2/ink/editor/Selection;-><init>(Lcom/sunia/calculatorv2/ink/model/IElement;Ljava/util/List;)V

    invoke-interface {v2, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput v6, p0, Lcom/sunia/HTREnginev2/q;->F0:I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/q;->moveUndoStackIndex(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final v0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/calculatorv2/ink/editor/EditorListener;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p0, v2}, Lcom/sunia/calculatorv2/ink/editor/EditorListener;->onTraceListChanged(Lcom/sunia/calculatorv2/ink/editor/IEditor;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/q;->l0()V

    return-void
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/w4p;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w4p;-><init>(Lcom/sunia/HTREnginev2/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final z0(FF)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q;->p:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method
