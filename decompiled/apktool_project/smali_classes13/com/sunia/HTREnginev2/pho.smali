.class public final synthetic Lcom/sunia/HTREnginev2/pho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pho;->e:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pho;->e:Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;

    invoke-static {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;->j(Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextSpacing;)Lorg/apache/poi/xddf/usermodel/text/XDDFSpacing;

    move-result-object p0

    return-object p0
.end method
