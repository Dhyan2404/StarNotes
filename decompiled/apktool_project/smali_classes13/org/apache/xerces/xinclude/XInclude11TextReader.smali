.class public Lorg/apache/xerces/xinclude/XInclude11TextReader;
.super Lorg/apache/xerces/xinclude/XIncludeTextReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/xinclude/XIncludeHandler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/xinclude/XIncludeTextReader;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/xinclude/XIncludeHandler;I)V

    return-void
.end method


# virtual methods
.method public isValid(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result p0

    return p0
.end method
