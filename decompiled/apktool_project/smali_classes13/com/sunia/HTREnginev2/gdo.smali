.class public final synthetic Lcom/sunia/HTREnginev2/gdo;
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

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;

    invoke-static {p1}, Lorg/apache/poi/xddf/usermodel/XDDFCustomGeometry2D;->d(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)Lorg/apache/poi/xddf/usermodel/XDDFConnectionSite;

    move-result-object p0

    return-object p0
.end method
