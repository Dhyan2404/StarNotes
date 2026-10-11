.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctignorederrorc51ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCalculatedColumn()Z
.end method

.method public abstract getEmptyCellReference()Z
.end method

.method public abstract getEvalError()Z
.end method

.method public abstract getFormula()Z
.end method

.method public abstract getFormulaRange()Z
.end method

.method public abstract getListDataValidation()Z
.end method

.method public abstract getNumberStoredAsText()Z
.end method

.method public abstract getSqref()Ljava/util/List;
.end method

.method public abstract getTwoDigitTextYear()Z
.end method

.method public abstract getUnlockedFormula()Z
.end method

.method public abstract isSetCalculatedColumn()Z
.end method

.method public abstract isSetEmptyCellReference()Z
.end method

.method public abstract isSetEvalError()Z
.end method

.method public abstract isSetFormula()Z
.end method

.method public abstract isSetFormulaRange()Z
.end method

.method public abstract isSetListDataValidation()Z
.end method

.method public abstract isSetNumberStoredAsText()Z
.end method

.method public abstract isSetTwoDigitTextYear()Z
.end method

.method public abstract isSetUnlockedFormula()Z
.end method

.method public abstract setCalculatedColumn(Z)V
.end method

.method public abstract setEmptyCellReference(Z)V
.end method

.method public abstract setEvalError(Z)V
.end method

.method public abstract setFormula(Z)V
.end method

.method public abstract setFormulaRange(Z)V
.end method

.method public abstract setListDataValidation(Z)V
.end method

.method public abstract setNumberStoredAsText(Z)V
.end method

.method public abstract setSqref(Ljava/util/List;)V
.end method

.method public abstract setTwoDigitTextYear(Z)V
.end method

.method public abstract setUnlockedFormula(Z)V
.end method

.method public abstract unsetCalculatedColumn()V
.end method

.method public abstract unsetEmptyCellReference()V
.end method

.method public abstract unsetEvalError()V
.end method

.method public abstract unsetFormula()V
.end method

.method public abstract unsetFormulaRange()V
.end method

.method public abstract unsetListDataValidation()V
.end method

.method public abstract unsetNumberStoredAsText()V
.end method

.method public abstract unsetTwoDigitTextYear()V
.end method

.method public abstract unsetUnlockedFormula()V
.end method

.method public abstract xgetCalculatedColumn()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEmptyCellReference()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEvalError()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFormula()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFormulaRange()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetListDataValidation()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNumberStoredAsText()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSqref()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;
.end method

.method public abstract xgetTwoDigitTextYear()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUnlockedFormula()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetCalculatedColumn(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEmptyCellReference(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEvalError(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFormula(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFormulaRange(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetListDataValidation(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNumberStoredAsText(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSqref(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;)V
.end method

.method public abstract xsetTwoDigitTextYear(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUnlockedFormula(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
