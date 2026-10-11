.class public final synthetic Lcom/sunia/HTREnginev2/oko;
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

    new-instance p0, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-direct {p0, p1}, Lorg/apache/poi/xddf/usermodel/XDDFLineProperties;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    return-object p0
.end method
