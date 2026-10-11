.class public Lorg/apache/poi/xslf/usermodel/XSLFMathRun;
.super Lorg/apache/poi/xslf/usermodel/XSLFTextRun;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;-><init>(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;)V

    return-void
.end method


# virtual methods
.method public getFieldType()Lorg/apache/poi/sl/usermodel/TextRun$FieldType;
    .locals 0

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextRun$FieldType;->MATH:Lorg/apache/poi/sl/usermodel/TextRun$FieldType;

    return-object p0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFTextRun;->getXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You cannot change text of a math"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
