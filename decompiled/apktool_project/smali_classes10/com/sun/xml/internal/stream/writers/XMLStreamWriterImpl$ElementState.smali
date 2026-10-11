.class Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;
.super Lcom/sun/org/apache/xerces/internal/xni/QName;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ElementState"
.end annotation


# instance fields
.field public isEmpty:Z

.field final synthetic this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;


# direct methods
.method public constructor <init>(Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;->this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;->this$0:Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl;

    .line 4
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    return-void
.end method


# virtual methods
.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p5, p0, Lcom/sun/xml/internal/stream/writers/XMLStreamWriterImpl$ElementState;->isEmpty:Z

    return-void
.end method
