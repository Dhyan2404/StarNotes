.class public final synthetic Lcom/sunia/HTREnginev2/zmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zmo;->e:Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zmo;->e:Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;

    check-cast p1, Lorg/apache/poi/xslf/usermodel/XSLFShape;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xslf/usermodel/XSLFGroupShape;->removeShape(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z

    return-void
.end method
