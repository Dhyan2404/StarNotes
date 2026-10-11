.class public final synthetic Lcom/sunia/HTREnginev2/ooo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/FillStyle;


# instance fields
.field public final synthetic a:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ooo;->a:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    return-void
.end method


# virtual methods
.method public final getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ooo;->a:Lorg/apache/poi/xslf/usermodel/XSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFShape;->getFillPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0
.end method
