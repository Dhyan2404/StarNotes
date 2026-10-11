.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/FilterGenerator;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;
.source "SourceFile"


# static fields
.field private static TRANSLET_INDEX:I = 0x5


# instance fields
.field private final _aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    sget p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/FilterGenerator;->TRANSLET_INDEX:I

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/FilterGenerator;->_aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-void
.end method


# virtual methods
.method public isExternal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/FilterGenerator;->_aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method
