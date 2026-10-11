.class public final Lorg/apache/xerces/stax/events/EndDocumentImpl;
.super Lcom/sunia/HTREnginev2/plo;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/EndDocument;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/Location;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/sunia/HTREnginev2/plo;-><init>(ILjavax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method
