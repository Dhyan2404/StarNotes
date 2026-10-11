.class public final synthetic Lcom/sunia/HTREnginev2/pno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/POIXMLRelation$NoArgConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init()Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    new-instance p0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    invoke-direct {p0}, Lorg/apache/poi/xslf/usermodel/XSLFSlide;-><init>()V

    return-object p0
.end method
