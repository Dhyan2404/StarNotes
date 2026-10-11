.class public Lcom/sun/org/apache/xerces/internal/xinclude/XInclude11TextReader;
.super Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeTextReader;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/xinclude/XIncludeHandler;I)V

    return-void
.end method


# virtual methods
.method public isValid(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result p0

    return p0
.end method
