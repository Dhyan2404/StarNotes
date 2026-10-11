.class Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field m_Value:Ljava/lang/Object;

.field final m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->this$0:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-void
.end method
