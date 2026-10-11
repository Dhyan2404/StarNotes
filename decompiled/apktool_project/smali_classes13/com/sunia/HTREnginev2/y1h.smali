.class public final synthetic Lcom/sunia/HTREnginev2/y1h;
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

    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;

    check-cast p1, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;

    invoke-direct {p0, p1}, Lorg/apache/poi/xdgf/usermodel/section/geometry/RelEllipticalArcTo;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/RowType;)V

    return-object p0
.end method
