.class public Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;
.super Lorg/objectweb/asm/AnnotationVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;ILorg/objectweb/asm/AnnotationVisitor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(ILorg/objectweb/asm/AnnotationVisitor;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->b(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->l:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->c(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->d(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p2, p1, p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->f(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->a(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->c(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    const-string v1, "e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->b(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->d(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor$a;->a:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;->d(Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
