.class public abstract Lnet/sf/saxon/java/JavaCollationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p0, v2

    :goto_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static makeCollation(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/util/Properties;)Lnet/sf/saxon/lib/StringCollator;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "class"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Ljava/text/Collator;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/text/Collator;

    move-object v10, v1

    move-object v1, p0

    move-object p0, v10

    goto :goto_0

    :cond_0
    instance-of v2, p0, Lnet/sf/saxon/lib/StringCollator;

    if-eqz v2, :cond_1

    check-cast p0, Lnet/sf/saxon/lib/StringCollator;

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/util/Comparator;

    if-eqz v2, :cond_2

    new-instance v0, Lnet/sf/saxon/expr/sort/SimpleCollation;

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/expr/sort/SimpleCollation;-><init>(Ljava/lang/String;Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Requested collation class "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a Comparator"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move-object p0, v1

    :goto_0
    if-nez v1, :cond_6

    if-nez p0, :cond_6

    const-string v0, "rules"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v1, Ljava/text/RuleBasedCollator;

    invoke-direct {v1, v0}, Ljava/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid collation rules: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-nez v1, :cond_6

    const-string v0, "lang"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lnet/sf/saxon/java/JavaCollationFactory;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    :cond_6
    :goto_2
    const-string v0, "no"

    const-string v2, "yes"

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    const-string v4, "strength"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x3

    sparse-switch v8, :sswitch_data_0

    :goto_3
    move v8, v5

    goto :goto_4

    :sswitch_0
    const-string v8, "identical"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    move v8, v9

    goto :goto_4

    :sswitch_1
    const-string v8, "primary"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    move v8, v6

    goto :goto_4

    :sswitch_2
    const-string v8, "secondary"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_3

    :cond_9
    move v8, v3

    goto :goto_4

    :sswitch_3
    const-string v8, "tertiary"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_3

    :cond_a
    move v8, v7

    :goto_4
    packed-switch v8, :pswitch_data_0

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "strength must be primary, secondary, tertiary, or identical"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v1, v9}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {v1, v7}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {v1, v3}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {v1, v6}, Ljava/text/Collator;->setStrength(I)V

    :cond_b
    :goto_5
    const-string v8, "ignore-width"

    invoke-virtual {p2, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-nez v4, :cond_c

    invoke-virtual {v1, v6}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "ignore-width must be yes or no"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    const-string v8, "ignore-case"

    invoke-virtual {p2, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    if-nez v4, :cond_10

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v1, v3}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_7

    :cond_f
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "ignore-case must be yes or no"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    const-string v8, "ignore-modifiers"

    invoke-virtual {p2, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-nez v4, :cond_11

    invoke-virtual {v1, v7}, Ljava/text/Collator;->setStrength(I)V

    goto :goto_8

    :cond_11
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_8

    :cond_12
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "ignore-modifiers must be yes or no"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_8
    const-string v4, "decomposition"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_9

    :sswitch_4
    const-string v8, "standard"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_9

    :cond_14
    move v5, v6

    goto :goto_9

    :sswitch_5
    const-string v8, "none"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_9

    :cond_15
    move v5, v3

    goto :goto_9

    :sswitch_6
    const-string v8, "full"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_9

    :cond_16
    move v5, v7

    :goto_9
    packed-switch v5, :pswitch_data_1

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "decomposition must be none, standard, or full"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    invoke-virtual {v1, v3}, Ljava/text/Collator;->setDecomposition(I)V

    goto :goto_a

    :pswitch_5
    invoke-virtual {v1, v7}, Ljava/text/Collator;->setDecomposition(I)V

    goto :goto_a

    :pswitch_6
    invoke-virtual {v1, v6}, Ljava/text/Collator;->setDecomposition(I)V

    :cond_17
    :goto_a
    if-nez p0, :cond_18

    new-instance p0, Lnet/sf/saxon/expr/sort/SimpleCollation;

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/expr/sort/SimpleCollation;-><init>(Ljava/lang/String;Ljava/util/Comparator;)V

    :cond_18
    const-string v4, "case-order"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    const-string v5, "#default"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    if-eqz v1, :cond_19

    invoke-virtual {v1, v3}, Ljava/text/Collator;->setStrength(I)V

    :cond_19
    invoke-static {p1, p0, v4}, Lnet/sf/saxon/expr/sort/CaseFirstCollator;->makeCaseOrderedCollator(Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    :cond_1a
    const-string p1, "alphanumeric"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    const-string p2, "codepoint"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    new-instance p1, Lnet/sf/saxon/expr/sort/AlphanumericCollator;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/AlphanumericCollator;-><init>(Lnet/sf/saxon/lib/StringCollator;)V

    move-object p0, p1

    goto :goto_b

    :cond_1b
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "alphanumeric must be yes, no, or codepoint"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance p0, Lnet/sf/saxon/expr/sort/AlphanumericCollator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollator;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollator;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/AlphanumericCollator;-><init>(Lnet/sf/saxon/lib/StringCollator;)V

    :cond_1d
    :goto_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4605f7ae -> :sswitch_3
        -0x30bb8e8c -> :sswitch_2
        -0x12c2f1fe -> :sswitch_1
        0x52564b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x30228f -> :sswitch_6
        0x33af38 -> :sswitch_5
        0x4e3d1ebd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
