.class public Lnet/sf/saxon/functions/DeepEqual;
.super Lnet/sf/saxon/functions/CollatingFunctionFixed;
.source "SourceFile"


# static fields
.field public static final COMPARE_ANNOTATIONS:I = 0x40

.field public static final COMPARE_ID_FLAGS:I = 0x200

.field public static final COMPARE_STRING_VALUES:I = 0x20

.field public static final EXCLUDE_VARIETY:I = 0x400

.field public static final EXCLUDE_WHITESPACE_TEXT_NODES:I = 0x10

.field public static final INCLUDE_COMMENTS:I = 0x4

.field public static final INCLUDE_NAMESPACES:I = 0x1

.field public static final INCLUDE_PREFIXES:I = 0x2

.field public static final INCLUDE_PROCESSING_INSTRUCTIONS:I = 0x8

.field public static final JOIN_ADJACENT_TEXT_NODES:I = 0x100

.field public static final WARNING_IF_FALSE:I = 0x80

.field public static final synthetic k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;-><init>()V

    return-void
.end method

.method public static b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 4

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_1

    new-instance p2, Lnet/sf/saxon/trans/XmlProcessingIncident;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deep-equal() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_1
    return-void
.end method

.method public static c(Lnet/sf/saxon/om/NodeInfo;I)Z
    .locals 5

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    and-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v4, 0x7

    if-ne v0, v4, :cond_3

    and-int/lit8 p0, p1, 0x8

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    return v2
.end method

