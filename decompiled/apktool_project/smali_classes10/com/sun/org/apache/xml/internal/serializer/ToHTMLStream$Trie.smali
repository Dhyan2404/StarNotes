.class Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trie"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;
    }
.end annotation


# static fields
.field public static final ALPHA_SIZE:I = 0x80


# instance fields
.field final m_Root:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

.field private m_charBuffer:[C

.field private final m_lowerCaseOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 2
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 3
    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;-><init>(Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_Root:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 10
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 11
    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_Root:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_Root:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    .line 12
    iget-boolean v0, p1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    .line 13
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->getLongestKeyLength()I

    move-result p1

    .line 14
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 7
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;-><init>(Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_Root:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    .line 8
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return-object v2

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_Root:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    if-eqz v0, :cond_5

    const/16 v1, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v1, v4, :cond_1

    return-object v2

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    aget-object p0, p0, v4

    if-nez p0, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ge p1, v1, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    aget-object p0, p0, p1

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0

    :cond_5
    return-object v2
.end method

.method public get2(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_Root:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    if-eqz v0, :cond_5

    const/16 v4, 0x80

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_4

    invoke-virtual {p1, v6, v0, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    :goto_0
    if-ge v6, v0, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    aget-char p1, p1, v6

    if-gt v4, p1, :cond_1

    return-object v3

    :cond_1
    iget-object v1, v2, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    aget-object v2, v1, p1

    if-nez v2, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, v2, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0

    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ge p0, v4, :cond_5

    iget-object p1, v2, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    aget-object p0, p1, p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0

    :cond_5
    return-object v3
.end method

.method public getLongestKeyLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length p0, p0

    return p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_Root:Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_3

    new-instance v3, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;-><init>(Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;)V

    iget-boolean v4, p0, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    if-eqz v4, :cond_2

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-object v3, v1, v4

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aput-object v3, v4, v5

    iget-object v1, v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-object v3, v1, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_1

    :cond_3
    iget-object p0, v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    iput-object p2, v1, Lcom/sun/org/apache/xml/internal/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0
.end method
