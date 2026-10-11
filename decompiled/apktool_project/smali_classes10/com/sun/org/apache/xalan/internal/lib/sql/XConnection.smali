.class public Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private m_Connection:Ljava/sql/Connection;

.field private m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

.field private m_DefaultPoolingEnabled:Z

.field private m_Error:Ljava/lang/Exception;

.field private m_FullErrors:Z

.field private m_InlineVariables:Z

.field private m_IsDefaultPool:Z

.field private m_IsMultipleResultsEnabled:Z

.field private m_IsStatementCachingEnabled:Z

.field private m_IsStreamingEnabled:Z

.field private m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

.field private m_OpenSQLDocuments:Ljava/util/Vector;

.field private m_ParameterList:Ljava/util/Vector;

.field private m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

.field private m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Connection:Ljava/sql/Connection;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    .line 5
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    .line 6
    new-instance v2, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    .line 7
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    .line 10
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    .line 11
    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    .line 12
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    .line 14
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    .line 15
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsMultipleResultsEnabled:Z

    .line 16
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStatementCachingEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    .line 19
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Connection:Ljava/sql/Connection;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    .line 21
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    .line 22
    new-instance v2, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    .line 23
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    .line 24
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    .line 25
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    .line 26
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    .line 27
    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    .line 28
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    .line 30
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    .line 31
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsMultipleResultsEnabled:Z

    .line 32
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStatementCachingEnabled:Z

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    .line 36
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Connection:Ljava/sql/Connection;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    .line 38
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    .line 39
    new-instance v2, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    .line 40
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    .line 41
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    .line 42
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    .line 43
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    .line 44
    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    .line 45
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    .line 48
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsMultipleResultsEnabled:Z

    .line 49
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStatementCachingEnabled:Z

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    .line 70
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Connection:Ljava/sql/Connection;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    .line 72
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    .line 73
    new-instance v2, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    .line 74
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    .line 75
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    .line 76
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    .line 77
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    .line 78
    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    .line 79
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    .line 81
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    .line 82
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsMultipleResultsEnabled:Z

    .line 83
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStatementCachingEnabled:Z

    .line 84
    invoke-virtual/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    .line 87
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Connection:Ljava/sql/Connection;

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    .line 89
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    .line 90
    new-instance v2, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    .line 91
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    .line 92
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    .line 93
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    .line 94
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    .line 95
    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    .line 96
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    .line 98
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    .line 99
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsMultipleResultsEnabled:Z

    .line 100
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStatementCachingEnabled:Z

    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/NodeList;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    .line 53
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Connection:Ljava/sql/Connection;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    .line 55
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    .line 56
    new-instance v2, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-direct {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    .line 57
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    .line 58
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    .line 59
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    .line 60
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    .line 61
    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    .line 62
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    .line 64
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    .line 65
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsMultipleResultsEnabled:Z

    .line 66
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStatementCachingEnabled:Z

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/NodeList;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    return-void
.end method

.method private addParameters(Lorg/w3c/dom/Element;)V
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "string"

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;

    invoke-direct {v3, v1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_0

    return-void
.end method

.method private addTypeToData(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;->setTypeName(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildErrorDocument()Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;
    .locals 10

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->getExpressionContext()Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v7

    :try_start_0
    check-cast v0, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext$XPathExpressionContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v2

    new-instance v9, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;

    shl-int/lit8 v5, v2, 0x10

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    iget-boolean v8, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;ILjava/lang/Exception;Ljava/sql/SQLWarning;Z)V

    invoke-virtual {v0, v9, v2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMManagerDefault;->addDTM(Lcom/sun/org/apache/xml/internal/dtm/DTM;I)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v9

    :catch_0
    :cond_0
    return-object v1
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "password"

    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->getPool(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    new-instance v1, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;-><init>()V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->setDriver(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->setURL(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->setProtocol(Ljava/util/Properties;)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    if-eqz p1, :cond_2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/DefaultConnectionPool;->setPoolEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->registerPool(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    :goto_1
    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->getConnection()Ljava/sql/Connection;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->releaseConnection(Ljava/sql/Connection;)V

    :cond_4
    return-void
.end method

.method private initFromElement(Lorg/w3c/dom/Element;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    move-object v2, v1

    move-object v3, v2

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dbdriver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :cond_3
    :goto_0
    const-string v5, "dburl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v1

    :cond_5
    :goto_1
    const-string v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v1

    :goto_2
    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v1

    :goto_3
    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v5, "protocol"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_a
    move-object v5, v1

    :goto_4
    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0, v2, v3, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->init(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method private locateSQLDocument(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/Object;)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->getRoot()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeProxy;->getDTM()Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    :try_start_2
    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->getDTMIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->getContainedIter()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/axes/NodeSequence;->nextNode()I

    move-result p2

    invoke-interface {v1, p2}, Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;->getDTM(I)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/Exception;

    const-string v1, "SQL Extension:close - Can Not Identify SQLDocument"

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p2

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    return-object v0
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->addParameterWithType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addParameterFromElement(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "type"

    .line 2
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public addParameterFromElement(Lorg/w3c/dom/NodeList;)V
    .locals 3

    .line 6
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->addParameters(Lorg/w3c/dom/Element;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addParameterWithType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/QueryParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public clearParameters()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->close(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Connection:Ljava/sql/Connection;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->releaseConnection(Ljava/sql/Connection;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Connection:Ljava/sql/Connection;

    :cond_1
    return-void
.end method

.method public close(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->locateSQLDocument(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/Object;)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->close(Z)V

    .line 10
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-virtual {v1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->getPool(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;

    invoke-direct {v1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/JNDIConnectionPool;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->testConnection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_PoolMgr:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;

    invoke-virtual {v3, p2, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPoolManager;->registerPool(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;)V

    .line 5
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    .line 6
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    .line 7
    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p2, v2}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p2

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ConnectionPool name or JNDI Datasource path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    .line 10
    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p2, v2}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 12
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0
.end method

.method public connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;
    .locals 2

    const/4 v0, 0x0

    .line 13
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, p2, p3, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->init(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 14
    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 16
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0

    :catch_1
    move-exception p2

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 18
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0
.end method

.method public connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;
    .locals 3

    const/4 v0, 0x0

    .line 31
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v2, "user"

    .line 32
    invoke-virtual {v1, v2, p4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "password"

    .line 33
    invoke-virtual {v1, p4, p5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-direct {p0, p2, p3, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->init(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 35
    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 36
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 37
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0

    :catch_1
    move-exception p2

    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 39
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0
.end method

.method public connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;
    .locals 5

    const/4 v0, 0x0

    .line 40
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 41
    invoke-interface {p4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p4

    move v2, v0

    .line 42
    :goto_0
    invoke-interface {p4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 43
    invoke-interface {p4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, p2, p3, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->init(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 45
    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 46
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 47
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0

    :catch_1
    move-exception p2

    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 49
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0
.end method

.method public connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;
    .locals 2

    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->initFromElement(Lorg/w3c/dom/Element;)V

    .line 20
    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 22
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0

    :catch_1
    move-exception p2

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 24
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0
.end method

.method public connect(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Lorg/w3c/dom/NodeList;)Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;
    .locals 2

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->initFromElement(Lorg/w3c/dom/Element;)V

    .line 26
    new-instance p2, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 28
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0

    :catch_1
    move-exception p2

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V

    .line 30
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    return-object p0
.end method

.method public disableDefaultConnectionPool()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->setPoolEnabled(Z)V

    return-void
.end method

.method public disableStreamingMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    return-void
.end method

.method public enableDefaultConnectionPool()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->setPoolEnabled(Z)V

    return-void
.end method

.method public enableStreamingMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    return-void
.end method

.method public finalize()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getConnectionPool()Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    return-object p0
.end method

.method public getError()Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->buildErrorDocument()Lcom/sun/org/apache/xalan/internal/lib/sql/SQLErrorDocument;

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "streaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "true"

    const-string v2, "false"

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v0, "inline-variables"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_2
    const-string v0, "multiple-results"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsMultipleResultsEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_3
    const-string v0, "cache-statements"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStatementCachingEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_4
    const-string v0, "default-pool-enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_5
    const-string v0, "full-errors"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public pquery(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->pquery(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public pquery(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->parse(Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;Ljava/lang/String;I)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    move-result-object p2

    .line 4
    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->addTypeToData(Ljava/lang/String;)V

    .line 6
    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ParameterList:Ljava/util/Vector;

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->setParameters(Ljava/util/Vector;)V

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->getNewDocument(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->execute(Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;)V

    .line 9
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v3, p2

    move-object p2, p1

    move-object p1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 10
    throw p0

    :catch_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->hasErrors()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 12
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V

    .line 13
    :cond_2
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->close(Z)V

    goto :goto_1

    :cond_3
    move-object v0, p2

    :goto_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public query(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/dtm/DTM;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_QueryParser:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p2, v2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;->parse(Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;Ljava/lang/String;I)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;

    move-result-object p2

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->getNewDocument(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->execute(Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLQueryParser;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_OpenSQLDocuments:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->checkWarnings()Ljava/sql/SQLWarning;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v1}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V

    :cond_1
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->close(Z)V

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setError(Ljava/lang/Exception;Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;Ljava/sql/SQLWarning;)V
    .locals 4

    .line 3
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->getExpressionContext()Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;

    move-result-object v0

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_LastSQLDocumentWithError:Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 6
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 7
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v0

    invoke-direct {v1, v2, v0, p3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-interface {p2, v1}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_Error:Ljava/lang/Exception;

    :cond_2
    if-eqz p3, :cond_4

    .line 9
    new-instance p0, Ljava/sql/SQLWarning;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p3}, Ljava/sql/SQLWarning;->getNextWarning()Ljava/sql/SQLWarning;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 11
    new-instance p2, Ljava/sql/SQLWarning;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    invoke-direct {p2, v0, v1, v2}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    .line 12
    invoke-virtual {p1}, Ljava/sql/SQLWarning;->getNextWarning()Ljava/sql/SQLWarning;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_3
    new-instance p1, Ljava/sql/SQLWarning;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p3

    invoke-direct {p1, p2, v0, p3}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public setFeature(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "streaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStreamingEnabled:Z

    goto :goto_0

    :cond_0
    const-string v0, "inline-variables"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_InlineVariables:Z

    goto :goto_0

    :cond_1
    const-string v0, "multiple-results"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsMultipleResultsEnabled:Z

    goto :goto_0

    :cond_2
    const-string v0, "cache-statements"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsStatementCachingEnabled:Z

    goto :goto_0

    :cond_3
    const-string v0, "default-pool-enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_DefaultPoolingEnabled:Z

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_ConnectionPool:Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_IsDefaultPool:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/ConnectionPool;->setPoolEnabled(Z)V

    goto :goto_0

    :cond_6
    const-string v0, "full-errors"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->m_FullErrors:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public skipRec(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/sql/XConnection;->locateSQLDocument(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/Object;)Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xalan/internal/lib/sql/SQLDocument;->skip(I)V

    :cond_0
    return-void
.end method
