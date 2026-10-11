.class public Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static s:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public static t:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public static u:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public static v:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# instance fields
.field public T:[I

.field public final a:Ljava/lang/String;

.field public anno_N:[I

.field public final b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public caseD_KD:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

.field public caseF_KF:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

.field public caseI_KI:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

.field public caseJ_KJ:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

.field public casearray_N:[I

.field public casec_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public caseec_RU:[Ljava/lang/String;

.field public caseet_RS:[Ljava/lang/String;

.field public cases_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public name_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public nestname_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public nestpair_N:[I

.field public nesttype_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field public o:I

.field public p:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field public pair_N:[[I

.field public param_NB:[I

.field public q:I

.field public r:I

.field public type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/CpBands;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->h([ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->g([Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g([Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    .locals 0

    aget-object p1, p1, p4

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h([ILjava/util/Iterator;I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->q:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    aget-object v0, v0, p3

    aget p1, p1, p3

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static setRiaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->t:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method

.method public static setRipaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->v:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method

.method public static setRvaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->s:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method

.method public static setRvpaAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0

    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->u:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    return-void
.end method


# virtual methods
.method public final c(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            "I",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;)",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;"
        }
    .end annotation

    new-array v0, p2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    new-array v1, p2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v3, v0, v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    iget v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->m:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->m:I

    aget v3, v3, v4

    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->e(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;-><init>(ILjava/lang/Object;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;-><init>(ILorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;)V

    return-object p0
.end method

.method public final d(I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            "[I",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;)",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;"
        }
    .end annotation

    new-array p1, p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    new-instance v0, Lcom/sunia/HTREnginev2/lnj;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sunia/HTREnginev2/lnj;-><init>(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    new-instance p2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleAnnotationsAttribute;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    const-string p3, "RVA"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->s:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->t:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    :goto_0
    invoke-direct {p2, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleAnnotationsAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;)V

    return-object p2
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 5

    const/16 v0, 0x40

    if-eq p1, v0, :cond_8

    const/16 v0, 0x46

    if-eq p1, v0, :cond_7

    const/16 v0, 0x53

    if-eq p1, v0, :cond_6

    const/16 v0, 0x63

    if-eq p1, v0, :cond_5

    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    const/16 v0, 0x73

    if-eq p1, v0, :cond_3

    const/16 v0, 0x49

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseD_KD:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->e:I

    aget-object p0, p1, v0

    return-object p0

    :cond_0
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casearray_N:[I

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->l:I

    aget p1, p1, v0

    new-array v0, p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->m:I

    aget v2, v2, v3

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->e(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;-><init>(ILjava/lang/Object;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseJ_KJ:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->g:I

    aget-object p0, p1, v0

    return-object p0

    :cond_3
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cases_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->k:I

    aget-object p0, p1, v0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseet_RS:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->i:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseec_RU:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->j:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->b:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casec_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->h:I

    aget-object p0, p1, v0

    return-object p0

    :cond_6
    :pswitch_1
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseI_KI:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->d:I

    aget-object p0, p1, v0

    return-object p0

    :cond_7
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseF_KF:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->f:I

    aget-object p0, p1, v0

    return-object p0

    :cond_8
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nesttype_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->n:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->o:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->p:Ljava/util/Iterator;

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;)",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;"
        }
    .end annotation

    new-array v0, p1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->q:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->q:I

    aget v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    iget v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->r:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->r:I

    aget-object v3, v3, v4

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    new-instance v4, Lcom/sunia/HTREnginev2/jnj;

    invoke-direct {v4, p0, v3, p2}, Lcom/sunia/HTREnginev2/jnj;-><init>(Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;[ILjava/util/Iterator;)V

    invoke-static {v2, v4}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;

    invoke-direct {v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;-><init>([Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    const-string p2, "RVPA"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->u:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->v:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    :goto_1
    invoke-direct {p1, p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;)V

    return-object p1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c:Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->name_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    const-string v1, "AD"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->m:I

    :cond_0
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->d:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->e:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->f:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->g:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->h:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->i:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->j:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->k:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->l:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->n:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->o:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestname_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->p:Ljava/util/Iterator;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    const-string v3, "RVA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    const-string v3, "RIA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    const-string v3, "RVPA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    const-string v3, "RIPA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->q:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->r:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->param_NB:[I

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_5

    aget v4, v1, v2

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c:Ljava/util/List;

    invoke-virtual {p0, v4, v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->f(ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    array-length v3, v1

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c:Ljava/util/List;

    aget v1, v1, v2

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    aget-object v5, v5, v2

    invoke-virtual {p0, v1, v4, v5, v0}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->d(I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[ILjava/util/Iterator;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c:Ljava/util/List;

    new-instance v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;

    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->e(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;-><init>(ILjava/lang/Object;)V

    invoke-direct {v5, v6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationDefaultAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->c:Ljava/util/List;

    return-object p0
.end method