.method public static d(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    move v3, v2

    :goto_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    new-instance p0, Lnet/sf/saxon/tree/util/Orphan;

    invoke-direct {p0, v5}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_1
    instance-of v7, v4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    new-instance v3, Lnet/sf/saxon/tree/util/Orphan;

    invoke-direct {v3, v5}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v3, v6}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->clear()V

    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static deepEqual(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    and-int/lit16 v1, p4, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/functions/DeepEqual;->d(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p1}, Lnet/sf/saxon/functions/DeepEqual;->d(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_0
    move v1, v2

    move v4, v1

    :cond_1
    :goto_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v5

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    move-object p0, v3

    move v2, v7

    goto/16 :goto_7

    :cond_2
    add-int/2addr v1, v7

    add-int/2addr v4, v7

    if-eqz v5, :cond_e

    if-nez v6, :cond_3

    goto/16 :goto_5

    :cond_3
    instance-of v7, v5, Lnet/sf/saxon/om/Function;
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, " differ"

    if-nez v7, :cond_b

    :try_start_1
    instance-of v7, v6, Lnet/sf/saxon/om/Function;

    if-eqz v7, :cond_4

    goto/16 :goto_3

    :cond_4
    instance-of v7, v5, Lnet/sf/saxon/value/ObjectValue;

    if-nez v7, :cond_a

    instance-of v7, v6, Lnet/sf/saxon/value/ObjectValue;

    if-eqz v7, :cond_5

    goto/16 :goto_2

    :cond_5
    instance-of v7, v5, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v7, :cond_7

    instance-of v7, v6, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v7, :cond_6

    check-cast v5, Lnet/sf/saxon/om/NodeInfo;

    check-cast v6, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v5, v6, p2, p3, p4}, Lnet/sf/saxon/functions/DeepEqual;->deepEquals(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "nodes at position "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "comparing a node to an atomic value at position "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7

    :cond_7
    instance-of v7, v6, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v7, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "comparing an atomic value to a node at position "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7

    :cond_8
    check-cast v5, Lnet/sf/saxon/value/AtomicValue;

    check-cast v6, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v5}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-interface {p2, v5, v6}, Lnet/sf/saxon/expr/sort/AtomicComparer;->comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "atomic values at position "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_7

    :cond_a
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_b
    :goto_3
    instance-of v7, v5, Lnet/sf/saxon/om/Function;

    if-eqz v7, :cond_d

    instance-of v7, v6, Lnet/sf/saxon/om/Function;

    if-nez v7, :cond_c

    goto :goto_4

    :cond_c
    check-cast v5, Lnet/sf/saxon/om/Function;

    check-cast v6, Lnet/sf/saxon/om/Function;

    invoke-interface {v5, v6, p3, p2, p4}, Lnet/sf/saxon/om/Function;->deepEquals(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/AtomicComparer;I)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "functions at position "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :cond_d
    :goto_4
    return v2

    :cond_e
    :goto_5
    const-string p0, ")"

    if-nez v5, :cond_f

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Second sequence is longer (first sequence length = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "First sequence is longer (second sequence length = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    instance-of p1, v5, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;

    if-nez p1, :cond_10

    instance-of p1, v6, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;

    if-eqz p1, :cond_11

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (the first extra node is whitespace text)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    const-string p0, "sequences contain non-comparable values"

    :cond_11
    :goto_7
    if-nez v2, :cond_12

    invoke-static {v0, p0, p4, v3, v3}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    :cond_12
    return v2

    :goto_8
    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public static deepEquals(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface/range {p0 .. p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    return v6

    :cond_0
    invoke-interface/range {p3 .. p3}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v8

    const/4 v9, 0x0

    if-eq v7, v8, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "node kinds differ: comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/functions/DeepEqual;->e(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lnet/sf/saxon/functions/DeepEqual;->e(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    return v9

    :cond_1
    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v7

    const/4 v8, 0x3

    const-string v10, " != "

    const/4 v11, 0x2

    if-eq v7, v6, :cond_16

    if-eq v7, v11, :cond_e

    if-eq v7, v8, :cond_5

    const/4 v10, 0x7

    if-eq v7, v10, :cond_3

    const/16 v10, 0x8

    if-eq v7, v10, :cond_5

    const/16 v10, 0x9

    if-eq v7, v10, :cond_29

    const/16 v3, 0xd

    if-ne v7, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown node type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " names differ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    return v9

    :cond_4
    const-string v3, "goto case Saxon.Hej.type.Type.TEXT;"

    invoke-static {v3}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :cond_5
    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v2, v3, v7}, Lnet/sf/saxon/expr/sort/AtomicComparer;->comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v2

    if-nez v2, :cond_d

    and-int/lit16 v3, v4, 0x80

    if-eqz v3, :cond_d

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v8, v10, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lengths ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_6
    const-string v8, ""

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "\")"

    const/16 v12, 0xa

    if-ge v10, v12, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v12, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " (\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" vs \""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "(\""

    const-string v15, " different at char "

    if-eqz v13, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v7

    :goto_2
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/str/StringTool;->diagnosticDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const-string v9, "\", \""

    if-eq v13, v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " different at start (\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v7, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    const/4 v6, 0x1

    :goto_3
    if-ge v6, v10, :cond_c

    invoke-virtual {v3, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move/from16 p3, v10

    invoke-virtual {v7, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xa

    add-int/2addr v6, v13

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v3, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_b
    const/16 v13, 0xa

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, p3

    move v12, v13

    const/4 v13, 0x0

    goto :goto_3

    :cond_c
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " values differ ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    :cond_d
    return v2

    :cond_e
    invoke-static/range {p0 .. p1}, Lnet/sf/saxon/tree/util/Navigator;->haveSameName(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v6

    if-nez v6, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute names differ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_f
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_10

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute prefixes differ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_10
    and-int/lit8 v6, v4, 0x40

    if-eqz v6, :cond_11

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v2, "attributes have different type annotations"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v6, 0x0

    return v6

    :cond_11
    const/4 v6, 0x0

    and-int/lit8 v7, v4, 0x20

    if-nez v7, :cond_12

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v8

    invoke-interface {v8}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v8

    invoke-static {v7, v8, v2, v3, v6}, Lnet/sf/saxon/functions/DeepEqual;->deepEqual(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z

    move-result v2

    goto :goto_5

    :cond_12
    new-instance v3, Lnet/sf/saxon/value/StringValue;

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-direct {v3, v6}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    new-instance v6, Lnet/sf/saxon/value/StringValue;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-interface {v2, v3, v6}, Lnet/sf/saxon/expr/sort/AtomicComparer;->comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v2

    :goto_5
    if-nez v2, :cond_13

    const-string v2, "attribute values differ"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v2, 0x0

    return v2

    :cond_13
    const/4 v2, 0x0

    and-int/lit16 v3, v4, 0x200

    if-eqz v3, :cond_15

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result v3

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result v6

    if-eq v3, v6, :cond_14

    const-string v3, "one attribute is an ID, the other is not"

    invoke-static {v5, v3, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    return v2

    :cond_14
    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->isIdref()Z

    move-result v3

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->isIdref()Z

    move-result v6

    if-eq v3, v6, :cond_15

    const-string v3, "one attribute is an IDREF, the other is not"

    invoke-static {v5, v3, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    return v2

    :cond_15
    const/4 v6, 0x1

    return v6

    :cond_16
    invoke-static/range {p0 .. p1}, Lnet/sf/saxon/tree/util/Navigator;->haveSameName(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v7

    if-nez v7, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "element names differ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_17
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_18

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "element prefixes differ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v7, 0x0

    return v7

    :cond_18
    const/4 v7, 0x0

    invoke-interface {v0, v11}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v9

    invoke-interface {v1, v11}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/sf/saxon/om/SequenceTool;->sameLength(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v2, "elements have different number of attributes"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    return v7

    :cond_19
    invoke-interface {v0, v11}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v7

    :cond_1a
    invoke-interface {v7}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v10, Lnet/sf/saxon/pattern/SameNameTest;

    invoke-direct {v10, v9}, Lnet/sf/saxon/pattern/SameNameTest;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-interface {v1, v11, v10}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v10

    invoke-interface {v10}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v10

    if-nez v10, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "one element has an attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", the other does not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_1b
    invoke-static {v9, v10, v2, v3, v4}, Lnet/sf/saxon/functions/DeepEqual;->deepEquals(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z

    move-result v12

    if-nez v12, :cond_1a

    invoke-static {v9, v10, v2, v3, v4}, Lnet/sf/saxon/functions/DeepEqual;->deepEquals(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "elements have different values for the attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_1c
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_1d

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v9

    invoke-virtual {v7, v9}, Lnet/sf/saxon/om/NamespaceMap;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "elements have different in-scope namespaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " versus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_1d
    and-int/lit8 v7, v4, 0x40

    if-eqz v7, :cond_1e

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    const-string v2, "elements have different type annotation"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_1e
    and-int/lit16 v7, v4, 0x400

    if-nez v7, :cond_20

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v9

    invoke-interface {v9}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v9

    if-eq v7, v9, :cond_1f

    const-string v2, "one element has complex type, the other simple"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_1f
    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    invoke-interface {v7}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v7}, Lnet/sf/saxon/type/ComplexType;->getVariety()Lnet/sf/saxon/type/ComplexVariety;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v9}, Lnet/sf/saxon/type/ComplexType;->getVariety()Lnet/sf/saxon/type/ComplexVariety;

    move-result-object v9

    if-eq v7, v9, :cond_20

    const-string v2, "both elements have complex type, but a different variety"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_20
    and-int/lit8 v7, v4, 0x20

    if-nez v7, :cond_26

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v9

    invoke-interface {v7}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result v10

    if-nez v10, :cond_22

    check-cast v7, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v7}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_6

    :cond_21
    const/4 v7, 0x0

    goto :goto_7

    :cond_22
    :goto_6
    move v7, v6

    :goto_7
    invoke-interface {v9}, Lnet/sf/saxon/type/SchemaType;->isSimpleType()Z

    move-result v10

    if-nez v10, :cond_24

    check-cast v9, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v9}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result v9

    if-eqz v9, :cond_23

    goto :goto_8

    :cond_23
    const/4 v9, 0x0

    goto :goto_9

    :cond_24
    :goto_8
    move v9, v6

    :goto_9
    if-eq v7, v9, :cond_25

    const-string v2, "one element has a simple type, the other does not"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v0, 0x0

    return v0

    :cond_25
    if-eqz v7, :cond_26

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/AtomicSequence;->iterate()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v4}, Lnet/sf/saxon/functions/DeepEqual;->deepEqual(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z

    move-result v0

    return v0

    :cond_26
    and-int/lit16 v7, v4, 0x200

    if-eqz v7, :cond_28

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->isId()Z

    move-result v9

    if-eq v7, v9, :cond_27

    const-string v2, "one element is an ID, the other is not"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v7, 0x0

    return v7

    :cond_27
    const/4 v7, 0x0

    invoke-interface/range {p0 .. p0}, Lnet/sf/saxon/om/NodeInfo;->isIdref()Z

    move-result v9

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeInfo;->isIdref()Z

    move-result v10

    if-eq v9, v10, :cond_28

    const-string v2, "one element is an IDREF, the other is not"

    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    return v7

    :cond_28
    const-string v7, "goto case Saxon.Hej.type.Type.DOCUMENT;"

    invoke-static {v7}, Lnet/sf/saxon/transpile/CSharp;->emitCode(Ljava/lang/String;)V

    :cond_29
    invoke-interface {v0, v8}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v7

    invoke-interface {v1, v8}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v8

    :cond_2a
    invoke-interface {v7}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v9

    :goto_a
    if-eqz v9, :cond_2b

    invoke-static {v9, v4}, Lnet/sf/saxon/functions/DeepEqual;->c(Lnet/sf/saxon/om/NodeInfo;I)Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-interface {v7}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v9

    goto :goto_a

    :cond_2b
    invoke-interface {v8}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v10

    :goto_b
    if-eqz v10, :cond_2c

    invoke-static {v10, v4}, Lnet/sf/saxon/functions/DeepEqual;->c(Lnet/sf/saxon/om/NodeInfo;I)Z

    move-result v11

    if-eqz v11, :cond_2c

    invoke-interface {v8}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v10

    goto :goto_b

    :cond_2c
    if-eqz v9, :cond_2e

    if-nez v10, :cond_2d

    goto :goto_c

    :cond_2d
    invoke-static {v9, v10, v2, v3, v4}, Lnet/sf/saxon/functions/DeepEqual;->deepEquals(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z

    move-result v9

    if-nez v9, :cond_2a

    const/4 v11, 0x0

    return v11

    :cond_2e
    :goto_c
    const/4 v11, 0x0

    if-ne v9, v10, :cond_2f

    goto :goto_d

    :cond_2f
    move v6, v11

    :goto_d
    if-nez v6, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the first operand contains a node with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_30

    const-string v3, "fewer"

    goto :goto_e

    :cond_30
    const-string v3, "more"

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " children than the second"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v9, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;

    if-nez v3, :cond_31

    instance-of v3, v10, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;

    if-eqz v3, :cond_32

    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (the first extra child is whitespace text)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_32
    invoke-static {v5, v2, v4, v0, v1}, Lnet/sf/saxon/functions/DeepEqual;->b(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;ILnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)V

    :cond_33
    return v6
.end method

.method public static e(Lnet/sf/saxon/om/Item;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "whitespace text() node"

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/type/Type;->displayTypeName(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lnet/sf/saxon/om/NamespaceBinding;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/DeepEqual;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/CollatingFunctionFixed;->getStringCollator()Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x0

    .line 3
    aget-object v1, p2, p0

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    const/4 v2, 0x1

    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-static {v1, p2, v0, p1, p0}, Lnet/sf/saxon/functions/DeepEqual;->deepEqual(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/AtomicComparer;Lnet/sf/saxon/expr/XPathContext;I)Z

    move-result p0

    .line 4
    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "DeepEqual"

    return-object p0
.end method
