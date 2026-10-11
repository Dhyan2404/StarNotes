.class public final Lorg/apache/xerces/parsers/DOMParserImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ls/LSParserFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/DOMParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lorg/apache/xerces/parsers/DOMParserImpl$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xerces/parsers/DOMParserImpl$b;

    invoke-direct {v0}, Lorg/apache/xerces/parsers/DOMParserImpl$b;-><init>()V

    sput-object v0, Lorg/apache/xerces/parsers/DOMParserImpl$b;->a:Lorg/apache/xerces/parsers/DOMParserImpl$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptNode(Lorg/w3c/dom/Node;)S
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getWhatToShow()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public startElement(Lorg/w3c/dom/Element;)S
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
