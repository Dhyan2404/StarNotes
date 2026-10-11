.class Lorg/apache/xmlbeans/impl/store/CdataNode;
.super Lorg/apache/xmlbeans/impl/store/TextNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/TextNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 0

    const-string p0, "#cdata-section"

    return-object p0
.end method

.method public nodeType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method
