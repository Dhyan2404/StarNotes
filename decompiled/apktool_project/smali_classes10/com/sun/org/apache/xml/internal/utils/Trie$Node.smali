.class Lcom/sun/org/apache/xml/internal/utils/Trie$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/utils/Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field m_Value:Ljava/lang/Object;

.field m_nextChar:[Lcom/sun/org/apache/xml/internal/utils/Trie$Node;

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/utils/Trie;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/utils/Trie;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/Trie$Node;->this$0:Lcom/sun/org/apache/xml/internal/utils/Trie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [Lcom/sun/org/apache/xml/internal/utils/Trie$Node;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/utils/Trie$Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/Trie$Node;->m_Value:Ljava/lang/Object;

    return-void
.end method
