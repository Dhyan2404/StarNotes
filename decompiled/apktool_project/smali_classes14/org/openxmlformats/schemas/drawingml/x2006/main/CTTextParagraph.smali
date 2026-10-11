.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;",
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

    const-string v2, "cttextparagraphcaf2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract addNewEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract addNewFld()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.end method

.method public abstract addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract getBrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract getBrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract getBrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract getFldArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract getFldArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract getFldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.end method

.method public abstract getRArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract getRArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract getRList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract insertNewFld(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract insertNewR(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract isSetEndParaRPr()Z
.end method

.method public abstract isSetPPr()Z
.end method

.method public abstract removeBr(I)V
.end method

.method public abstract removeFld(I)V
.end method

.method public abstract removeR(I)V
.end method

.method public abstract setBrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;)V
.end method

.method public abstract setBrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;)V
.end method

.method public abstract setEndParaRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
.end method

.method public abstract setFldArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;)V
.end method

.method public abstract setFldArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;)V
.end method

.method public abstract setPPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
.end method

.method public abstract setRArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)V
.end method

.method public abstract setRArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)V
.end method

.method public abstract sizeOfBrArray()I
.end method

.method public abstract sizeOfFldArray()I
.end method

.method public abstract sizeOfRArray()I
.end method

.method public abstract unsetEndParaRPr()V
.end method

.method public abstract unsetPPr()V
.end method
