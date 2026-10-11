.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;
.super Lcom/sun/org/apache/bcel/internal/generic/ClassGen;
.source "SourceFile"


# static fields
.field protected static INVALID_INDEX:I = -0x1

.field protected static final TRANSLET_INDEX:I


# instance fields
.field private final _aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

.field private final _applyTemplatesSig:Ljava/lang/String;

.field private final _applyTemplatesSigForImport:Ljava/lang/String;

.field private final _domClass:Ljava/lang/String;

.field private final _domClassSig:Ljava/lang/String;

.field private final _parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

.field private _stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    iput-object p6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/ALOAD;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {p6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->isMultiDocument()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.sun.org.apache.xalan.internal.xsltc.dom.MultiDOM"

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_domClass:Ljava/lang/String;

    const-string p1, "Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;"

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_domClassSig:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter"

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_domClass:Ljava/lang/String;

    const-string p1, "Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;"

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_domClassSig:Ljava/lang/String;

    :goto_0
    const-string p1, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V"

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_applyTemplatesSig:Ljava/lang/String;

    const-string p1, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V"

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_applyTemplatesSigForImport:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getApplyTemplatesSig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_applyTemplatesSig:Ljava/lang/String;

    return-object p0
.end method

.method public final getApplyTemplatesSigForImport()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_applyTemplatesSigForImport:Ljava/lang/String;

    return-object p0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDOMClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_domClass:Ljava/lang/String;

    return-object p0
.end method

.method public final getDOMClassSig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_domClassSig:Ljava/lang/String;

    return-object p0
.end method

.method public final getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    return-object p0
.end method

.method public final getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object p0
.end method

.method public isExternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->_aloadTranslet:Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    return-object p0
.end method
