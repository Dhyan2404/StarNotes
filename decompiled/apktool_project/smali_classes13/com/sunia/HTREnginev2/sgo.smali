.class public final synthetic Lcom/sunia/HTREnginev2/sgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sgo;->e:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sgo;->e:Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-static {p0, p1}, Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;->a(Lorg/apache/poi/xddf/usermodel/text/XDDFTextBody;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;)Lorg/apache/poi/xddf/usermodel/text/XDDFTextParagraph;

    move-result-object p0

    return-object p0
.end method
