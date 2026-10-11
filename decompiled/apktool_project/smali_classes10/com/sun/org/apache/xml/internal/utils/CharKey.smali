.class public Lcom/sun/org/apache/xml/internal/utils/CharKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_char:C


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-char p1, p0, Lcom/sun/org/apache/xml/internal/utils/CharKey;->m_char:C

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/CharKey;

    iget-char p1, p1, Lcom/sun/org/apache/xml/internal/utils/CharKey;->m_char:C

    iget-char p0, p0, Lcom/sun/org/apache/xml/internal/utils/CharKey;->m_char:C

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-char p0, p0, Lcom/sun/org/apache/xml/internal/utils/CharKey;->m_char:C

    return p0
.end method

.method public final setChar(C)V
    .locals 0

    iput-char p1, p0, Lcom/sun/org/apache/xml/internal/utils/CharKey;->m_char:C

    return-void
.end method
