.class public Lnet/sf/saxon/expr/parser/OptimizerOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYTE_CODE:I = 0x40

.field public static final COMMON_SUBEXPRESSIONS:I = 0x80

.field public static final CONSTANT_FOLDING:I = 0x8000

.field public static final CREATE_KEYS:I = 0x20

.field public static final EXTRACT_GLOBALS:I = 0x2

.field public static final FULL_EE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

.field public static final FULL_HE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

.field public static final INDEX_VARIABLES:I = 0x10

.field public static final INLINE_FUNCTIONS:I = 0x8

.field public static final INLINE_VARIABLES:I = 0x4

.field public static final JIT:I = 0x400

.field public static final LOOP_LIFTING:I = 0x1

.field public static final MISCELLANEOUS:I = 0x100

.field public static final REGEX_CACHE:I = 0x1000

.field public static final RULE_SET:I = 0x800

.field public static final SWITCH:I = 0x200

.field public static final TAIL_CALLS:I = 0x4000

.field public static final VOID_EXPRESSIONS:I = 0x2000


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const-string v1, "lvmt"

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_HE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    new-instance v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->FULL_EE_OPTIMIZATION:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 7
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a(C)I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 10
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a(C)I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_1
    iput v1, p0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    return-void
.end method


# virtual methods
.method public final a(C)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x10

    return p0

    :pswitch_2
    const/16 p0, 0x200

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/16 p0, 0x4000

    return p0

    :pswitch_5
    const/16 p0, 0x80

    return p0

    :pswitch_6
    const/16 p0, 0x800

    return p0

    :pswitch_7
    const p0, 0x8000

    return p0

    :pswitch_8
    const/16 p0, 0x100

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_a
    const/16 p0, 0x20

    return p0

    :pswitch_b
    const/16 p0, 0x400

    return p0

    :pswitch_c
    const/4 p0, 0x2

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/16 p0, 0x1000

    return p0

    :pswitch_f
    const/16 p0, 0x2000

    return p0

    :pswitch_10
    const/16 p0, 0x40

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public except(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iget p0, p0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    iget p1, p1, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    not-int p1, p1

    and-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    return-object v0
.end method

.method public getOptions()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    return p0
.end method

.method public intersect(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iget p0, p0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    iget p1, p1, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    and-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    return-object v0
.end method

.method public isSet(I)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "j"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_f
    return-object v1
.end method

.method public union(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iget p0, p0, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    iget p1, p1, Lnet/sf/saxon/expr/parser/OptimizerOptions;->a:I

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    return-object v0
.end method
