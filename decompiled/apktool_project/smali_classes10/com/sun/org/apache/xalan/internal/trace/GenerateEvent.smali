.class public Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# instance fields
.field public m_atts:Lorg/xml/sax/Attributes;

.field public m_characters:[C

.field public m_data:Ljava/lang/String;

.field public m_eventtype:I

.field public m_length:I

.field public m_name:Ljava/lang/String;

.field public m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

.field public m_start:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    .line 3
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_eventtype:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_data:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    .line 23
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_eventtype:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_name:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_data:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    .line 19
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_eventtype:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;ILjava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_name:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_atts:Lorg/xml/sax/Attributes;

    .line 7
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    .line 8
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_eventtype:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;I[CII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_characters:[C

    .line 11
    iput p4, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_start:I

    .line 12
    iput p5, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_length:I

    .line 13
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_processor:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    .line 14
    iput p2, p0, Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;->m_eventtype:I

    return-void
.end method
