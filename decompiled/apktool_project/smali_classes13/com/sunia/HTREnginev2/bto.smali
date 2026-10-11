.class public final synthetic Lcom/sunia/HTREnginev2/bto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ooxml/POIXMLRelation$PackagePartConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lorg/apache/poi/openxml4j/opc/PackagePart;)Lorg/apache/poi/ooxml/POIXMLDocumentPart;
    .locals 0

    new-instance p0, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    invoke-direct {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object p0
.end method
