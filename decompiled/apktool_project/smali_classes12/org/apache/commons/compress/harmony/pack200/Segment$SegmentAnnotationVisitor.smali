.class public Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;
.super Lorg/objectweb/asm/AnnotationVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SegmentAnnotationVisitor"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic l:Lorg/apache/commons/compress/harmony/pack200/Segment;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I)V
    .locals 0

    .line 15
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 16
    sget p1, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a:I

    .line 18
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->b:I

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->h:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->i:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->j:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->k:Ljava/util/List;

    .line 26
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;IILjava/lang/String;Z)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 28
    sget p1, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a:I

    .line 30
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->b:I

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->h:Ljava/util/List;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->i:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->j:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->k:Ljava/util/List;

    .line 38
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a:I

    .line 39
    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->b:I

    .line 40
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->c:Ljava/lang/String;

    .line 41
    iput-boolean p5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->d:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 2
    sget p1, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, p1}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(I)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a:I

    .line 4
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->b:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->h:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->i:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->j:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->k:Ljava/util/List;

    .line 12
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a:I

    .line 13
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->c:Ljava/lang/String;

    .line 14
    iput-boolean p4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->d:Z

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->k:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->j:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    invoke-static {p1, p2, v0, p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->f(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    const-string v1, "@"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->k:Ljava/util/List;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;

    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;ILorg/objectweb/asm/AnnotationVisitor;)V

    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    const-string v1, "["

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->h:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->h:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public visitEnd()V
    .locals 12

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->c(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->h:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->i:Ljava/util/List;

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->j:Ljava/util/List;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->k:Ljava/util/List;

    invoke-virtual/range {v1 .. v8}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addAnnotationDefault(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->c(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->b:I

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->d:Z

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->h:Ljava/util/List;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->i:Ljava/util/List;

    iget-object v10, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->j:Ljava/util/List;

    iget-object v11, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->k:Ljava/util/List;

    invoke-virtual/range {v1 .. v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addParameterAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->c(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a:I

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->d:Z

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->h:Ljava/util/List;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->i:Ljava/util/List;

    iget-object v10, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->j:Ljava/util/List;

    iget-object v11, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->k:Ljava/util/List;

    invoke-virtual/range {v1 .. v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->f:Ljava/util/List;

    const-string v1, "e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->g:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
