.class public final synthetic Lcom/sunia/HTREnginev2/rmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitorAcceptor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/xdgf/usermodel/shape/ShapeVisitor;->a(Lorg/apache/poi/xdgf/usermodel/XDGFShape;)Z

    move-result p0

    return p0
.end method
