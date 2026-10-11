.class public Lcom/sun/org/apache/xpath/internal/SourceTree;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public m_root:I

.field public m_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/xpath/internal/SourceTree;->m_root:I

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/SourceTree;->m_url:Ljava/lang/String;

    return-void
.end method
