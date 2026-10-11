.class public Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONSTRUCTOR:I = 0x2

.field public static final DEFAULT_CONSTRUCTOR:I = 0x0

.field public static final METHOD:I = 0x1


# instance fields
.field public final m_arguments:[Ljava/lang/Object;

.field public final m_callType:I

.field public final m_instance:Ljava/lang/Object;

.field public final m_method:Ljava/lang/Object;

.field public final m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/Class;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_instance:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_arguments:[Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_method:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_callType:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_instance:Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_arguments:[Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_method:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_callType:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_method:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_instance:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_arguments:[Ljava/lang/Object;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/trace/ExtensionEvent;->m_callType:I

    return-void
.end method
