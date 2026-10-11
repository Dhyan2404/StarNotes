.class Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaverSAXException"
.end annotation


# instance fields
.field _saxException:Lorg/xml/sax/SAXException;


# direct methods
.method public constructor <init>(Lorg/xml/sax/SAXException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver$SaverSAXException;->_saxException:Lorg/xml/sax/SAXException;

    return-void
.end method
