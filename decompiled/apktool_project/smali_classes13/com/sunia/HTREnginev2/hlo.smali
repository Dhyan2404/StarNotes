.class public final synthetic Lcom/sunia/HTREnginev2/hlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;

    check-cast p1, Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;

    check-cast p2, Lorg/apache/poi/xdgf/usermodel/XDGFSheet;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xdgf/usermodel/section/GeometrySection;-><init>(Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;Lorg/apache/poi/xdgf/usermodel/XDGFSheet;)V

    return-object p0
.end method
