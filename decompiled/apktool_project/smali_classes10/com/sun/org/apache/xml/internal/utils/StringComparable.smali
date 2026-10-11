.class public Lcom/sun/org/apache/xml/internal/utils/StringComparable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final LOWER_CASE:I = 0x2

.field public static final UNKNOWN_CASE:I = -0x1

.field public static final UPPER_CASE:I = 0x1


# instance fields
.field private m_caseOrder:Ljava/lang/String;

.field private m_collator:Ljava/text/RuleBasedCollator;

.field private m_locale:Ljava/util/Locale;

.field private m_mask:I

.field private m_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/text/Collator;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_mask:I

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_text:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_locale:Ljava/util/Locale;

    check-cast p3, Ljava/text/RuleBasedCollator;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_caseOrder:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/text/Collator;->getStrength()I

    move-result p1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->getMask(I)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_mask:I

    return-void
.end method

.method private final getCaseDiff(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0}, Ljava/text/Collator;->getStrength()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v1}, Ljava/text/Collator;->getDecomposition()I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/text/Collator;->setStrength(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/text/Collator;->setDecomposition(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_locale:Ljava/util/Locale;

    invoke-direct {p0, p1, p2, v2}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->getFirstCaseDiff(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)[I

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {p2, v0}, Ljava/text/Collator;->setStrength(I)V

    iget-object p2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {p2, v1}, Ljava/text/Collator;->setDecomposition(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_caseOrder:Ljava/lang/String;

    const-string v0, "upper-first"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    aget p0, p1, p2

    if-ne p0, v4, :cond_0

    return v0

    :cond_0
    return v4

    :cond_1
    aget p0, p1, p2

    if-ne p0, v3, :cond_2

    return v0

    :cond_2
    return v4

    :cond_3
    return p2
.end method

.method public static final getComparator(Ljava/lang/String;Ljava/util/Locale;Ljava/text/Collator;Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/text/Collator;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    check-cast p2, Ljava/text/RuleBasedCollator;

    invoke-virtual {p2, p0}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p0

    return-object p0
.end method

.method private final getElement(I)I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_mask:I

    and-int/2addr p0, p1

    return p0
.end method

.method private final getFirstCaseDiff(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)[I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v4, v1}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v5, v2}, Ljava/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;

    move-result-object v5

    const/4 v6, -0x1

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->getElement(I)I

    move-result v7

    move v14, v6

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-eqz v10, :cond_0

    invoke-virtual {v5}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result v14

    invoke-virtual {v5}, Ljava/text/CollationElementIterator;->next()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->getElement(I)I

    move-result v12

    invoke-virtual {v5}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result v15

    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v4}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result v16

    invoke-virtual {v4}, Ljava/text/CollationElementIterator;->next()I

    move-result v10

    invoke-direct {v0, v10}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->getElement(I)I

    move-result v13

    invoke-virtual {v4}, Ljava/text/CollationElementIterator;->getOffset()I

    move-result v17

    :cond_1
    move/from16 v10, v16

    move/from16 v11, v17

    if-eq v12, v7, :cond_e

    if-ne v13, v7, :cond_2

    goto/16 :goto_5

    :cond_2
    if-nez v13, :cond_3

    move/from16 v16, v10

    move/from16 v17, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    if-nez v12, :cond_4

    move/from16 v16, v10

    move/from16 v17, v11

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_4
    if-eq v13, v12, :cond_c

    if-ge v14, v15, :cond_c

    if-ge v10, v11, :cond_c

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v2, v6, v1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, -0x1

    filled-new-array {v2, v2}, [I

    move-result-object v18

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v2, v8, v6}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    const/16 v16, 0x1

    aput v16, v18, v2

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v8, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x2

    const/4 v6, 0x0

    aput v2, v18, v6

    :cond_7
    :goto_1
    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v2, v9, v1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    aput v1, v18, v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v9, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x2

    aput v2, v18, v1

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v2, 0x2

    :goto_3
    const/4 v6, 0x0

    aget v8, v18, v6

    if-ne v8, v1, :cond_a

    aget v9, v18, v1

    if-eq v9, v2, :cond_b

    :cond_a
    if-ne v8, v2, :cond_d

    aget v2, v18, v1

    if-ne v2, v1, :cond_d

    :cond_b
    return-object v18

    :cond_c
    :goto_4
    const/4 v1, 0x1

    const/4 v6, 0x0

    :cond_d
    move-object/from16 v2, p2

    move/from16 v16, v10

    move/from16 v17, v11

    const/4 v6, -0x1

    move v10, v1

    move v11, v10

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_e
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getMask(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, -0x100

    return p0

    :cond_1
    const/high16 p0, -0x10000

    return p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/StringComparable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0}, Ljava/text/Collator;->getStrength()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v2, v1}, Ljava/text/Collator;->setStrength(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_text:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v2, v0}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_text:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_text:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->getCaseDiff(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_collator:Ljava/text/RuleBasedCollator;

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_text:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->m_text:Ljava/lang/String;

    return-object p0
.end method
