.class public final Lorg/apache/logging/log4j/util/StringBuilders;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;IC)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "toAppendTo",
            "lastPos",
            "c"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 p1, v0, -0x1

    const/16 p2, 0x5c

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    return p1
.end method

.method public static appendDqValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "value"
        }
    .end annotation

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "sb",
            "key",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/util/Map$Entry;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sb",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/logging/log4j/util/StringBuilders;->appendKeyDqValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static appendSpecificTypes(Ljava/lang/StringBuilder;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stringBuilder",
            "obj"
        }
    .end annotation

    if-eqz p1, :cond_b

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/logging/log4j/util/StringBuilderFormattable;

    invoke-interface {p1, p0}, Lorg/apache/logging/log4j/util/StringBuilderFormattable;->formatTo(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stringBuilder",
            "obj"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/util/StringBuilders;->appendSpecificTypes(Ljava/lang/StringBuilder;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static equals(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "left",
            "leftOffset",
            "leftLength",
            "right",
            "rightOffset",
            "rightLength"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p2, p5, :cond_2

    move p2, v0

    :goto_0
    if-ge p2, p5, :cond_1

    add-int v1, p2, p1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v2, p2, p4

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "left",
            "leftOffset",
            "leftLength",
            "right",
            "rightOffset",
            "rightLength"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p2, p5, :cond_2

    move p2, v0

    :goto_0
    if-ge p2, p5, :cond_1

    add-int v1, p2, p1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    add-int v2, p2, p4

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static escapeJson(Ljava/lang/StringBuilder;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "start"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x22

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0x5c

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    if-eq v1, v5, :cond_0

    packed-switch v1, :pswitch_data_0

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_0
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-le v0, p1, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    if-eq v1, v5, :cond_4

    packed-switch v1, :pswitch_data_1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v0, -0x1

    and-int/lit8 v7, v1, 0xf

    invoke-static {v7}, Lorg/apache/logging/log4j/util/Chars;->getUpperCaseHex(I)C

    move-result v7

    invoke-virtual {p0, v0, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v6, -0x1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Chars;->getUpperCaseHex(I)C

    move-result v1

    invoke-virtual {p0, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    const/16 v6, 0x30

    invoke-virtual {p0, v0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    const/16 v6, 0x75

    invoke-virtual {p0, v0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x6e

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->a(Ljava/lang/StringBuilder;IC)I

    move-result v0

    goto :goto_3

    :pswitch_2
    const/16 v1, 0x74

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->a(Ljava/lang/StringBuilder;IC)I

    move-result v0

    goto :goto_3

    :pswitch_3
    const/16 v1, 0x62

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->a(Ljava/lang/StringBuilder;IC)I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->a(Ljava/lang/StringBuilder;IC)I

    move-result v0

    goto :goto_3

    :cond_5
    const/16 v1, 0x72

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->a(Ljava/lang/StringBuilder;IC)I

    move-result v0

    goto :goto_3

    :cond_6
    const/16 v1, 0x66

    invoke-static {p0, v0, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->a(Ljava/lang/StringBuilder;IC)I

    move-result v0

    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static escapeXml(Ljava/lang/StringBuilder;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "toAppendTo",
            "start"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x27

    const/16 v3, 0x3e

    const/16 v4, 0x3c

    const/16 v5, 0x22

    const/16 v6, 0x26

    if-ge p1, v1, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v6, :cond_0

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x5

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-le v0, p1, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v7, 0x6f

    const/16 v8, 0x74

    const/16 v9, 0x3b

    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_7

    if-eq v1, v3, :cond_6

    const/16 v8, 0x61

    const/16 v10, 0x70

    if-eq v1, v6, :cond_5

    if-eq v1, v2, :cond_4

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v0, v7

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    const/16 v9, 0x73

    invoke-virtual {p0, v1, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    const/16 v7, 0x6d

    invoke-virtual {p0, v0, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v0, v1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    const/16 v7, 0x67

    invoke-virtual {p0, v0, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    const/16 v7, 0x6c

    invoke-virtual {p0, v0, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    const/16 v7, 0x75

    invoke-virtual {p0, v1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v0, -0x1

    const/16 v7, 0x71

    invoke-virtual {p0, v0, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public static trimToMaxSize(Ljava/lang/StringBuilder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stringBuilder",
            "maxSize"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->trimToSize()V

    :cond_0
    return-void
.end method
