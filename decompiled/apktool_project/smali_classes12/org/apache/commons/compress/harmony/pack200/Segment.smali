.class public Lorg/apache/commons/compress/harmony/pack200/Segment;
.super Lorg/objectweb/asm/ClassVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;
    }
.end annotation


# static fields
.field public static ASM_API:I = 0x40000


# instance fields
.field public a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

.field public b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field public c:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

.field public d:Lorg/apache/commons/compress/harmony/pack200/IcBands;

.field public e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

.field public f:Lorg/apache/commons/compress/harmony/pack200/BcBands;

.field public g:Lorg/apache/commons/compress/harmony/pack200/FileBands;

.field public final h:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

.field public final i:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

.field public j:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

.field public k:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

.field public l:Z

.field public m:[Lorg/objectweb/asm/Attribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->h:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->i:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/PackingOptions;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->k:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/harmony/pack200/Segment;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->h()V

    return-void
.end method

.method public static synthetic c(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/BcBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->f:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/commons/compress/harmony/pack200/Segment;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->l:Z

    return p0
.end method

.method public static synthetic f(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/Segment;->g(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    const-string p0, "I"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_1

    const-string p0, "D"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_2

    const-string p0, "F"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_3

    const-string p0, "J"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    instance-of p0, p1, Ljava/lang/Byte;

    if-eqz p0, :cond_4

    const-string p0, "B"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of p0, p1, Ljava/lang/Character;

    if-eqz p0, :cond_5

    const-string p0, "C"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_6

    const-string p0, "S"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_7

    const-string p0, "Z"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_8

    const-string p0, "s"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    instance-of p0, p1, Lorg/objectweb/asm/Type;

    if-eqz p0, :cond_9

    const-string p0, "c"

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    return-void
.end method

.method public getAttrBands()Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->c:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    return-object p0
.end method

.method public getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    return-object p0
.end method

.method public getCpBands()Lorg/apache/commons/compress/harmony/pack200/CpBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    return-object p0
.end method

.method public getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->j:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    return-object p0
.end method

.method public getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->d:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    return-object p0
.end method

.method public getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    return-object p0
.end method

.method public final h()V
    .locals 0

    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;

    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;-><init>()V

    throw p0
.end method

.method public final i(Lorg/apache/commons/compress/harmony/pack200/Archive$b;[Lorg/objectweb/asm/Attribute;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setClass_count(I)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->j:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    iget-boolean v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->l:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    :try_start_0
    invoke-virtual {v1, p0, p2, v2}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V
    :try_end_0
    .catch Lorg/apache/commons/compress/harmony/pack200/Segment$PassException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->removeCurrentClass()V

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->getFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->k:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addPassFile(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->r(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/pack200/Archive$a;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/Archive$a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v1, v1, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:[B

    invoke-virtual {v5, v1}, Lorg/apache/commons/compress/harmony/pack200/Archive$a;->h([B)V

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error passing file "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public lastConstantHadWideIndex()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->j:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->lastConstantHadWideIndex()Z

    move-result p0

    return p0
.end method

.method public pack(Lorg/apache/commons/compress/harmony/pack200/Archive$b;Ljava/io/OutputStream;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->k:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isStripDebug()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->l:Z

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getEffort()I

    move-result v6

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownAttributePrototypes()[Lorg/objectweb/asm/Attribute;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->m:[Lorg/objectweb/asm/Attribute;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start to pack a new segment with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " files including "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " classes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    const-string v0, "Initialize a header for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setFile_count(I)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->l:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_all_code_flags(Z)V

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isKeepDeflateHint()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v1, "true"

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getDeflateHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setDeflate_hint(Z)V

    :cond_0
    const-string v0, "Setup constant pool bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v0, p0, v6}, Lorg/apache/commons/compress/harmony/pack200/CpBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v0, "Setup attribute definition bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->m:[Lorg/objectweb/asm/Attribute;

    invoke-direct {v0, p0, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I[Lorg/objectweb/asm/Attribute;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->c:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    const-string v0, "Setup internal class bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IcBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/commons/compress/harmony/pack200/IcBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/CpBands;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->d:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    const-string v0, "Setup class bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->d()I

    move-result v1

    iget-boolean v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->l:Z

    invoke-direct {v0, p0, v1, v6, v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;IIZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    const-string v0, "Setup byte code bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BcBands;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v0, v1, p0, v6}, Lorg/apache/commons/compress/harmony/pack200/BcBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/Segment;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->f:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    const-string v0, "Setup file bands for the segment"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/FileBands;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-object v1, v0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/FileBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;Lorg/apache/commons/compress/harmony/pack200/Archive$b;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->g:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->m:[Lorg/objectweb/asm/Attribute;

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/compress/harmony/pack200/Segment;->i(Lorg/apache/commons/compress/harmony/pack200/Archive$b;[Lorg/objectweb/asm/Attribute;)V

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->finaliseBands()V

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->c:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->finaliseBands()V

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->d:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->finaliseBands()V

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->finaliseBands()V

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->f:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->finaliseBands()V

    iget-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->g:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->finaliseBands()V

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v0, "Packing..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numClassesProcessed()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setClass_count(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->b:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->pack(Ljava/io/OutputStream;)V

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->c:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->pack(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->d:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->pack(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->pack(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->f:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->pack(Ljava/io/OutputStream;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->g:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->pack(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->pack(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p3, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->c(I)V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->c(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Wrote total of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->i()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transmitted "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->e()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " files of "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->f()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " input bytes in a segment of "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->f:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {v0, p3, p5}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->setCurrentClass(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->a:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->addMajorVersion(I)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addClass(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 5

    invoke-virtual {p1}, Lorg/objectweb/asm/Attribute;->isUnknown()Z

    move-result v0

    const-string v1, "Unknown attribute encountered"

    const-string v2, "error"

    const-string v3, "pass"

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->k:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownAttributeAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->h()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isUnknown(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->k:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    iget-object v4, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownClassAttributeAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->h()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addClassAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    :goto_1
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected attribute encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitEnd()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->endOfClass()V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->h:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    return-object p0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->d:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->addInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->i:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    return-object p0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addEnclosingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-boolean p2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->l:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->e:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addSourceFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
