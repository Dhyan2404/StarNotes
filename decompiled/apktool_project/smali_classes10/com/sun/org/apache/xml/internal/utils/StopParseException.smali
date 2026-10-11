.class public Lcom/sun/org/apache/xml/internal/utils/StopParseException;
.super Lorg/xml/sax/SAXException;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x2ea6f17783bb411L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Stylesheet PIs found, stop the parse"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    return-void
.end method
