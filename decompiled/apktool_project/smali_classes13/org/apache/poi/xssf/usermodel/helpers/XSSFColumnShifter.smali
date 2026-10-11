.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFColumnShifter;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method


# virtual methods
.method public updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateConditionalFormatting(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateHyperlinks(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method

.method public updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/helpers/ColumnShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowColShifter;->updateNamedRanges(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    return-void
.end method
