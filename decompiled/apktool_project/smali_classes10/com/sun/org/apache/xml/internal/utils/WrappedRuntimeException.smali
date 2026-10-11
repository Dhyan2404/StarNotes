.class public Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x6317d91de98a8119L


# instance fields
.field private m_exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->m_exception:Ljava/lang/Exception;

    return-object p0
.end method
