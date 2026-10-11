.class Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$Attribute;
.super Lcom/sun/org/apache/xerces/internal/xni/QName;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attribute"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$Attribute;->this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object p2, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$Attribute;->value:Ljava/lang/String;

    return-void
.end method
