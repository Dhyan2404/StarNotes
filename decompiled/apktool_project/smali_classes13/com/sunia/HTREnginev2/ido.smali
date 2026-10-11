.class public final synthetic Lcom/sunia/HTREnginev2/ido;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFGradientStop;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientStop;)V

    return-object p0
.end method
