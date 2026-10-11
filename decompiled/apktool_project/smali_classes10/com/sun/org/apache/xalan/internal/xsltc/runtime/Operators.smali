.class public final Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Operators;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EQ:I = 0x0

.field public static final GE:I = 0x4

.field public static final GT:I = 0x2

.field public static final LE:I = 0x5

.field public static final LT:I = 0x3

.field public static final NE:I = 0x1

.field private static final names:[Ljava/lang/String;

.field private static final swapOpArray:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "="

    const-string v1, "!="

    const-string v2, ">"

    const-string v3, "<"

    const-string v4, ">="

    const-string v5, "<="

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Operators;->names:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Operators;->swapOpArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x2
        0x5
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOpNames(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Operators;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static final swapOp(I)I
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Operators;->swapOpArray:[I

    aget p0, v0, p0

    return p0
.end method
