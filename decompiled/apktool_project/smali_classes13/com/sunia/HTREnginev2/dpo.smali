.class public final synthetic Lcom/sunia/HTREnginev2/dpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/dpo;->a:I

    return-void
.end method


# virtual methods
.method public final fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/dpo;->a:I

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xslf/usermodel/XSLFTextParagraph;->n(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V

    return-void
.end method
