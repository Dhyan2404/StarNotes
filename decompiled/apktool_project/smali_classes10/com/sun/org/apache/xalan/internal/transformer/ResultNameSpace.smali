.class public Lcom/sun/org/apache/xalan/internal/transformer/ResultNameSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public m_next:Lcom/sun/org/apache/xalan/internal/transformer/ResultNameSpace;

.field public m_prefix:Ljava/lang/String;

.field public m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/ResultNameSpace;->m_next:Lcom/sun/org/apache/xalan/internal/transformer/ResultNameSpace;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/ResultNameSpace;->m_prefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/ResultNameSpace;->m_uri:Ljava/lang/String;

    return-void
.end method
